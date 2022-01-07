; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_chan2mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_chan2mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@IEEE80211_MODE_VHT_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IEEE80211_MODE_TURBO_A = common dso_local global i32 0, align 4
@IEEE80211_MODE_TURBO_G = common dso_local global i32 0, align 4
@IEEE80211_MODE_STURBO_A = common dso_local global i32 0, align 4
@IEEE80211_MODE_FH = common dso_local global i32 0, align 4
@IEEE80211_MODE_HALF = common dso_local global i32 0, align 4
@IEEE80211_MODE_QUARTER = common dso_local global i32 0, align 4
@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11B = common dso_local global i32 0, align 4
@IEEE80211_MODE_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_channel*)* @chan2mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan2mode(%struct.ieee80211_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  %4 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %5 = call i64 @IEEE80211_IS_CHAN_VHTA(%struct.ieee80211_channel* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @IEEE80211_MODE_VHT_5GHZ, align 4
  store i32 %8, i32* %2, align 4
  br label %83

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %11 = call i64 @IEEE80211_IS_CHAN_VHTG(%struct.ieee80211_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @IEEE80211_MODE_VHT_2GHZ, align 4
  store i32 %14, i32* %2, align 4
  br label %83

15:                                               ; preds = %9
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_HTA(%struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  store i32 %20, i32* %2, align 4
  br label %83

21:                                               ; preds = %15
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %23 = call i64 @IEEE80211_IS_CHAN_HTG(%struct.ieee80211_channel* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  store i32 %26, i32* %2, align 4
  br label %83

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %29 = call i64 @IEEE80211_IS_CHAN_108A(%struct.ieee80211_channel* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @IEEE80211_MODE_TURBO_A, align 4
  store i32 %32, i32* %2, align 4
  br label %83

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %35 = call i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @IEEE80211_MODE_TURBO_G, align 4
  store i32 %38, i32* %2, align 4
  br label %83

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %41 = call i64 @IEEE80211_IS_CHAN_ST(%struct.ieee80211_channel* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @IEEE80211_MODE_STURBO_A, align 4
  store i32 %44, i32* %2, align 4
  br label %83

45:                                               ; preds = %39
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %47 = call i64 @IEEE80211_IS_CHAN_FHSS(%struct.ieee80211_channel* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @IEEE80211_MODE_FH, align 4
  store i32 %50, i32* %2, align 4
  br label %83

51:                                               ; preds = %45
  %52 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %53 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @IEEE80211_MODE_HALF, align 4
  store i32 %56, i32* %2, align 4
  br label %83

57:                                               ; preds = %51
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %59 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @IEEE80211_MODE_QUARTER, align 4
  store i32 %62, i32* %2, align 4
  br label %83

63:                                               ; preds = %57
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %65 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @IEEE80211_MODE_11A, align 4
  store i32 %68, i32* %2, align 4
  br label %83

69:                                               ; preds = %63
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %71 = call i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @IEEE80211_MODE_11G, align 4
  store i32 %74, i32* %2, align 4
  br label %83

75:                                               ; preds = %69
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %77 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @IEEE80211_MODE_11B, align 4
  store i32 %80, i32* %2, align 4
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @IEEE80211_MODE_AUTO, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @IEEE80211_IS_CHAN_VHTA(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHTG(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HTA(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HTG(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ST(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_FHSS(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
