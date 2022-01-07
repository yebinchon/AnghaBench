; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpa_non_pref_chan_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpa_non_pref_chan_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_mbo_non_pref_channel = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @wpa_non_pref_chan_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_non_pref_chan_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_mbo_non_pref_channel*, align 8
  %7 = alloca %struct.wpa_mbo_non_pref_channel*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wpa_mbo_non_pref_channel*
  store %struct.wpa_mbo_non_pref_channel* %9, %struct.wpa_mbo_non_pref_channel** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.wpa_mbo_non_pref_channel*
  store %struct.wpa_mbo_non_pref_channel* %11, %struct.wpa_mbo_non_pref_channel** %7, align 8
  %12 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %6, align 8
  %13 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %7, align 8
  %16 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %6, align 8
  %21 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %7, align 8
  %25 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = sub nsw i32 %23, %27
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %2
  %30 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %6, align 8
  %31 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %7, align 8
  %34 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %6, align 8
  %39 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %7, align 8
  %43 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = sub nsw i32 %41, %45
  store i32 %46, i32* %3, align 4
  br label %57

47:                                               ; preds = %29
  %48 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %6, align 8
  %49 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.wpa_mbo_non_pref_channel*, %struct.wpa_mbo_non_pref_channel** %7, align 8
  %53 = getelementptr inbounds %struct.wpa_mbo_non_pref_channel, %struct.wpa_mbo_non_pref_channel* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = sub nsw i32 %51, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %47, %37, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
