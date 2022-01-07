; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_update_pending_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_update_pending_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_bss = type { i32 }
%struct.wpa_radio_work = type { %struct.wpa_connect_work* }
%struct.wpa_connect_work = type { i32, %struct.wpa_bss* }

@.str = private unnamed_addr constant [12 x i8] c"sme-connect\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Update BSS pointer for the pending connect radio work\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_bss*, %struct.wpa_bss*)* @wpa_bss_update_pending_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_bss_update_pending_connect(%struct.wpa_supplicant* %0, %struct.wpa_bss* %1, %struct.wpa_bss* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_bss*, align 8
  %6 = alloca %struct.wpa_bss*, align 8
  %7 = alloca %struct.wpa_radio_work*, align 8
  %8 = alloca %struct.wpa_connect_work*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %5, align 8
  store %struct.wpa_bss* %2, %struct.wpa_bss** %6, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %10 = call %struct.wpa_radio_work* @radio_work_pending(%struct.wpa_supplicant* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.wpa_radio_work* %10, %struct.wpa_radio_work** %7, align 8
  %11 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %7, align 8
  %12 = icmp ne %struct.wpa_radio_work* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %15 = call %struct.wpa_radio_work* @radio_work_pending(%struct.wpa_supplicant* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpa_radio_work* %15, %struct.wpa_radio_work** %7, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %7, align 8
  %18 = icmp ne %struct.wpa_radio_work* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %41

20:                                               ; preds = %16
  %21 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %7, align 8
  %22 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %21, i32 0, i32 0
  %23 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %22, align 8
  store %struct.wpa_connect_work* %23, %struct.wpa_connect_work** %8, align 8
  %24 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %8, align 8
  %25 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %24, i32 0, i32 1
  %26 = load %struct.wpa_bss*, %struct.wpa_bss** %25, align 8
  %27 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %28 = icmp ne %struct.wpa_bss* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %41

30:                                               ; preds = %20
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %34 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %8, align 8
  %35 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %34, i32 0, i32 1
  store %struct.wpa_bss* %33, %struct.wpa_bss** %35, align 8
  %36 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %37 = icmp ne %struct.wpa_bss* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %8, align 8
  %40 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %19, %29, %38, %30
  ret void
}

declare dso_local %struct.wpa_radio_work* @radio_work_pending(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
