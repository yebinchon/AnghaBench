; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_nextafterf.c_nextafterf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_nextafterf.c_nextafterf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @nextafterf(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load float, float* %4, align 4
  %13 = call i32 @GET_FLOAT_WORD(i32 %11, float %12)
  %14 = load i32, i32* %8, align 4
  %15 = load float, float* %5, align 4
  %16 = call i32 @GET_FLOAT_WORD(i32 %14, float %15)
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 2147483647
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 2147483647
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 2139095040
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 2139095040
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %2
  %27 = load float, float* %4, align 4
  %28 = load float, float* %5, align 4
  %29 = fadd float %27, %28
  store float %29, float* %3, align 4
  br label %113

30:                                               ; preds = %23
  %31 = load float, float* %4, align 4
  %32 = load float, float* %5, align 4
  %33 = fcmp oeq float %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load float, float* %5, align 4
  store float %35, float* %3, align 4
  br label %113

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load float, float* %4, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, -2147483648
  %43 = or i32 %42, 1
  %44 = call i32 @SET_FLOAT_WORD(float %40, i32 %43)
  %45 = load float, float* %4, align 4
  %46 = load float, float* %4, align 4
  %47 = fmul float %45, %46
  store volatile float %47, float* %6, align 4
  %48 = load volatile float, float* %6, align 4
  %49 = load float, float* %4, align 4
  %50 = fcmp oeq float %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load volatile float, float* %6, align 4
  store float %52, float* %3, align 4
  br label %113

53:                                               ; preds = %39
  %54 = load float, float* %4, align 4
  store float %54, float* %3, align 4
  br label %113

55:                                               ; preds = %36
  %56 = load i32, i32* %7, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %83

69:                                               ; preds = %55
  %70 = load i32, i32* %8, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %68
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 2139095040
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp sge i32 %86, 2139095040
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load float, float* %4, align 4
  %90 = load float, float* %4, align 4
  %91 = fadd float %89, %90
  store float %91, float* %3, align 4
  br label %113

92:                                               ; preds = %83
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 8388608
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load float, float* %4, align 4
  %97 = load float, float* %4, align 4
  %98 = fmul float %96, %97
  store volatile float %98, float* %6, align 4
  %99 = load volatile float, float* %6, align 4
  %100 = load float, float* %4, align 4
  %101 = fcmp une float %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load float, float* %5, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @SET_FLOAT_WORD(float %103, i32 %104)
  %106 = load float, float* %5, align 4
  store float %106, float* %3, align 4
  br label %113

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %92
  %109 = load float, float* %4, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @SET_FLOAT_WORD(float %109, i32 %110)
  %112 = load float, float* %4, align 4
  store float %112, float* %3, align 4
  br label %113

113:                                              ; preds = %108, %102, %88, %53, %51, %34, %26
  %114 = load float, float* %3, align 4
  ret float %114
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
