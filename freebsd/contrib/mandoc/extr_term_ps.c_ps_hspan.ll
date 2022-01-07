; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_hspan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_hspan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { double }
%struct.termp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double }
%struct.roffsu = type { i32, double }

@fonts = common dso_local global %struct.TYPE_6__* null, align 8
@TERMFONT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.termp*, %struct.roffsu*)* @ps_hspan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_hspan(%struct.termp* %0, %struct.roffsu* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.roffsu*, align 8
  %5 = alloca double, align 8
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.roffsu* %1, %struct.roffsu** %4, align 8
  %6 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %7 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %102 [
    i32 136, label %9
    i32 135, label %17
    i32 134, label %25
    i32 133, label %40
    i32 132, label %55
    i32 131, label %62
    i32 130, label %78
    i32 129, label %85
    i32 128, label %92
  ]

9:                                                ; preds = %2
  %10 = load %struct.termp*, %struct.termp** %3, align 8
  %11 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %12 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %11, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fmul double %13, 7.200000e+01
  %15 = fdiv double %14, 2.400000e+02
  %16 = call double @PNT2AFM(%struct.termp* %10, double %15)
  store double %16, double* %5, align 8
  br label %106

17:                                               ; preds = %2
  %18 = load %struct.termp*, %struct.termp** %3, align 8
  %19 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %20 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %19, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fmul double %21, 7.200000e+01
  %23 = fdiv double %22, 2.540000e+00
  %24 = call double @PNT2AFM(%struct.termp* %18, double %23)
  store double %24, double* %5, align 8
  br label %106

25:                                               ; preds = %2
  %26 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %27 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fonts, align 8
  %30 = load i64, i64* @TERMFONT_NONE, align 8
  %31 = trunc i64 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 77
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fmul double %28, %38
  store double %39, double* %5, align 8
  br label %106

40:                                               ; preds = %2
  %41 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %42 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fonts, align 8
  %45 = load i64, i64* @TERMFONT_NONE, align 8
  %46 = trunc i64 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 78
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load double, double* %52, align 8
  %54 = fmul double %43, %53
  store double %54, double* %5, align 8
  br label %106

55:                                               ; preds = %2
  %56 = load %struct.termp*, %struct.termp** %3, align 8
  %57 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %58 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %57, i32 0, i32 1
  %59 = load double, double* %58, align 8
  %60 = fmul double %59, 7.200000e+01
  %61 = call double @PNT2AFM(%struct.termp* %56, double %60)
  store double %61, double* %5, align 8
  br label %106

62:                                               ; preds = %2
  %63 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %64 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %63, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fonts, align 8
  %67 = load i64, i64* @TERMFONT_NONE, align 8
  %68 = trunc i64 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 77
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = fmul double %65, %75
  %77 = fdiv double %76, 1.000000e+02
  store double %77, double* %5, align 8
  br label %106

78:                                               ; preds = %2
  %79 = load %struct.termp*, %struct.termp** %3, align 8
  %80 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %81 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %80, i32 0, i32 1
  %82 = load double, double* %81, align 8
  %83 = fmul double %82, 1.200000e+01
  %84 = call double @PNT2AFM(%struct.termp* %79, double %83)
  store double %84, double* %5, align 8
  br label %106

85:                                               ; preds = %2
  %86 = load %struct.termp*, %struct.termp** %3, align 8
  %87 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %88 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %87, i32 0, i32 1
  %89 = load double, double* %88, align 8
  %90 = fmul double %89, 1.000000e+00
  %91 = call double @PNT2AFM(%struct.termp* %86, double %90)
  store double %91, double* %5, align 8
  br label %106

92:                                               ; preds = %2
  %93 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %94 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %93, i32 0, i32 1
  %95 = load double, double* %94, align 8
  %96 = load %struct.termp*, %struct.termp** %3, align 8
  %97 = getelementptr inbounds %struct.termp, %struct.termp* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = fmul double %95, %100
  store double %101, double* %5, align 8
  br label %106

102:                                              ; preds = %2
  %103 = load %struct.roffsu*, %struct.roffsu** %4, align 8
  %104 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %103, i32 0, i32 1
  %105 = load double, double* %104, align 8
  store double %105, double* %5, align 8
  br label %106

106:                                              ; preds = %102, %92, %85, %78, %62, %55, %40, %25, %17, %9
  %107 = load double, double* %5, align 8
  %108 = fmul double %107, 2.400000e+01
  %109 = fptosi double %108 to i32
  ret i32 %109
}

declare dso_local double @PNT2AFM(%struct.termp*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
