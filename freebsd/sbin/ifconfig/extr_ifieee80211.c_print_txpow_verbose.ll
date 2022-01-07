; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_print_txpow_verbose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_print_txpow_verbose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"min %4.1f dBm  max %3.1f dBm  reg %2d dBm\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_channel*)* @print_txpow_verbose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_txpow_verbose(%struct.ieee80211_channel* %0) #0 {
  %2 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %2, align 8
  %3 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %4 = call i32 @print_chaninfo(%struct.ieee80211_channel* %3, i32 1)
  %5 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sitofp i32 %7 to double
  %9 = fdiv double %8, 2.000000e+00
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %13, 2.000000e+00
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), double %9, double %14, i32 %17)
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 2, %24
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @print_chaninfo(%struct.ieee80211_channel*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
