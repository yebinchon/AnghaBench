; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpit.c_vatpit_delta_ticks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpit.c_vatpit_delta_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.channel = type { i32 }
%struct.bintime = type { i32, i32 }

@PIT_8254_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vatpit*, %struct.channel*)* @vatpit_delta_ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vatpit_delta_ticks(%struct.vatpit* %0, %struct.channel* %1) #0 {
  %3 = alloca %struct.vatpit*, align 8
  %4 = alloca %struct.channel*, align 8
  %5 = alloca %struct.bintime, align 4
  %6 = alloca i32, align 4
  store %struct.vatpit* %0, %struct.vatpit** %3, align 8
  store %struct.channel* %1, %struct.channel** %4, align 8
  %7 = call i32 @binuptime(%struct.bintime* %5)
  %8 = load %struct.channel*, %struct.channel** %4, align 8
  %9 = getelementptr inbounds %struct.channel, %struct.channel* %8, i32 0, i32 0
  %10 = call i32 @bintime_sub(%struct.bintime* %5, i32* %9)
  %11 = getelementptr inbounds %struct.bintime, %struct.bintime* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PIT_8254_FREQ, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = getelementptr inbounds %struct.bintime, %struct.bintime* %5, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  %18 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %16, %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @binuptime(%struct.bintime*) #1

declare dso_local i32 @bintime_sub(%struct.bintime*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
