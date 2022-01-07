; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_add_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_add_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Beacon Report: Invalid channel %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32*)* @wpas_add_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_add_channel(i64 %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %64, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %12
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = mul i64 2, %18
  %20 = sub i64 %19, 2
  %21 = sub i64 %17, %20
  %22 = load i64, i64* %10, align 8
  %23 = mul i64 %22, 4
  %24 = add i64 %21, %23
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @ieee80211_chan_to_freq(i32* null, i64 %25, i64 %26)
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %16
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %37, 128
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %40, 129
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 130
  br i1 %44, label %45, label %53

45:                                               ; preds = %42, %39, %36
  %46 = load i64, i64* %11, align 8
  %47 = mul i64 5, %46
  %48 = add i64 5000, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %42, %16
  %54 = load i32*, i32** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @wpa_printf(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %61)
  store i32 -1, i32* %5, align 4
  br label %68

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %12

67:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %59
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @ieee80211_chan_to_freq(i32*, i64, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
