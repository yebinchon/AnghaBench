; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_start_p2p_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_start_p2p_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }
%struct.wpa_ssid = type { i32, i32, i32, i32, i32, i64, i32*, i32*, i32, i32, i64, i8*, i8*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP = common dso_local global i8* null, align 8
@WPA_CIPHER_CCMP = common dso_local global i8* null, align 8
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@wpas_p2p_group_formation_timeout = common dso_local global i32 0, align 4
@P2P_MAX_INITIAL_CONN_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_ssid*, i32, i32, i32)* @wpas_start_p2p_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_start_p2p_client(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.wpa_ssid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.wpa_supplicant* @wpas_p2p_get_group_iface(%struct.wpa_supplicant* %13, i32 %14, i32 0)
  store %struct.wpa_supplicant* %15, %struct.wpa_supplicant** %7, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %17 = icmp eq %struct.wpa_supplicant* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %176

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 9
  %25 = call i32 @os_get_reltime(i32* %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 8
  store i32* null, i32** %28, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %30 = call i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant* %29)
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.wpa_ssid* @wpa_config_add_network(i32 %33)
  store %struct.wpa_ssid* %34, %struct.wpa_ssid** %12, align 8
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %36 = icmp eq %struct.wpa_ssid* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %176

38:                                               ; preds = %26
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @os_memset(i32 %41, i32 0, i32 %42)
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %45 = call i32 @wpa_config_set_network_defaults(%struct.wpa_ssid* %44)
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %47 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @WPA_PROTO_RSN, align 4
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %50 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 8
  %51 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %52 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %51, i32 0, i32 10
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %55 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %54, i32 0, i32 10
  store i64 %53, i64* %55, align 8
  %56 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %57 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %56, i32 0, i32 10
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %38
  %61 = load i8*, i8** @WPA_CIPHER_GCMP, align 8
  br label %64

62:                                               ; preds = %38
  %63 = load i8*, i8** @WPA_CIPHER_CCMP, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i8* [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %67 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %66, i32 0, i32 12
  store i8* %65, i8** %67, align 8
  %68 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %69 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i8*, i8** @WPA_CIPHER_GCMP, align 8
  br label %76

74:                                               ; preds = %64
  %75 = load i8*, i8** @WPA_CIPHER_CCMP, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i8* [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %79 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %78, i32 0, i32 11
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %81 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %82 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %84 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32* @os_malloc(i32 %85)
  %87 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %88 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %87, i32 0, i32 7
  store i32* %86, i32** %88, align 8
  %89 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %90 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %76
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %95 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %98 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @wpa_config_remove_network(i32 %96, i32 %99)
  store i32 -1, i32* %6, align 4
  br label %176

101:                                              ; preds = %76
  %102 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %103 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %102, i32 0, i32 7
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %106 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %105, i32 0, i32 7
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %109 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @os_memcpy(i32* %104, i32* %107, i32 %110)
  %112 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %113 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %116 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %118 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %120 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %119, i32 0, i32 3
  store i32 1, i32* %120, align 4
  %121 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %122 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %101
  %126 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %127 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %126, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %130 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %129, i32 0, i32 6
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @os_memcpy(i32* %128, i32* %131, i32 32)
  %133 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %134 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %133, i32 0, i32 4
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %125, %101
  %136 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %137 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %142 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @os_strdup(i64 %143)
  %145 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %146 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %145, i32 0, i32 5
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %140, %135
  %148 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %149 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  %150 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %151 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %154 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %156 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %155, i32 0, i32 5
  store i64 0, i64* %156, align 8
  %157 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %158 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %159 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %158, i32 0, i32 4
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store %struct.wpa_supplicant* %157, %struct.wpa_supplicant** %161, align 8
  %162 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %163 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %164 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @eloop_cancel_timeout(i32 %162, i32 %165, i32* null)
  %167 = load i32, i32* @P2P_MAX_INITIAL_CONN_WAIT, align 4
  %168 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %169 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %170 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @eloop_register_timeout(i32 %167, i32 0, i32 %168, i32 %171, i32* null)
  %173 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %174 = load %struct.wpa_ssid*, %struct.wpa_ssid** %12, align 8
  %175 = call i32 @wpa_supplicant_select_network(%struct.wpa_supplicant* %173, %struct.wpa_ssid* %174)
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %147, %93, %37, %18
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local %struct.wpa_supplicant* @wpas_p2p_get_group_iface(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @os_get_reltime(i32*) #1

declare dso_local i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant*) #1

declare dso_local %struct.wpa_ssid* @wpa_config_add_network(i32) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @wpa_config_set_network_defaults(%struct.wpa_ssid*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @wpa_config_remove_network(i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i64 @os_strdup(i64) #1

declare dso_local i32 @eloop_cancel_timeout(i32, i32, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wpa_supplicant_select_network(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
