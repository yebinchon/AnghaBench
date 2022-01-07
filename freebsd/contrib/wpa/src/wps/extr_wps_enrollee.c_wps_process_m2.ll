; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_m2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_m2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i64, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M2\00", align 1
@RECV_M2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M2\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"WPS: AP Setup is locked - refuse registration of a new Registrar\00", align 1
@WPS_CFG_SETUP_LOCKED = common dso_local global i32 0, align 4
@SEND_M3 = common dso_local global i64 0, align 8
@WPS_MSG_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m2(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wps_parse_attr*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wps_parse_attr* %2, %struct.wps_parse_attr** %7, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %11 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RECV_M2, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %18 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i8*, i8** @SEND_WSC_NACK, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %24 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %25, i32* %4, align 4
  br label %132

26:                                               ; preds = %3
  %27 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %28 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %29 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @wps_process_registrar_nonce(%struct.wps_data* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %26
  %34 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %35 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %36 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @wps_process_enrollee_nonce(%struct.wps_data* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %33
  %41 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %42 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %43 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @wps_process_uuid_r(%struct.wps_data* %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %49 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %50 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @wps_process_dev_pw_id(%struct.wps_data* %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47, %40, %33, %26
  %55 = load i8*, i8** @SEND_WSC_NACK, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %58 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %59, i32* %4, align 4
  br label %132

60:                                               ; preds = %47
  %61 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %62 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %61, i32 0, i32 5
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %60
  %68 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %69 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %68, i32 0, i32 5
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %76 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %75, i32 0, i32 5
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 2
  br i1 %80, label %86, label %81

81:                                               ; preds = %74, %67
  %82 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %83 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %81, %74
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @WPS_CFG_SETUP_LOCKED, align 4
  %90 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load i8*, i8** @SEND_WSC_NACK, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %95 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %96, i32* %4, align 4
  br label %132

97:                                               ; preds = %81, %60
  %98 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %99 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %100 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %103 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @wps_process_pubkey(%struct.wps_data* %98, i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %97
  %108 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %109 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %110 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %113 = call i64 @wps_process_authenticator(%struct.wps_data* %108, i32 %111, %struct.wpabuf* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %107
  %116 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %117 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %116, i32 0, i32 2
  %118 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %119 = call i64 @wps_process_device_attrs(i32* %117, %struct.wps_parse_attr* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115, %107, %97
  %122 = load i8*, i8** @SEND_WSC_NACK, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %125 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %126, i32* %4, align 4
  br label %132

127:                                              ; preds = %115
  %128 = load i64, i64* @SEND_M3, align 8
  %129 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %130 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %127, %121, %86, %54, %15
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_process_registrar_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_enrollee_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_uuid_r(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_dev_pw_id(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_pubkey(%struct.wps_data*, i32, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local i64 @wps_process_device_attrs(i32*, %struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
