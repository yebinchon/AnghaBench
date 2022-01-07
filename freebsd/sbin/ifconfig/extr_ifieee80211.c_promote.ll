; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_promote.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_promote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ifmr = common dso_local global %struct.TYPE_2__* null, align 8
@IFM_AUTO = common dso_local global i32 0, align 4
@IFM_IEEE80211_11B = common dso_local global i32 0, align 4
@IEEE80211_CHAN_B = common dso_local global i32 0, align 4
@IEEE80211_CHAN_G = common dso_local global i32 0, align 4
@IFM_IEEE80211_11G = common dso_local global i32 0, align 4
@htconf = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT20 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@IFM_IEEE80211_11A = common dso_local global i32 0, align 4
@IEEE80211_CHAN_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @promote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @promote(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ifmr, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ifmr, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IFM_MODE(i32 %9)
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @IFM_AUTO, align 4
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %10, %6 ], [ %12, %11 ]
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @IFM_IEEE80211_11B, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @IEEE80211_CHAN_B, align 4
  %21 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %22 = call i32 @canpromote(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @IFM_IEEE80211_11G, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load i32, i32* @htconf, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %34 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %35 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @canpromote(i32 %32, i32 %33, i32 %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* @htconf, align 4
  %39 = and i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %44 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %45 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @canpromote(i32 %42, i32 %43, i32 %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %50 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %51 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @canpromote(i32 %48, i32 %49, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %41, %31
  br label %55

55:                                               ; preds = %54, %27, %23
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @IFM_IEEE80211_11A, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %55
  %60 = load i32, i32* @htconf, align 4
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %59
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %66 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %67 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @canpromote(i32 %64, i32 %65, i32 %68)
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* @htconf, align 4
  %71 = and i32 %70, 2
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %63
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %76 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %77 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @canpromote(i32 %74, i32 %75, i32 %78)
  store i32 %79, i32* %2, align 4
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %82 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %83 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @canpromote(i32 %80, i32 %81, i32 %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %73, %63
  br label %87

87:                                               ; preds = %86, %59, %55
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @IFM_MODE(i32) #1

declare dso_local i32 @canpromote(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
