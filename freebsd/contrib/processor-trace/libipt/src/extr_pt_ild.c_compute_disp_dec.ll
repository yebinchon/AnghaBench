; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_compute_disp_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_compute_disp_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_ild = type { i64, i32, i64 }

@compute_disp_dec.map_map = internal constant [2 x i32*] [i32* inttoptr (i64 129 to i32*), i32* inttoptr (i64 128 to i32*)], align 16
@pte_internal = common dso_local global i32 0, align 4
@PTI_MAP_0 = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_ild*)* @compute_disp_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_disp_dec(%struct.pt_ild* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_ild*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_ild* %0, %struct.pt_ild** %3, align 8
  %6 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %7 = icmp ne %struct.pt_ild* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @pte_internal, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %92

11:                                               ; preds = %1
  %12 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %13 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 0, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %92

17:                                               ; preds = %11
  %18 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %19 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ule i64 2, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %92

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x i32*], [2 x i32*]* @compute_disp_dec.map_map, i64 0, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %31 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %89 [
    i32 133, label %36
    i32 131, label %39
    i32 136, label %40
    i32 134, label %43
    i32 132, label %57
    i32 135, label %64
    i32 130, label %71
  ]

36:                                               ; preds = %25
  %37 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %38 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  store i32 0, i32* %2, align 4
  br label %92

39:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %92

40:                                               ; preds = %25
  %41 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %42 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %41, i32 0, i32 0
  store i64 1, i64* %42, align 8
  store i32 0, i32* %2, align 4
  br label %92

43:                                               ; preds = %25
  %44 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %45 = call i32 @mode_64b(%struct.pt_ild* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %49 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %48, i32 0, i32 0
  store i64 4, i64* %49, align 8
  store i32 0, i32* %2, align 4
  br label %92

50:                                               ; preds = %43
  %51 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %52 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %51, i32 0, i32 0
  %53 = bitcast i64* %52 to i32*
  %54 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %55 = call i32 @pti_get_nominal_eosz(%struct.pt_ild* %54)
  %56 = call i32 @resolve_z(i32* %53, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %92

57:                                               ; preds = %25
  %58 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %59 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %58, i32 0, i32 0
  %60 = bitcast i64* %59 to i32*
  %61 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %62 = call i32 @pti_get_nominal_easz(%struct.pt_ild* %61)
  %63 = call i32 @resolve_v(i32* %60, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %92

64:                                               ; preds = %25
  %65 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %66 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %65, i32 0, i32 0
  %67 = bitcast i64* %66 to i32*
  %68 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %69 = call i32 @pti_get_nominal_eosz(%struct.pt_ild* %68)
  %70 = call i32 @resolve_z(i32* %67, i32 %69)
  store i32 %70, i32* %2, align 4
  br label %92

71:                                               ; preds = %25
  %72 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %73 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PTI_MAP_0, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %79 = call i32 @pti_get_modrm_reg(%struct.pt_ild* %78)
  %80 = icmp eq i32 %79, 7
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %83 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %82, i32 0, i32 0
  %84 = bitcast i64* %83 to i32*
  %85 = load %struct.pt_ild*, %struct.pt_ild** %3, align 8
  %86 = call i32 @pti_get_nominal_eosz(%struct.pt_ild* %85)
  %87 = call i32 @resolve_z(i32* %84, i32 %86)
  store i32 %87, i32* %2, align 4
  br label %92

88:                                               ; preds = %77, %71
  store i32 0, i32* %2, align 4
  br label %92

89:                                               ; preds = %25
  %90 = load i32, i32* @pte_bad_insn, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %88, %81, %64, %57, %50, %47, %40, %39, %36, %24, %16, %8
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @mode_64b(%struct.pt_ild*) #1

declare dso_local i32 @resolve_z(i32*, i32) #1

declare dso_local i32 @pti_get_nominal_eosz(%struct.pt_ild*) #1

declare dso_local i32 @resolve_v(i32*, i32) #1

declare dso_local i32 @pti_get_nominal_easz(%struct.pt_ild*) #1

declare dso_local i32 @pti_get_modrm_reg(%struct.pt_ild*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
