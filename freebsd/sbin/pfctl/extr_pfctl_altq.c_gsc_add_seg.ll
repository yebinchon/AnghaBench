; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_gsc_add_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_gsc_add_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_sc = type { i32 }
%struct.segment = type { double, double, double }

@INFINITY = common dso_local global double 0.000000e+00, align 8
@_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gen_sc*, double, double, double, double)* @gsc_add_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_add_seg(%struct.gen_sc* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gen_sc*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.segment*, align 8
  %13 = alloca %struct.segment*, align 8
  %14 = alloca %struct.segment*, align 8
  %15 = alloca double, align 8
  store %struct.gen_sc* %0, %struct.gen_sc** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  %16 = load double, double* %10, align 8
  %17 = load double, double* @INFINITY, align 8
  %18 = fcmp oeq double %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load double, double* @INFINITY, align 8
  store double %20, double* %15, align 8
  br label %25

21:                                               ; preds = %5
  %22 = load double, double* %8, align 8
  %23 = load double, double* %10, align 8
  %24 = fadd double %22, %23
  store double %24, double* %15, align 8
  br label %25

25:                                               ; preds = %21, %19
  %26 = load %struct.gen_sc*, %struct.gen_sc** %7, align 8
  %27 = load double, double* %8, align 8
  %28 = call %struct.segment* @gsc_getentry(%struct.gen_sc* %26, double %27)
  store %struct.segment* %28, %struct.segment** %12, align 8
  %29 = load %struct.gen_sc*, %struct.gen_sc** %7, align 8
  %30 = load double, double* %15, align 8
  %31 = call %struct.segment* @gsc_getentry(%struct.gen_sc* %29, double %30)
  store %struct.segment* %31, %struct.segment** %13, align 8
  %32 = load %struct.segment*, %struct.segment** %12, align 8
  %33 = icmp eq %struct.segment* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load %struct.segment*, %struct.segment** %13, align 8
  %36 = icmp eq %struct.segment* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %25
  store i32 -1, i32* %6, align 4
  br label %88

38:                                               ; preds = %34
  %39 = load %struct.segment*, %struct.segment** %12, align 8
  store %struct.segment* %39, %struct.segment** %14, align 8
  br label %40

40:                                               ; preds = %63, %38
  %41 = load %struct.segment*, %struct.segment** %14, align 8
  %42 = load %struct.segment*, %struct.segment** %13, align 8
  %43 = icmp ne %struct.segment* %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load double, double* %11, align 8
  %46 = load %struct.segment*, %struct.segment** %14, align 8
  %47 = getelementptr inbounds %struct.segment, %struct.segment* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fadd double %48, %45
  store double %49, double* %47, align 8
  %50 = load double, double* %9, align 8
  %51 = load %struct.segment*, %struct.segment** %14, align 8
  %52 = getelementptr inbounds %struct.segment, %struct.segment* %51, i32 0, i32 2
  %53 = load double, double* %52, align 8
  %54 = load double, double* %8, align 8
  %55 = fsub double %53, %54
  %56 = load double, double* %11, align 8
  %57 = fmul double %55, %56
  %58 = fadd double %50, %57
  %59 = load %struct.segment*, %struct.segment** %14, align 8
  %60 = getelementptr inbounds %struct.segment, %struct.segment* %59, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = fadd double %61, %58
  store double %62, double* %60, align 8
  br label %63

63:                                               ; preds = %44
  %64 = load %struct.segment*, %struct.segment** %14, align 8
  %65 = load i32, i32* @_next, align 4
  %66 = call %struct.segment* @LIST_NEXT(%struct.segment* %64, i32 %65)
  store %struct.segment* %66, %struct.segment** %14, align 8
  br label %40

67:                                               ; preds = %40
  %68 = load %struct.gen_sc*, %struct.gen_sc** %7, align 8
  %69 = load double, double* @INFINITY, align 8
  %70 = call %struct.segment* @gsc_getentry(%struct.gen_sc* %68, double %69)
  store %struct.segment* %70, %struct.segment** %13, align 8
  br label %71

71:                                               ; preds = %83, %67
  %72 = load %struct.segment*, %struct.segment** %14, align 8
  %73 = load %struct.segment*, %struct.segment** %13, align 8
  %74 = icmp ne %struct.segment* %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load double, double* %11, align 8
  %77 = load double, double* %10, align 8
  %78 = fmul double %76, %77
  %79 = load %struct.segment*, %struct.segment** %14, align 8
  %80 = getelementptr inbounds %struct.segment, %struct.segment* %79, i32 0, i32 1
  %81 = load double, double* %80, align 8
  %82 = fadd double %81, %78
  store double %82, double* %80, align 8
  br label %83

83:                                               ; preds = %75
  %84 = load %struct.segment*, %struct.segment** %14, align 8
  %85 = load i32, i32* @_next, align 4
  %86 = call %struct.segment* @LIST_NEXT(%struct.segment* %84, i32 %85)
  store %struct.segment* %86, %struct.segment** %14, align 8
  br label %71

87:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %37
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.segment* @gsc_getentry(%struct.gen_sc*, double) #1

declare dso_local %struct.segment* @LIST_NEXT(%struct.segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
