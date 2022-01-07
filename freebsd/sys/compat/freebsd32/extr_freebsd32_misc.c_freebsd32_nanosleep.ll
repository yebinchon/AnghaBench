; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_nanosleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_nanosleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_nanosleep_args = type { i32, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@TIMER_RELTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_nanosleep(%struct.thread* %0, %struct.freebsd32_nanosleep_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.freebsd32_nanosleep_args*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.freebsd32_nanosleep_args* %1, %struct.freebsd32_nanosleep_args** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = load i32, i32* @CLOCK_REALTIME, align 4
  %7 = load i32, i32* @TIMER_RELTIME, align 4
  %8 = load %struct.freebsd32_nanosleep_args*, %struct.freebsd32_nanosleep_args** %4, align 8
  %9 = getelementptr inbounds %struct.freebsd32_nanosleep_args, %struct.freebsd32_nanosleep_args* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.freebsd32_nanosleep_args*, %struct.freebsd32_nanosleep_args** %4, align 8
  %12 = getelementptr inbounds %struct.freebsd32_nanosleep_args, %struct.freebsd32_nanosleep_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @freebsd32_user_clock_nanosleep(%struct.thread* %5, i32 %6, i32 %7, i32 %10, i32 %13)
  ret i32 %14
}

declare dso_local i32 @freebsd32_user_clock_nanosleep(%struct.thread*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
