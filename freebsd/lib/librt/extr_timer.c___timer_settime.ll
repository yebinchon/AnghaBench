; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_timer.c___timer_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_timer.c___timer_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.itimerspec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__timer_settime(%struct.TYPE_3__* %0, i32 %1, %struct.itimerspec* noalias %2, %struct.itimerspec* noalias %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.itimerspec*, align 8
  %8 = alloca %struct.itimerspec*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.itimerspec* %2, %struct.itimerspec** %7, align 8
  store %struct.itimerspec* %3, %struct.itimerspec** %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.itimerspec*, %struct.itimerspec** %7, align 8
  %14 = load %struct.itimerspec*, %struct.itimerspec** %8, align 8
  %15 = call i32 @__sys_ktimer_settime(i32 %11, i32 %12, %struct.itimerspec* %13, %struct.itimerspec* %14)
  ret i32 %15
}

declare dso_local i32 @__sys_ktimer_settime(i32, i32, %struct.itimerspec*, %struct.itimerspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
