; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1f.c_qonef.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1f.c_qonef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qr8 = common dso_local global float* null, align 8
@qs8 = common dso_local global float* null, align 8
@qr5 = common dso_local global float* null, align 8
@qs5 = common dso_local global float* null, align 8
@qr3 = common dso_local global float* null, align 8
@qs3 = common dso_local global float* null, align 8
@qr2 = common dso_local global float* null, align 8
@qs2 = common dso_local global float* null, align 8
@one = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @qonef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @qonef(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store float %0, float* %2, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load float, float* %2, align 4
  %11 = call i32 @GET_FLOAT_WORD(i32 %9, float %10)
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, 2147483647
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 1090519040
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load float*, float** @qr8, align 8
  store float* %17, float** %3, align 8
  %18 = load float*, float** @qs8, align 8
  store float* %18, float** %4, align 8
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 1083274219
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load float*, float** @qr5, align 8
  store float* %23, float** %3, align 8
  %24 = load float*, float** @qs5, align 8
  store float* %24, float** %4, align 8
  br label %35

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %26, 1077336343
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load float*, float** @qr3, align 8
  store float* %29, float** %3, align 8
  %30 = load float*, float** @qs3, align 8
  store float* %30, float** %4, align 8
  br label %34

31:                                               ; preds = %25
  %32 = load float*, float** @qr2, align 8
  store float* %32, float** %3, align 8
  %33 = load float*, float** @qs2, align 8
  store float* %33, float** %4, align 8
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %22
  br label %36

36:                                               ; preds = %35, %16
  %37 = load float, float* @one, align 4
  %38 = load float, float* %2, align 4
  %39 = load float, float* %2, align 4
  %40 = fmul float %38, %39
  %41 = fdiv float %37, %40
  store float %41, float* %7, align 4
  %42 = load float*, float** %3, align 8
  %43 = getelementptr inbounds float, float* %42, i64 0
  %44 = load float, float* %43, align 4
  %45 = load float, float* %7, align 4
  %46 = load float*, float** %3, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load float, float* %47, align 4
  %49 = load float, float* %7, align 4
  %50 = load float*, float** %3, align 8
  %51 = getelementptr inbounds float, float* %50, i64 2
  %52 = load float, float* %51, align 4
  %53 = load float, float* %7, align 4
  %54 = load float*, float** %3, align 8
  %55 = getelementptr inbounds float, float* %54, i64 3
  %56 = load float, float* %55, align 4
  %57 = load float, float* %7, align 4
  %58 = load float*, float** %3, align 8
  %59 = getelementptr inbounds float, float* %58, i64 4
  %60 = load float, float* %59, align 4
  %61 = load float, float* %7, align 4
  %62 = load float*, float** %3, align 8
  %63 = getelementptr inbounds float, float* %62, i64 5
  %64 = load float, float* %63, align 4
  %65 = fmul float %61, %64
  %66 = fadd float %60, %65
  %67 = fmul float %57, %66
  %68 = fadd float %56, %67
  %69 = fmul float %53, %68
  %70 = fadd float %52, %69
  %71 = fmul float %49, %70
  %72 = fadd float %48, %71
  %73 = fmul float %45, %72
  %74 = fadd float %44, %73
  store float %74, float* %6, align 4
  %75 = load float, float* @one, align 4
  %76 = load float, float* %7, align 4
  %77 = load float*, float** %4, align 8
  %78 = getelementptr inbounds float, float* %77, i64 0
  %79 = load float, float* %78, align 4
  %80 = load float, float* %7, align 4
  %81 = load float*, float** %4, align 8
  %82 = getelementptr inbounds float, float* %81, i64 1
  %83 = load float, float* %82, align 4
  %84 = load float, float* %7, align 4
  %85 = load float*, float** %4, align 8
  %86 = getelementptr inbounds float, float* %85, i64 2
  %87 = load float, float* %86, align 4
  %88 = load float, float* %7, align 4
  %89 = load float*, float** %4, align 8
  %90 = getelementptr inbounds float, float* %89, i64 3
  %91 = load float, float* %90, align 4
  %92 = load float, float* %7, align 4
  %93 = load float*, float** %4, align 8
  %94 = getelementptr inbounds float, float* %93, i64 4
  %95 = load float, float* %94, align 4
  %96 = load float, float* %7, align 4
  %97 = load float*, float** %4, align 8
  %98 = getelementptr inbounds float, float* %97, i64 5
  %99 = load float, float* %98, align 4
  %100 = fmul float %96, %99
  %101 = fadd float %95, %100
  %102 = fmul float %92, %101
  %103 = fadd float %91, %102
  %104 = fmul float %88, %103
  %105 = fadd float %87, %104
  %106 = fmul float %84, %105
  %107 = fadd float %83, %106
  %108 = fmul float %80, %107
  %109 = fadd float %79, %108
  %110 = fmul float %76, %109
  %111 = fadd float %75, %110
  store float %111, float* %5, align 4
  %112 = load float, float* %6, align 4
  %113 = load float, float* %5, align 4
  %114 = fdiv float %112, %113
  %115 = fadd float 3.750000e-01, %114
  %116 = load float, float* %2, align 4
  %117 = fdiv float %115, %116
  ret float %117
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
