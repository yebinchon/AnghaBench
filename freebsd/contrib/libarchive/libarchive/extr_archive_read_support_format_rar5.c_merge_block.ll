; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_merge_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_merge_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_6__, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Recursive merge is not allowed\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Can't allocate memory for a merge block buffer.\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Encountered block size == 0 during block merge\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Consumed too much data when merging blocks.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32, i32**)* @merge_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_block(%struct.archive_read* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.rar5*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %13 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %14 = call %struct.rar5* @get_context(%struct.archive_read* %13)
  store %struct.rar5* %14, %struct.rar5** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.rar5*, %struct.rar5** %8, align 8
  %16 = getelementptr inbounds %struct.rar5, %struct.rar5* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %20, i32 0, i32 0
  %22 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %23 = call i32 @archive_set_error(i32* %21, i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %24, i32* %4, align 4
  br label %167

25:                                               ; preds = %3
  %26 = load %struct.rar5*, %struct.rar5** %8, align 8
  %27 = getelementptr inbounds %struct.rar5, %struct.rar5* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.rar5*, %struct.rar5** %8, align 8
  %30 = getelementptr inbounds %struct.rar5, %struct.rar5* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.rar5*, %struct.rar5** %8, align 8
  %36 = getelementptr inbounds %struct.rar5, %struct.rar5* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %34, %25
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 8
  %44 = call i32* @malloc(i32 %43)
  %45 = load %struct.rar5*, %struct.rar5** %8, align 8
  %46 = getelementptr inbounds %struct.rar5, %struct.rar5* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  %48 = load %struct.rar5*, %struct.rar5** %8, align 8
  %49 = getelementptr inbounds %struct.rar5, %struct.rar5* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %41
  %54 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %55 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %54, i32 0, i32 0
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @archive_set_error(i32* %55, i32 %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %58, i32* %4, align 4
  br label %167

59:                                               ; preds = %41
  %60 = load %struct.rar5*, %struct.rar5** %8, align 8
  %61 = getelementptr inbounds %struct.rar5, %struct.rar5* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @memset(i32* %66, i32 0, i32 8)
  br label %68

68:                                               ; preds = %59, %159
  %69 = load %struct.rar5*, %struct.rar5** %8, align 8
  %70 = getelementptr inbounds %struct.rar5, %struct.rar5* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %73, %74
  %76 = call i32 @rar5_min(i32 %72, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %81 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %80, i32 0, i32 0
  %82 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %83 = call i32 @archive_set_error(i32* %81, i32 %82, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %84, i32* %4, align 4
  br label %167

85:                                               ; preds = %68
  %86 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @read_ahead(%struct.archive_read* %86, i32 %87, i32** %11)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %91, i32* %4, align 4
  br label %167

92:                                               ; preds = %85
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %100 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %99, i32 0, i32 0
  %101 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %102 = call i32 @archive_set_error(i32* %100, i32 %101, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %103, i32* %4, align 4
  br label %167

104:                                              ; preds = %92
  %105 = load %struct.rar5*, %struct.rar5** %8, align 8
  %106 = getelementptr inbounds %struct.rar5, %struct.rar5* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @memcpy(i32* %111, i32* %112, i32 %113)
  %115 = load i32, i32* @ARCHIVE_OK, align 4
  %116 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @consume(%struct.archive_read* %116, i32 %117)
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %104
  %121 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %121, i32* %4, align 4
  br label %167

122:                                              ; preds = %104
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.rar5*, %struct.rar5** %8, align 8
  %128 = getelementptr inbounds %struct.rar5, %struct.rar5* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %160

136:                                              ; preds = %122
  %137 = load %struct.rar5*, %struct.rar5** %8, align 8
  %138 = getelementptr inbounds %struct.rar5, %struct.rar5* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %136
  %143 = load %struct.rar5*, %struct.rar5** %8, align 8
  %144 = getelementptr inbounds %struct.rar5, %struct.rar5* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %144, align 8
  %147 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %148 = call i32 @advance_multivolume(%struct.archive_read* %147)
  store i32 %148, i32* %12, align 4
  %149 = load %struct.rar5*, %struct.rar5** %8, align 8
  %150 = getelementptr inbounds %struct.rar5, %struct.rar5* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, -1
  store i64 %152, i64* %150, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @ARCHIVE_OK, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %142
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %4, align 4
  br label %167

158:                                              ; preds = %142
  br label %159

159:                                              ; preds = %158, %136
  br label %68

160:                                              ; preds = %135
  %161 = load %struct.rar5*, %struct.rar5** %8, align 8
  %162 = getelementptr inbounds %struct.rar5, %struct.rar5* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32**, i32*** %7, align 8
  store i32* %164, i32** %165, align 8
  %166 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %160, %156, %120, %98, %90, %79, %53, %19
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rar5_min(i32, i32) #1

declare dso_local i32 @read_ahead(%struct.archive_read*, i32, i32**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @consume(%struct.archive_read*, i32) #1

declare dso_local i32 @advance_multivolume(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
