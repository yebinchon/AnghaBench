; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_qcmp_mru_avgint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_qcmp_mru_avgint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @qcmp_mru_avgint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcmp_mru_avgint(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__**, align 8
  %7 = alloca %struct.TYPE_2__**, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %14, %struct.TYPE_2__*** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %16, %struct.TYPE_2__*** %7, align 8
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %8, align 8
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i32 @L_SUB(i32* %10, i32* %25)
  %27 = load double, double* %11, align 8
  %28 = call i32 @LFPTOD(i32* %10, double %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = load double, double* %11, align 8
  %33 = fdiv double %32, %31
  store double %33, double* %11, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = call i32 @L_SUB(i32* %10, i32* %38)
  %40 = load double, double* %12, align 8
  %41 = call i32 @LFPTOD(i32* %10, double %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = load double, double* %12, align 8
  %46 = fdiv double %45, %44
  store double %46, double* %12, align 8
  %47 = load double, double* %11, align 8
  %48 = load double, double* %12, align 8
  %49 = fcmp olt double %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %74

51:                                               ; preds = %2
  %52 = load double, double* %11, align 8
  %53 = load double, double* %12, align 8
  %54 = fcmp ogt double %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %74

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = call i64 @L_ISEQU(i32* %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %74

65:                                               ; preds = %57
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = call i64 @L_ISGEQ(i32* %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %74

73:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %72, %64, %55, %50
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @L_SUB(i32*, i32*) #1

declare dso_local i32 @LFPTOD(i32*, double) #1

declare dso_local i64 @L_ISEQU(i32*, i32*) #1

declare dso_local i64 @L_ISGEQ(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
