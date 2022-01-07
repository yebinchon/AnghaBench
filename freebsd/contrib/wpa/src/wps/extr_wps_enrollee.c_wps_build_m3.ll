; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_m3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_build_m3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS: Building Message M3\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"WPS: No Device Password available\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"WPS: Not enough entropy in random pool to proceed - do not allow AP PIN to be used\00", align 1
@WPS_M3 = common dso_local global i32 0, align 4
@RECV_M4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m3(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %8 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %79

14:                                               ; preds = %1
  %15 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %16 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %17 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @wps_derive_psk(%struct.wps_data* %15, i32* %18, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %79

25:                                               ; preds = %14
  %26 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %27 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = call i32 (...) @random_pool_ready()
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %79

38:                                               ; preds = %32, %25
  %39 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %39, %struct.wpabuf** %4, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %41 = icmp eq %struct.wpabuf* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %79

43:                                               ; preds = %38
  %44 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %45 = call i64 @wps_build_version(%struct.wpabuf* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %43
  %48 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %49 = load i32, i32* @WPS_M3, align 4
  %50 = call i64 @wps_build_msg_type(%struct.wpabuf* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %47
  %53 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %54 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %55 = call i64 @wps_build_registrar_nonce(%struct.wps_data* %53, %struct.wpabuf* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %52
  %58 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %60 = call i64 @wps_build_e_hash(%struct.wps_data* %58, %struct.wpabuf* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %64 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %63, i32 0, i32* null, i32 0, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %68 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %69 = call i64 @wps_build_authenticator(%struct.wps_data* %67, %struct.wpabuf* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %62, %57, %52, %47, %43
  %72 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %73 = call i32 @wpabuf_free(%struct.wpabuf* %72)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %79

74:                                               ; preds = %66
  %75 = load i32, i32* @RECV_M4, align 4
  %76 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %77 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %78, %struct.wpabuf** %2, align 8
  br label %79

79:                                               ; preds = %74, %71, %42, %35, %24, %11
  %80 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %80
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_derive_psk(%struct.wps_data*, i32*, i32) #1

declare dso_local i32 @random_pool_ready(...) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_registrar_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_e_hash(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

declare dso_local i64 @wps_build_authenticator(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
