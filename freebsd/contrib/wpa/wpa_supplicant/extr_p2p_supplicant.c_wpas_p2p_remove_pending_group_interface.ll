; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_remove_pending_group_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_remove_pending_group_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i8*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"P2P: Removing pending group interface %s\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpas_p2p_remove_pending_group_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_remove_pending_group_interface(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @is_zero_ether_addr(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %43

16:                                               ; preds = %9
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @wpa_drv_if_remove(%struct.wpa_supplicant* %22, i32 %25, i8* %28)
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @os_memset(i32 %32, i32 0, i32 %33)
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @wpa_drv_if_remove(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
