; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.mtree = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__, i32, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_MTREE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.mtree*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %10 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %11 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.mtree*
  store %struct.mtree* %15, %struct.mtree** %6, align 8
  %16 = load %struct.mtree*, %struct.mtree** %6, align 8
  %17 = getelementptr inbounds %struct.mtree, %struct.mtree* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.mtree*, %struct.mtree** %6, align 8
  %22 = getelementptr inbounds %struct.mtree, %struct.mtree* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @close(i32 %23)
  %25 = load %struct.mtree*, %struct.mtree** %6, align 8
  %26 = getelementptr inbounds %struct.mtree, %struct.mtree* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.mtree*, %struct.mtree** %6, align 8
  %29 = getelementptr inbounds %struct.mtree, %struct.mtree* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = call i32* (...) @archive_entry_linkresolver_new()
  %34 = load %struct.mtree*, %struct.mtree** %6, align 8
  %35 = getelementptr inbounds %struct.mtree, %struct.mtree* %34, i32 0, i32 5
  store i32* %33, i32** %35, align 8
  %36 = load %struct.mtree*, %struct.mtree** %6, align 8
  %37 = getelementptr inbounds %struct.mtree, %struct.mtree* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %41, i32* %3, align 4
  br label %176

42:                                               ; preds = %32
  %43 = load %struct.mtree*, %struct.mtree** %6, align 8
  %44 = getelementptr inbounds %struct.mtree, %struct.mtree* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @ARCHIVE_FORMAT_MTREE, align 4
  %47 = call i32 @archive_entry_linkresolver_set_strategy(i32* %45, i32 %46)
  %48 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %49 = load %struct.mtree*, %struct.mtree** %6, align 8
  %50 = call i32 @read_mtree(%struct.archive_read* %48, %struct.mtree* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ARCHIVE_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %176

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %27
  %58 = load %struct.mtree*, %struct.mtree** %6, align 8
  %59 = getelementptr inbounds %struct.mtree, %struct.mtree* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %62 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.mtree*, %struct.mtree** %6, align 8
  %65 = getelementptr inbounds %struct.mtree, %struct.mtree* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %68 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %168, %57
  %71 = load %struct.mtree*, %struct.mtree** %6, align 8
  %72 = getelementptr inbounds %struct.mtree, %struct.mtree* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = icmp eq %struct.TYPE_7__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %76, i32* %3, align 4
  br label %176

77:                                               ; preds = %70
  %78 = load %struct.mtree*, %struct.mtree** %6, align 8
  %79 = getelementptr inbounds %struct.mtree, %struct.mtree* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @strcmp(i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %148

85:                                               ; preds = %77
  %86 = load %struct.mtree*, %struct.mtree** %6, align 8
  %87 = getelementptr inbounds %struct.mtree, %struct.mtree* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.mtree*, %struct.mtree** %6, align 8
  %91 = getelementptr inbounds %struct.mtree, %struct.mtree* %90, i32 0, i32 2
  %92 = call i64 @archive_strlen(%struct.TYPE_8__* %91)
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %147

94:                                               ; preds = %85
  %95 = load %struct.mtree*, %struct.mtree** %6, align 8
  %96 = getelementptr inbounds %struct.mtree, %struct.mtree* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.mtree*, %struct.mtree** %6, align 8
  %100 = getelementptr inbounds %struct.mtree, %struct.mtree* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  %105 = getelementptr inbounds i8, i8* %104, i64 -1
  store i8* %105, i8** %7, align 8
  br label %106

106:                                              ; preds = %120, %94
  %107 = load i8*, i8** %7, align 8
  %108 = load %struct.mtree*, %struct.mtree** %6, align 8
  %109 = getelementptr inbounds %struct.mtree, %struct.mtree* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = icmp uge i8* %107, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i8*, i8** %7, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 47
  br label %118

118:                                              ; preds = %113, %106
  %119 = phi i1 [ false, %106 ], [ %117, %113 ]
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 -1
  store i8* %122, i8** %7, align 8
  br label %106

123:                                              ; preds = %118
  %124 = load i8*, i8** %7, align 8
  %125 = load %struct.mtree*, %struct.mtree** %6, align 8
  %126 = getelementptr inbounds %struct.mtree, %struct.mtree* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = icmp uge i8* %124, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 -1
  store i8* %132, i8** %7, align 8
  br label %133

133:                                              ; preds = %130, %123
  %134 = load i8*, i8** %7, align 8
  %135 = load %struct.mtree*, %struct.mtree** %6, align 8
  %136 = getelementptr inbounds %struct.mtree, %struct.mtree* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = ptrtoint i8* %134 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = add nsw i64 %141, 1
  %143 = trunc i64 %142 to i32
  %144 = load %struct.mtree*, %struct.mtree** %6, align 8
  %145 = getelementptr inbounds %struct.mtree, %struct.mtree* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 8
  br label %147

147:                                              ; preds = %133, %85
  br label %148

148:                                              ; preds = %147, %77
  %149 = load %struct.mtree*, %struct.mtree** %6, align 8
  %150 = getelementptr inbounds %struct.mtree, %struct.mtree* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %148
  store i32 0, i32* %9, align 4
  %156 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %157 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %158 = load %struct.mtree*, %struct.mtree** %6, align 8
  %159 = load %struct.mtree*, %struct.mtree** %6, align 8
  %160 = getelementptr inbounds %struct.mtree, %struct.mtree* %159, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = call i32 @parse_file(%struct.archive_read* %156, %struct.archive_entry* %157, %struct.mtree* %158, %struct.TYPE_7__* %161, i32* %9)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %155
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %3, align 4
  br label %176

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167, %148
  %169 = load %struct.mtree*, %struct.mtree** %6, align 8
  %170 = getelementptr inbounds %struct.mtree, %struct.mtree* %169, i32 0, i32 1
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load %struct.mtree*, %struct.mtree** %6, align 8
  %175 = getelementptr inbounds %struct.mtree, %struct.mtree* %174, i32 0, i32 1
  store %struct.TYPE_7__* %173, %struct.TYPE_7__** %175, align 8
  br label %70

176:                                              ; preds = %165, %75, %54, %40
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @close(i32) #1

declare dso_local i32* @archive_entry_linkresolver_new(...) #1

declare dso_local i32 @archive_entry_linkresolver_set_strategy(i32*, i32) #1

declare dso_local i32 @read_mtree(%struct.archive_read*, %struct.mtree*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @archive_strlen(%struct.TYPE_8__*) #1

declare dso_local i32 @parse_file(%struct.archive_read*, %struct.archive_entry*, %struct.mtree*, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
