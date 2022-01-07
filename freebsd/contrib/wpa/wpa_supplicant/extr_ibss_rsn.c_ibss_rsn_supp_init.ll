; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_supp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_supp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibss_rsn_peer = type { i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_sm_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ibss_rsn_peer* }

@supp_set_state = common dso_local global i32 0, align 4
@supp_get_state = common dso_local global i32 0, align 4
@supp_ether_send = common dso_local global i32 0, align 4
@supp_get_beacon_ie = common dso_local global i32 0, align 4
@supp_alloc_eapol = common dso_local global i32 0, align 4
@supp_set_key = common dso_local global i32 0, align 4
@supp_get_network_ctx = common dso_local global i32 0, align 4
@supp_mlme_setprotection = common dso_local global i32 0, align 4
@supp_cancel_auth_timeout = common dso_local global i32 0, align 4
@supp_deauthenticate = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"SUPP: wpa_sm_init() failed\00", align 1
@WPA_PARAM_RSN_ENABLED = common dso_local global i32 0, align 4
@WPA_PARAM_PROTO = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@WPA_PARAM_PAIRWISE = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_PARAM_GROUP = common dso_local global i32 0, align 4
@WPA_PARAM_KEY_MGMT = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@PMK_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"SUPP: wpa_sm_set_assoc_wpa_ie_default() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibss_rsn_peer*, i32*, i32*)* @ibss_rsn_supp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibss_rsn_supp_init(%struct.ibss_rsn_peer* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibss_rsn_peer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wpa_sm_ctx*, align 8
  store %struct.ibss_rsn_peer* %0, %struct.ibss_rsn_peer** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call %struct.wpa_sm_ctx* @os_zalloc(i32 56)
  store %struct.wpa_sm_ctx* %9, %struct.wpa_sm_ctx** %8, align 8
  %10 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %11 = icmp eq %struct.wpa_sm_ctx* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %131

13:                                               ; preds = %3
  %14 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %15 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %15, i32 0, i32 11
  store %struct.ibss_rsn_peer* %14, %struct.ibss_rsn_peer** %16, align 8
  %17 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %18 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @supp_set_state, align 4
  %25 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @supp_get_state, align 4
  %28 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @supp_ether_send, align 4
  %31 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @supp_get_beacon_ie, align 4
  %34 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @supp_alloc_eapol, align 4
  %37 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @supp_set_key, align 4
  %40 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @supp_get_network_ctx, align 4
  %43 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @supp_mlme_setprotection, align 4
  %46 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @supp_cancel_auth_timeout, align 4
  %49 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @supp_deauthenticate, align 4
  %52 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %55 = call i32* @wpa_sm_init(%struct.wpa_sm_ctx* %54)
  %56 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %57 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %59 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %13
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %8, align 8
  %66 = call i32 @os_free(%struct.wpa_sm_ctx* %65)
  store i32 -1, i32* %4, align 4
  br label %131

67:                                               ; preds = %13
  %68 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %69 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @wpa_sm_set_own_addr(i32* %70, i32* %71)
  %73 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %74 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @WPA_PARAM_RSN_ENABLED, align 4
  %77 = call i32 @wpa_sm_set_param(i32* %75, i32 %76, i32 1)
  %78 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %79 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @WPA_PARAM_PROTO, align 4
  %82 = load i32, i32* @WPA_PROTO_RSN, align 4
  %83 = call i32 @wpa_sm_set_param(i32* %80, i32 %81, i32 %82)
  %84 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %85 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @WPA_PARAM_PAIRWISE, align 4
  %88 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %89 = call i32 @wpa_sm_set_param(i32* %86, i32 %87, i32 %88)
  %90 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %91 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @WPA_PARAM_GROUP, align 4
  %94 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %95 = call i32 @wpa_sm_set_param(i32* %92, i32 %93, i32 %94)
  %96 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %97 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @WPA_PARAM_KEY_MGMT, align 4
  %100 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %101 = call i32 @wpa_sm_set_param(i32* %98, i32 %99, i32 %100)
  %102 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %103 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @PMK_LEN, align 4
  %107 = call i32 @wpa_sm_set_pmk(i32* %104, i32* %105, i32 %106, i32* null, i32* null)
  %108 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %109 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %108, i32 0, i32 0
  store i32 4, i32* %109, align 8
  %110 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %111 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %114 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %117 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %116, i32 0, i32 0
  %118 = call i64 @wpa_sm_set_assoc_wpa_ie_default(i32* %112, i32 %115, i32* %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %67
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = call i32 @wpa_printf(i32 %121, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %131

123:                                              ; preds = %67
  %124 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %125 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %5, align 8
  %128 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @wpa_sm_notify_assoc(i32* %126, i32 %129)
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %123, %120, %62, %12
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.wpa_sm_ctx* @os_zalloc(i32) #1

declare dso_local i32* @wpa_sm_init(%struct.wpa_sm_ctx*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.wpa_sm_ctx*) #1

declare dso_local i32 @wpa_sm_set_own_addr(i32*, i32*) #1

declare dso_local i32 @wpa_sm_set_param(i32*, i32, i32) #1

declare dso_local i32 @wpa_sm_set_pmk(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @wpa_sm_set_assoc_wpa_ie_default(i32*, i32, i32*) #1

declare dso_local i32 @wpa_sm_notify_assoc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
