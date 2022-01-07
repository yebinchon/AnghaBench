; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chan_to_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chan_to_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@us_op_class_cc = common dso_local global i32 0, align 4
@eu_op_class_cc = common dso_local global i32 0, align 4
@jp_op_class_cc = common dso_local global i32 0, align 4
@cn_op_class_cc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_chan_to_freq(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @us_op_class_cc, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @country_match(i32 %9, i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ieee80211_chan_to_freq_us(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %68

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i32, i32* @eu_op_class_cc, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @country_match(i32 %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ieee80211_chan_to_freq_eu(i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %68

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i32, i32* @jp_op_class_cc, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @country_match(i32 %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ieee80211_chan_to_freq_jp(i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %68

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* @cn_op_class_cc, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @country_match(i32 %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ieee80211_chan_to_freq_cn(i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %68

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ieee80211_chan_to_freq_global(i32 %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %61, %47, %33, %19
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @country_match(i32, i8*) #1

declare dso_local i32 @ieee80211_chan_to_freq_us(i32, i32) #1

declare dso_local i32 @ieee80211_chan_to_freq_eu(i32, i32) #1

declare dso_local i32 @ieee80211_chan_to_freq_jp(i32, i32) #1

declare dso_local i32 @ieee80211_chan_to_freq_cn(i32, i32) #1

declare dso_local i32 @ieee80211_chan_to_freq_global(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
