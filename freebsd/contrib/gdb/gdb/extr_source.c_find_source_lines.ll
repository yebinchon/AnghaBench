; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_find_source_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_source.c_find_source_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.stat = type { i64, i64 }
%struct.cleanup = type { i32 }

@exec_bfd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Source file is more recent than executable.\0A\00", align 1
@xfree = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_source_lines(%struct.symtab* %0, i32 %1) #0 {
  %3 = alloca %struct.symtab*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cleanup*, align 8
  store %struct.symtab* %0, %struct.symtab** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 1000, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %15 = load %struct.symtab*, %struct.symtab** %3, align 8
  %16 = getelementptr inbounds %struct.symtab, %struct.symtab* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i64 @xmmalloc(i32 %19, i32 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %11, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @fstat(i32 %26, %struct.stat* %5)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.symtab*, %struct.symtab** %3, align 8
  %31 = getelementptr inbounds %struct.symtab, %struct.symtab* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @perror_with_name(i32 %32)
  br label %34

34:                                               ; preds = %29, %2
  %35 = load %struct.symtab*, %struct.symtab** %3, align 8
  %36 = icmp ne %struct.symtab* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load %struct.symtab*, %struct.symtab** %3, align 8
  %39 = getelementptr inbounds %struct.symtab, %struct.symtab* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.symtab*, %struct.symtab** %3, align 8
  %44 = getelementptr inbounds %struct.symtab, %struct.symtab* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.symtab*, %struct.symtab** %3, align 8
  %51 = getelementptr inbounds %struct.symtab, %struct.symtab* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @bfd_get_mtime(i64 %54)
  store i64 %55, i64* %12, align 8
  br label %63

56:                                               ; preds = %42, %37, %34
  %57 = load i64, i64* @exec_bfd, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* @exec_bfd, align 8
  %61 = call i64 @bfd_get_mtime(i64 %60)
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %49
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66, %63
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i64 @xmalloc(i32 %77)
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %6, align 8
  %80 = load i32, i32* @xfree, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = call %struct.cleanup* @make_cleanup(i32 %80, i8* %81)
  store %struct.cleanup* %82, %struct.cleanup** %14, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @myread(i32 %83, i8* %84, i32 %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %73
  %91 = load %struct.symtab*, %struct.symtab** %3, align 8
  %92 = getelementptr inbounds %struct.symtab, %struct.symtab* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @perror_with_name(i32 %93)
  br label %95

95:                                               ; preds = %90, %73
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %6, align 8
  store i8* %100, i8** %7, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 0, i32* %102, align 4
  store i32 1, i32* %9, align 4
  br label %103

103:                                              ; preds = %149, %95
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ne i8* %104, %105
  br i1 %106, label %107, label %150

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %7, align 8
  %110 = load i8, i8* %108, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %149

113:                                              ; preds = %107
  %114 = load i8*, i8** %7, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = icmp ne i8* %114, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %117
  %122 = load i32, i32* %10, align 4
  %123 = mul nsw i32 %122, 2
  store i32 %123, i32* %10, align 4
  %124 = load %struct.symtab*, %struct.symtab** %3, align 8
  %125 = getelementptr inbounds %struct.symtab, %struct.symtab* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = bitcast i32* %129 to i8*
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 4, %132
  %134 = trunc i64 %133 to i32
  %135 = call i64 @xmrealloc(i32 %128, i8* %130, i32 %134)
  %136 = inttoptr i64 %135 to i32*
  store i32* %136, i32** %11, align 8
  br label %137

137:                                              ; preds = %121, %117
  %138 = load i8*, i8** %7, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i32
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %143, i32* %148, align 4
  br label %149

149:                                              ; preds = %137, %113, %107
  br label %103

150:                                              ; preds = %103
  %151 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %152 = call i32 @do_cleanups(%struct.cleanup* %151)
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.symtab*, %struct.symtab** %3, align 8
  %155 = getelementptr inbounds %struct.symtab, %struct.symtab* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.symtab*, %struct.symtab** %3, align 8
  %157 = getelementptr inbounds %struct.symtab, %struct.symtab* %156, i32 0, i32 2
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 4
  %166 = trunc i64 %165 to i32
  %167 = call i64 @xmrealloc(i32 %160, i8* %162, i32 %166)
  %168 = inttoptr i64 %167 to i32*
  %169 = load %struct.symtab*, %struct.symtab** %3, align 8
  %170 = getelementptr inbounds %struct.symtab, %struct.symtab* %169, i32 0, i32 1
  store i32* %168, i32** %170, align 8
  ret void
}

declare dso_local i64 @xmmalloc(i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @perror_with_name(i32) #1

declare dso_local i64 @bfd_get_mtime(i64) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i64 @myread(i32, i8*, i32) #1

declare dso_local i64 @xmrealloc(i32, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
