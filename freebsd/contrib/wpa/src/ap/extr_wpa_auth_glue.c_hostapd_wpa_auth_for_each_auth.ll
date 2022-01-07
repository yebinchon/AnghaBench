; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_for_each_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_for_each_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type opaque
%struct.hostapd_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, %struct.wpa_auth_iface_iter_data*)* }
%struct.wpa_auth_iface_iter_data = type { i32 (%struct.wpa_authenticator.0*, i8*)*, i8* }
%struct.wpa_authenticator.0 = type opaque

@wpa_auth_iface_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32 (%struct.wpa_authenticator*, i8*)*, i8*)* @hostapd_wpa_auth_for_each_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_wpa_auth_for_each_auth(i8* %0, i32 (%struct.wpa_authenticator*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32 (%struct.wpa_authenticator*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hostapd_data*, align 8
  %9 = alloca %struct.wpa_auth_iface_iter_data, align 8
  store i8* %0, i8** %5, align 8
  store i32 (%struct.wpa_authenticator*, i8*)* %1, i32 (%struct.wpa_authenticator*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hostapd_data*
  store %struct.hostapd_data* %11, %struct.hostapd_data** %8, align 8
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_4__*, i32, %struct.wpa_auth_iface_iter_data*)*, i32 (%struct.TYPE_4__*, i32, %struct.wpa_auth_iface_iter_data*)** %24, align 8
  %26 = icmp eq i32 (%struct.TYPE_4__*, i32, %struct.wpa_auth_iface_iter_data*)* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18, %3
  store i32 -1, i32* %4, align 4
  br label %48

28:                                               ; preds = %18
  %29 = load i32 (%struct.wpa_authenticator*, i8*)*, i32 (%struct.wpa_authenticator*, i8*)** %6, align 8
  %30 = bitcast i32 (%struct.wpa_authenticator*, i8*)* %29 to i32 (%struct.wpa_authenticator.0*, i8*)*
  %31 = getelementptr inbounds %struct.wpa_auth_iface_iter_data, %struct.wpa_auth_iface_iter_data* %9, i32 0, i32 0
  store i32 (%struct.wpa_authenticator.0*, i8*)* %30, i32 (%struct.wpa_authenticator.0*, i8*)** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds %struct.wpa_auth_iface_iter_data, %struct.wpa_auth_iface_iter_data* %9, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %35 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_4__*, i32, %struct.wpa_auth_iface_iter_data*)*, i32 (%struct.TYPE_4__*, i32, %struct.wpa_auth_iface_iter_data*)** %39, align 8
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* @wpa_auth_iface_iter, align 4
  %47 = call i32 %40(%struct.TYPE_4__* %45, i32 %46, %struct.wpa_auth_iface_iter_data* %9)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %28, %27
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
