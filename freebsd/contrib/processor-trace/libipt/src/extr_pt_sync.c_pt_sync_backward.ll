; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_sync.c_pt_sync_backward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_sync.c_pt_sync_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_config = type { i32*, i32* }

@pte_internal = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@psb_pattern = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_sync_backward(i32** %0, i32* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_config*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %19 = icmp ne %struct.pt_config* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %14, %3
  %21 = load i32, i32* @pte_internal, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %17
  %24 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %25 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %28 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @pt_sync_within_bounds(i32* %30, i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @pte_internal, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %77

38:                                               ; preds = %23
  %39 = load i32*, i32** %6, align 8
  %40 = call i32* @truncate(i32* %39, i32 8)
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %73, %66, %38
  %42 = load i32*, i32** %6, align 8
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 -8
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @pte_eos, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %77

51:                                               ; preds = %41
  %52 = load i32*, i32** %6, align 8
  %53 = bitcast i32* %52 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64*, i64** @psb_pattern, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load i64, i64* %11, align 8
  %62 = load i64*, i64** @psb_pattern, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %41

67:                                               ; preds = %60, %51
  %68 = load i32*, i32** %10, align 8
  %69 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %70 = call i32* @pt_find_psb(i32* %68, %struct.pt_config* %69)
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %41

74:                                               ; preds = %67
  %75 = load i32*, i32** %10, align 8
  %76 = load i32**, i32*** %5, align 8
  store i32* %75, i32** %76, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %48, %35, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @pt_sync_within_bounds(i32*, i32*, i32*) #1

declare dso_local i32* @truncate(i32*, i32) #1

declare dso_local i32* @pt_find_psb(i32*, %struct.pt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
