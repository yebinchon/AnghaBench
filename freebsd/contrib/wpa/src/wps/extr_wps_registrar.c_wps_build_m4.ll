; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_m4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_build_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS: Building Message M4\00", align 1
@WPS_M4 = common dso_local global i32 0, align 4
@RECV_M5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m4(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %9 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %10 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %13 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @wps_derive_psk(%struct.wps_data* %8, i32 %11, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %86

18:                                               ; preds = %1
  %19 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %19, %struct.wpabuf** %5, align 8
  %20 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %21 = icmp eq %struct.wpabuf* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %86

23:                                               ; preds = %18
  %24 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %24, %struct.wpabuf** %4, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %26 = icmp eq %struct.wpabuf* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %29 = call i32 @wpabuf_free(%struct.wpabuf* %28)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %86

30:                                               ; preds = %23
  %31 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %32 = call i64 @wps_build_version(%struct.wpabuf* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %74, label %34

34:                                               ; preds = %30
  %35 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %36 = load i32, i32* @WPS_M4, align 4
  %37 = call i64 @wps_build_msg_type(%struct.wpabuf* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %34
  %40 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %42 = call i64 @wps_build_enrollee_nonce(%struct.wps_data* %40, %struct.wpabuf* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %74, label %44

44:                                               ; preds = %39
  %45 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %47 = call i64 @wps_build_r_hash(%struct.wps_data* %45, %struct.wpabuf* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %44
  %50 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = call i64 @wps_build_r_snonce1(%struct.wps_data* %50, %struct.wpabuf* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %49
  %55 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %56 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %57 = call i64 @wps_build_key_wrap_auth(%struct.wps_data* %55, %struct.wpabuf* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %54
  %60 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %61 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %62 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %63 = call i64 @wps_build_encr_settings(%struct.wps_data* %60, %struct.wpabuf* %61, %struct.wpabuf* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %67 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %66, i32 0, i32* null, i32 0, i32 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %71 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %72 = call i64 @wps_build_authenticator(%struct.wps_data* %70, %struct.wpabuf* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69, %65, %59, %54, %49, %44, %39, %34, %30
  %75 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %76 = call i32 @wpabuf_clear_free(%struct.wpabuf* %75)
  %77 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %78 = call i32 @wpabuf_free(%struct.wpabuf* %77)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %86

79:                                               ; preds = %69
  %80 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %81 = call i32 @wpabuf_clear_free(%struct.wpabuf* %80)
  %82 = load i32, i32* @RECV_M5, align 4
  %83 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %84 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %85, %struct.wpabuf** %2, align 8
  br label %86

86:                                               ; preds = %79, %74, %27, %22, %17
  %87 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %87
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_derive_psk(%struct.wps_data*, i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_enrollee_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_r_hash(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_r_snonce1(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_encr_settings(%struct.wps_data*, %struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32, i32) #1

declare dso_local i64 @wps_build_authenticator(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
