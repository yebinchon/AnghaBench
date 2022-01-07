; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_offchannel.c_wpas_get_tx_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_offchannel.c_wpas_get_tx_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.wpa_supplicant*, i32*, %struct.TYPE_2__*, %struct.wpa_supplicant*, i32, i64, i64 }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"P2P: Use group interface %s instead of interface %s for Action TX\00", align 1
@WLAN_ACTION_PUBLIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_supplicant* (%struct.wpa_supplicant*, i32*)* @wpas_get_tx_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_supplicant* @wpas_get_tx_interface(%struct.wpa_supplicant* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = call i64 @os_memcmp(i32* %7, i32* %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_supplicant* %15, %struct.wpa_supplicant** %3, align 8
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  store %struct.wpa_supplicant* %21, %struct.wpa_supplicant** %6, align 8
  br label %22

22:                                               ; preds = %34, %16
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %24 = icmp ne %struct.wpa_supplicant* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i64 @os_memcmp(i32* %26, i32* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 1
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %36, align 8
  store %struct.wpa_supplicant* %37, %struct.wpa_supplicant** %6, align 8
  br label %22

38:                                               ; preds = %33, %22
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %40 = icmp ne %struct.wpa_supplicant* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  store %struct.wpa_supplicant* %50, %struct.wpa_supplicant** %3, align 8
  br label %53

51:                                               ; preds = %38
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_supplicant* %52, %struct.wpa_supplicant** %3, align 8
  br label %53

53:                                               ; preds = %51, %41, %14
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  ret %struct.wpa_supplicant* %54
}

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
