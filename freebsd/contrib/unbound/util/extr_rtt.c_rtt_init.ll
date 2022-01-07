; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_rtt.c_rtt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_rtt.c_rtt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtt_info = type { i32, i32, i64 }

@UNKNOWN_SERVER_NICENESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtt_init(%struct.rtt_info* %0) #0 {
  %2 = alloca %struct.rtt_info*, align 8
  store %struct.rtt_info* %0, %struct.rtt_info** %2, align 8
  %3 = load %struct.rtt_info*, %struct.rtt_info** %2, align 8
  %4 = getelementptr inbounds %struct.rtt_info, %struct.rtt_info* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @UNKNOWN_SERVER_NICENESS, align 4
  %6 = sdiv i32 %5, 4
  %7 = load %struct.rtt_info*, %struct.rtt_info** %2, align 8
  %8 = getelementptr inbounds %struct.rtt_info, %struct.rtt_info* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.rtt_info*, %struct.rtt_info** %2, align 8
  %10 = call i32 @calc_rto(%struct.rtt_info* %9)
  %11 = load %struct.rtt_info*, %struct.rtt_info** %2, align 8
  %12 = getelementptr inbounds %struct.rtt_info, %struct.rtt_info* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  ret void
}

declare dso_local i32 @calc_rto(%struct.rtt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
