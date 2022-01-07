; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_print_info_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_print_info_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8* }

@print_info_basic.headings_displayed = internal global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Strms  Blocks   Compressed Uncompressed  Ratio  Check   Filename\00", align 1
@CHECKS_STR_SIZE = common dso_local global i32 0, align 4
@NICESTR_B = common dso_local global i32 0, align 4
@NICESTR_TIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%*s %*s  %*s  %*s  %*s  %-*s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @print_info_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_info_basic(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [7 x i8*], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load i32, i32* @print_info_basic.headings_displayed, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  store i32 1, i32* @print_info_basic.headings_displayed, align 4
  %11 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @puts(i32 %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @CHECKS_STR_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @lzma_index_checks(i32 %20)
  %22 = call i32 @get_check_names(i8* %17, i32 %21, i32 0)
  %23 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lzma_index_stream_count(i32 %26)
  %28 = call i8* @uint64_to_str(i32 %27, i32 0)
  store i8* %28, i8** %23, align 8
  %29 = getelementptr inbounds i8*, i8** %23, i64 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lzma_index_block_count(i32 %32)
  %34 = call i8* @uint64_to_str(i32 %33, i32 1)
  store i8* %34, i8** %29, align 8
  %35 = getelementptr inbounds i8*, i8** %29, i64 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lzma_index_file_size(i32 %38)
  %40 = load i32, i32* @NICESTR_B, align 4
  %41 = load i32, i32* @NICESTR_TIB, align 4
  %42 = call i8* @uint64_to_nicestr(i32 %39, i32 %40, i32 %41, i32 0, i32 2)
  store i8* %42, i8** %35, align 8
  %43 = getelementptr inbounds i8*, i8** %35, i64 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @lzma_index_uncompressed_size(i32 %46)
  %48 = load i32, i32* @NICESTR_B, align 4
  %49 = load i32, i32* @NICESTR_TIB, align 4
  %50 = call i8* @uint64_to_nicestr(i32 %47, i32 %48, i32 %49, i32 0, i32 3)
  store i8* %50, i8** %43, align 8
  %51 = getelementptr inbounds i8*, i8** %43, i64 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @lzma_index_file_size(i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lzma_index_uncompressed_size(i32 %58)
  %60 = call i8* @get_ratio(i32 %55, i32 %59)
  store i8* %60, i8** %51, align 8
  %61 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8* %17, i8** %61, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %62, align 8
  %66 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 0
  %67 = load i8*, i8** %66, align 16
  %68 = call i8* @tuklib_mbstr_fw(i8* %67, i32 5)
  %69 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 0
  %70 = load i8*, i8** %69, align 16
  %71 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @tuklib_mbstr_fw(i8* %72, i32 7)
  %74 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 2
  %77 = load i8*, i8** %76, align 16
  %78 = call i8* @tuklib_mbstr_fw(i8* %77, i32 11)
  %79 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 2
  %80 = load i8*, i8** %79, align 16
  %81 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 3
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @tuklib_mbstr_fw(i8* %82, i32 11)
  %84 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 3
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 4
  %87 = load i8*, i8** %86, align 16
  %88 = call i8* @tuklib_mbstr_fw(i8* %87, i32 5)
  %89 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 4
  %90 = load i8*, i8** %89, align 16
  %91 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 5
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @tuklib_mbstr_fw(i8* %92, i32 7)
  %94 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 5
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 6
  %97 = load i8*, i8** %96, align 16
  %98 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %70, i8* %73, i8* %75, i8* %78, i8* %80, i8* %83, i8* %85, i8* %88, i8* %90, i8* %93, i8* %95, i8* %97)
  %99 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %99)
  ret i32 0
}

declare dso_local i32 @puts(i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @get_check_names(i8*, i32, i32) #1

declare dso_local i32 @lzma_index_checks(i32) #1

declare dso_local i8* @uint64_to_str(i32, i32) #1

declare dso_local i32 @lzma_index_stream_count(i32) #1

declare dso_local i32 @lzma_index_block_count(i32) #1

declare dso_local i8* @uint64_to_nicestr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @lzma_index_file_size(i32) #1

declare dso_local i32 @lzma_index_uncompressed_size(i32) #1

declare dso_local i8* @get_ratio(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @tuklib_mbstr_fw(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
