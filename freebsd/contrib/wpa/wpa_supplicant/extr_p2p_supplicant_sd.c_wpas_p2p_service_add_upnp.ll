; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_wpas_p2p_service_add_upnp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_wpas_p2p_service_add_upnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.p2p_srv_upnp = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_service_add_upnp(%struct.wpa_supplicant* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.p2p_srv_upnp*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @wpas_p2p_service_get_upnp(%struct.wpa_supplicant* %9, i32 %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

15:                                               ; preds = %3
  %16 = call %struct.p2p_srv_upnp* @os_zalloc(i32 24)
  store %struct.p2p_srv_upnp* %16, %struct.p2p_srv_upnp** %8, align 8
  %17 = load %struct.p2p_srv_upnp*, %struct.p2p_srv_upnp** %8, align 8
  %18 = icmp eq %struct.p2p_srv_upnp* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %45

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.p2p_srv_upnp*, %struct.p2p_srv_upnp** %8, align 8
  %23 = getelementptr inbounds %struct.p2p_srv_upnp, %struct.p2p_srv_upnp* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @os_strdup(i8* %24)
  %26 = load %struct.p2p_srv_upnp*, %struct.p2p_srv_upnp** %8, align 8
  %27 = getelementptr inbounds %struct.p2p_srv_upnp, %struct.p2p_srv_upnp* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.p2p_srv_upnp*, %struct.p2p_srv_upnp** %8, align 8
  %29 = getelementptr inbounds %struct.p2p_srv_upnp, %struct.p2p_srv_upnp* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.p2p_srv_upnp*, %struct.p2p_srv_upnp** %8, align 8
  %34 = call i32 @os_free(%struct.p2p_srv_upnp* %33)
  store i32 -1, i32* %4, align 4
  br label %45

35:                                               ; preds = %20
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.p2p_srv_upnp*, %struct.p2p_srv_upnp** %8, align 8
  %41 = getelementptr inbounds %struct.p2p_srv_upnp, %struct.p2p_srv_upnp* %40, i32 0, i32 0
  %42 = call i32 @dl_list_add(i32* %39, i32* %41)
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %44 = call i32 @wpas_p2p_sd_service_update(%struct.wpa_supplicant* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %35, %32, %19, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @wpas_p2p_service_get_upnp(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local %struct.p2p_srv_upnp* @os_zalloc(i32) #1

declare dso_local i32* @os_strdup(i8*) #1

declare dso_local i32 @os_free(%struct.p2p_srv_upnp*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @wpas_p2p_sd_service_update(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
