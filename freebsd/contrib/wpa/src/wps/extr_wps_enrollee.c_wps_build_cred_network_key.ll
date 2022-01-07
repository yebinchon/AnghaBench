; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_cred_network_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_cred_network_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, i8*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.wpabuf = type { i32 }

@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"WPS: Could not generate random PSK\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"WPS: Generated per-device PSK\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"WPS:  * Network Key (len=%u)\00", align 1
@ATTR_NETWORK_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_build_cred_network_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_cred_network_key(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca [65 x i8], align 16
  %7 = alloca [32 x i32], align 16
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %8 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %9 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %14 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %2
  %19 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %79

25:                                               ; preds = %18
  %26 = call i32 (...) @random_pool_ready()
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %30 = call i64 @random_get_bytes(i32* %29, i32 128)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %25
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %109

35:                                               ; preds = %28
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %38 = call i32 @wpa_hexdump_key(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %37, i32 128)
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %41 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = mul i32 %43, 2
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds [65 x i8], [65 x i8]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %48 = call i32 @wpa_snprintf_hex(i8* %46, i32 65, i32* %47, i32 128)
  %49 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %50 = load i32, i32* @ATTR_NETWORK_KEY, align 4
  %51 = call i32 @wpabuf_put_be16(%struct.wpabuf* %49, i32 %50)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %53 = call i32 @wpabuf_put_be16(%struct.wpabuf* %52, i32 256)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %55 = getelementptr inbounds [65 x i8], [65 x i8]* %6, i64 0, i64 0
  %56 = call i32 @wpabuf_put_data(%struct.wpabuf* %54, i8* %55, i32 256)
  %57 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %58 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %35
  %64 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %65 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %70 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %74 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %77 = call i32 @wps_cb_new_psk(i64 %68, i32 %72, i32 %75, i32* %76, i32 128)
  br label %78

78:                                               ; preds = %63, %35
  store i32 0, i32* %3, align 4
  br label %109

79:                                               ; preds = %18, %2
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %82 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %88 = load i32, i32* @ATTR_NETWORK_KEY, align 4
  %89 = call i32 @wpabuf_put_be16(%struct.wpabuf* %87, i32 %88)
  %90 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %91 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %92 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @wpabuf_put_be16(%struct.wpabuf* %90, i32 %95)
  %97 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %98 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %99 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %104 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @wpabuf_put_data(%struct.wpabuf* %97, i8* %102, i32 %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %79, %78, %32
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @random_pool_ready(...) #1

declare dso_local i64 @random_get_bytes(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i32*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @wps_cb_new_psk(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
