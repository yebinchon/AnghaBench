; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_notify_bad_chans.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_notify_bad_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Hardware does not support configured mode\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"Configured channel (%d) not found from the channel list of current mode (%d) %s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Hardware does not support configured channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_iface*)* @hostapd_notify_bad_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_notify_bad_chans(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_iface*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %2, align 8
  %3 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %4 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %9 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %14 = load i32, i32* @HOSTAPD_LEVEL_WARNING, align 4
  %15 = call i32 (i32, i32*, i32, i32, i8*, ...) @hostapd_logger(i32 %12, i32* null, i32 %13, i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %18 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %23 = load i32, i32* @HOSTAPD_LEVEL_WARNING, align 4
  %24 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %25 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %30 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %35 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @hostapd_hw_mode_txt(i32 %38)
  %40 = call i32 (i32, i32*, i32, i32, i8*, ...) @hostapd_logger(i32 %21, i32* null, i32 %22, i32 %23, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %33, i32 %39)
  %41 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %42 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %47 = load i32, i32* @HOSTAPD_LEVEL_WARNING, align 4
  %48 = call i32 (i32, i32*, i32, i32, i8*, ...) @hostapd_logger(i32 %45, i32* null, i32 %46, i32 %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @hostapd_logger(i32, i32*, i32, i32, i8*, ...) #1

declare dso_local i32 @hostapd_hw_mode_txt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
