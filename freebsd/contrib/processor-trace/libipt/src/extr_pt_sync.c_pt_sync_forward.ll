; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_sync.c_pt_sync_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_sync.c_pt_sync_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_config = type { i32*, i32* }

@pte_internal = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@psb_pattern = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_sync_forward(i32** %0, i32* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %13 = load i32**, i32*** %5, align 8
  %14 = icmp ne i32** %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %20 = icmp ne %struct.pt_config* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %15, %3
  %22 = load i32, i32* @pte_internal, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %84

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %10, align 8
  %26 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %27 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %30 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @pt_sync_within_bounds(i32* %32, i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @pte_internal, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %84

40:                                               ; preds = %24
  %41 = load i32*, i32** %6, align 8
  %42 = call i32* @align(i32* %41, i32 8)
  store i32* %42, i32** %6, align 8
  br label %43

43:                                               ; preds = %80, %75, %68, %40
  %44 = load i32*, i32** %6, align 8
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ult i32* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @pte_eos, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %84

53:                                               ; preds = %43
  %54 = load i32*, i32** %11, align 8
  %55 = bitcast i32* %54 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64*, i64** @psb_pattern, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i64, i64* %12, align 8
  %64 = load i64*, i64** @psb_pattern, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %43

69:                                               ; preds = %62, %53
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %72 = call i32* @pt_find_psb(i32* %70, %struct.pt_config* %71)
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %43

76:                                               ; preds = %69
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ult i32* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %43

81:                                               ; preds = %76
  %82 = load i32*, i32** %11, align 8
  %83 = load i32**, i32*** %5, align 8
  store i32* %82, i32** %83, align 8
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %50, %37, %21
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @pt_sync_within_bounds(i32*, i32*, i32*) #1

declare dso_local i32* @align(i32*, i32) #1

declare dso_local i32* @pt_find_psb(i32*, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
