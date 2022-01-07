; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_unwind.c_find_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_unwind.c_find_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_idx = type { i32 }
%struct.search_context = type { i32*, i32*, i64 }

@exidx_start = common dso_local global i32 0, align 4
@exidx_end = common dso_local global i32 0, align 4
@module_search = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.unwind_idx* (i64, i32)* @find_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.unwind_idx* @find_index(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.search_context, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.unwind_idx*, align 8
  %12 = alloca %struct.unwind_idx*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.unwind_idx* bitcast (i32* @exidx_start to %struct.unwind_idx*), %struct.unwind_idx** %11, align 8
  store i32* @exidx_start, i32** %6, align 8
  store i32* @exidx_end, i32** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = call i32 @bzero(%struct.search_context* %5, i32 24)
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.search_context, %struct.search_context* %5, i32 0, i32 2
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* @module_search, align 4
  %22 = call i64 @linker_file_foreach(i32 %21, %struct.search_context* %5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.search_context, %struct.search_context* %5, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.search_context, %struct.search_context* %5, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.search_context, %struct.search_context* %5, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to %struct.unwind_idx*
  store %struct.unwind_idx* %35, %struct.unwind_idx** %11, align 8
  %36 = getelementptr inbounds %struct.search_context, %struct.search_context* %5, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  %38 = getelementptr inbounds %struct.search_context, %struct.search_context* %5, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  br label %40

40:                                               ; preds = %32, %28, %24, %17
  br label %41

41:                                               ; preds = %40, %2
  store i32 0, i32* %8, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = udiv i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %83, %41
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub i32 %56, %57
  %59 = add i32 %58, 1
  %60 = udiv i32 %59, 2
  %61 = add i32 %55, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.unwind_idx*, %struct.unwind_idx** %11, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.unwind_idx, %struct.unwind_idx* %62, i64 %64
  store %struct.unwind_idx* %65, %struct.unwind_idx** %12, align 8
  %66 = load %struct.unwind_idx*, %struct.unwind_idx** %12, align 8
  %67 = getelementptr inbounds %struct.unwind_idx, %struct.unwind_idx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @expand_prel31(i32 %68)
  store i64 %69, i64* %13, align 8
  %70 = load %struct.unwind_idx*, %struct.unwind_idx** %12, align 8
  %71 = getelementptr inbounds %struct.unwind_idx, %struct.unwind_idx* %70, i32 0, i32 0
  %72 = ptrtoint i32* %71 to i64
  %73 = load i64, i64* %13, align 8
  %74 = add nsw i64 %72, %73
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %3, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %54
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %8, align 4
  br label %83

80:                                               ; preds = %54
  %81 = load i32, i32* %9, align 4
  %82 = sub i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %78
  br label %50

84:                                               ; preds = %50
  %85 = load %struct.unwind_idx*, %struct.unwind_idx** %11, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.unwind_idx, %struct.unwind_idx* %85, i64 %87
  ret %struct.unwind_idx* %88
}

declare dso_local i32 @bzero(%struct.search_context*, i32) #1

declare dso_local i64 @linker_file_foreach(i32, %struct.search_context*) #1

declare dso_local i64 @expand_prel31(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
