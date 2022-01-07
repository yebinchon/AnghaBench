; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_wpa_init_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_wpa_init_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_test_data = type { i32*, %struct.TYPE_7__*, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__, %struct.hostapd_radius_server*, %struct.hostapd_radius_server* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hostapd_radius_server = type { i32, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32 }
%struct.wpa_supplicant = type { i32*, i32, i32, %struct.eapol_test_data*, i32* }

@eapol_test_drv_ops = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid IP address '%s'\00", align 1
@RADIUS_AUTH = common dso_local global i32 0, align 4
@ieee802_1x_receive_auth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_test_data*, %struct.wpa_supplicant*, i8*, i32, i8*, i8*, i8*)* @wpa_init_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_init_conf(%struct.eapol_test_data* %0, %struct.wpa_supplicant* %1, i8* %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.eapol_test_data*, align 8
  %9 = alloca %struct.wpa_supplicant*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.hostapd_radius_server*, align 8
  %16 = alloca i32, align 4
  store %struct.eapol_test_data* %0, %struct.eapol_test_data** %8, align 8
  store %struct.wpa_supplicant* %1, %struct.wpa_supplicant** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 4
  store i32* @eapol_test_drv_ops, i32** %18, align 8
  %19 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 3
  store %struct.eapol_test_data* %19, %struct.eapol_test_data** %21, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  store i32 1, i32* %25, align 4
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %30 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @os_memcpy(i32 %28, i32 %31, i32 %32)
  %34 = call i32 @htonl(i32 2130706433)
  %35 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %36 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = call i32 @os_strlcpy(i32 %40, i8* %41, i32 4)
  %43 = call i8* @os_zalloc(i32 4)
  %44 = bitcast i8* %43 to %struct.TYPE_7__*
  %45 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %46 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %45, i32 0, i32 1
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %46, align 8
  %47 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %48 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %54 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = call i8* @os_zalloc(i32 24)
  %58 = bitcast i8* %57 to %struct.hostapd_radius_server*
  store %struct.hostapd_radius_server* %58, %struct.hostapd_radius_server** %15, align 8
  %59 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %15, align 8
  %60 = icmp ne %struct.hostapd_radius_server* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %15, align 8
  %65 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %64, i32 0, i32 3
  %66 = call i64 @hostapd_parse_ip_addr(i8* %63, %struct.TYPE_8__* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %7
  %69 = load i32, i32* @MSG_ERROR, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %70)
  %72 = call i32 @assert(i32 0)
  br label %73

73:                                               ; preds = %68, %7
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %15, align 8
  %76 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i64 @os_strdup(i8* %77)
  %79 = inttoptr i64 %78 to i32*
  %80 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %15, align 8
  %81 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %80, i32 0, i32 2
  store i32* %79, i32** %81, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @os_strlen(i8* %82)
  %84 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %15, align 8
  %85 = getelementptr inbounds %struct.hostapd_radius_server, %struct.hostapd_radius_server* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %15, align 8
  %87 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %88 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 5
  store %struct.hostapd_radius_server* %86, %struct.hostapd_radius_server** %90, align 8
  %91 = load %struct.hostapd_radius_server*, %struct.hostapd_radius_server** %15, align 8
  %92 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %93 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  store %struct.hostapd_radius_server* %91, %struct.hostapd_radius_server** %95, align 8
  %96 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %97 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  %100 = load i8*, i8** %13, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %121

102:                                              ; preds = %73
  %103 = load i8*, i8** %13, align 8
  %104 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %105 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = call i64 @hostapd_parse_ip_addr(i8* %103, %struct.TYPE_8__* %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %112 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  store i32 1, i32* %114, align 8
  br label %120

115:                                              ; preds = %102
  %116 = load i32, i32* @MSG_ERROR, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 @wpa_printf(i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %117)
  %119 = call i32 @assert(i32 0)
  br label %120

120:                                              ; preds = %115, %110
  br label %121

121:                                              ; preds = %120, %73
  %122 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  %123 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %124 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = call i32* @radius_client_init(%struct.wpa_supplicant* %122, %struct.TYPE_7__* %125)
  %127 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %128 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %127, i32 0, i32 0
  store i32* %126, i32** %128, align 8
  %129 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %130 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %136 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @RADIUS_AUTH, align 4
  %139 = load i32, i32* @ieee802_1x_receive_auth, align 4
  %140 = load %struct.eapol_test_data*, %struct.eapol_test_data** %8, align 8
  %141 = call i32 @radius_client_register(i32* %137, i32 %138, i32 %139, %struct.eapol_test_data* %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  ret void
}

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @hostapd_parse_ip_addr(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i64 @os_strdup(i8*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32* @radius_client_init(%struct.wpa_supplicant*, %struct.TYPE_7__*) #1

declare dso_local i32 @radius_client_register(i32*, i32, i32, %struct.eapol_test_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
