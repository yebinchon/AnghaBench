; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_chanpref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_chanpref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_channel*)* @chanpref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chanpref(%struct.ieee80211_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  %4 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %5 = call i64 @IEEE80211_IS_CHAN_VHT160(%struct.ieee80211_channel* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 80, i32* %2, align 4
  br label %74

8:                                                ; preds = %1
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %10 = call i64 @IEEE80211_IS_CHAN_VHT80_80(%struct.ieee80211_channel* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 75, i32* %2, align 4
  br label %74

13:                                               ; preds = %8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %15 = call i64 @IEEE80211_IS_CHAN_VHT80(%struct.ieee80211_channel* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 70, i32* %2, align 4
  br label %74

18:                                               ; preds = %13
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %20 = call i64 @IEEE80211_IS_CHAN_VHT40(%struct.ieee80211_channel* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 60, i32* %2, align 4
  br label %74

23:                                               ; preds = %18
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %25 = call i64 @IEEE80211_IS_CHAN_VHT20(%struct.ieee80211_channel* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 50, i32* %2, align 4
  br label %74

28:                                               ; preds = %23
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %30 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 40, i32* %2, align 4
  br label %74

33:                                               ; preds = %28
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %35 = call i64 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 30, i32* %2, align 4
  br label %74

38:                                               ; preds = %33
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %40 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 10, i32* %2, align 4
  br label %74

43:                                               ; preds = %38
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %45 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 5, i32* %2, align 4
  br label %74

48:                                               ; preds = %43
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %50 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 25, i32* %2, align 4
  br label %74

53:                                               ; preds = %48
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %55 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 20, i32* %2, align 4
  br label %74

58:                                               ; preds = %53
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %60 = call i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 20, i32* %2, align 4
  br label %74

63:                                               ; preds = %58
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %65 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 15, i32* %2, align 4
  br label %74

68:                                               ; preds = %63
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %70 = call i64 @IEEE80211_IS_CHAN_PUREG(%struct.ieee80211_channel* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 15, i32* %2, align 4
  br label %74

73:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12, %7
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @IEEE80211_IS_CHAN_VHT160(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT80_80(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT80(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT20(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_PUREG(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
