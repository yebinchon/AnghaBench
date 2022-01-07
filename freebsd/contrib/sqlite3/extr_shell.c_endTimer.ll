; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_endTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_endTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rusage = type { i32, i32 }

@enableTimer = common dso_local global i64 0, align 8
@RUSAGE_SELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Run Time: real %.3f user %f sys %f\0A\00", align 1
@iBegin = common dso_local global double 0.000000e+00, align 8
@sBegin = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @endTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @endTimer() #0 {
  %1 = alloca double, align 8
  %2 = alloca %struct.rusage, align 4
  %3 = load i64, i64* @enableTimer, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = call double (...) @timeOfDay()
  store double %6, double* %1, align 8
  %7 = load i32, i32* @RUSAGE_SELF, align 4
  %8 = call i32 @getrusage(i32 %7, %struct.rusage* %2)
  %9 = load double, double* %1, align 8
  %10 = load double, double* @iBegin, align 8
  %11 = fsub double %9, %10
  %12 = fmul double %11, 1.000000e-03
  %13 = getelementptr inbounds %struct.rusage, %struct.rusage* %2, i32 0, i32 1
  %14 = call double @timeDiff(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sBegin, i32 0, i32 1), i32* %13)
  %15 = getelementptr inbounds %struct.rusage, %struct.rusage* %2, i32 0, i32 0
  %16 = call double @timeDiff(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sBegin, i32 0, i32 0), i32* %15)
  %17 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), double %12, double %14, double %16)
  br label %18

18:                                               ; preds = %5, %0
  ret void
}

declare dso_local double @timeOfDay(...) #1

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32 @printf(i8*, double, double, double) #1

declare dso_local double @timeDiff(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
