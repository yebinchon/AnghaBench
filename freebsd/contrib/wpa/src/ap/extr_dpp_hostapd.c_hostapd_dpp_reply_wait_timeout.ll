; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dpp_hostapd.c_hostapd_dpp_reply_wait_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dpp_hostapd.c_hostapd_dpp_reply_wait_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i32, %struct.TYPE_2__*, %struct.dpp_authentication*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dpp_authentication = type { i32, i32, i64, i32 }
%struct.os_reltime = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"DPP: Reply wait timeout - wait_time=%u diff_ms=%u\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"DPP: No response received from responder - stopping initiation attempt\00", align 1
@DPP_EVENT_AUTH_INIT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"DPP: Continue Initiator channel iteration\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"DPP: Continue reply wait on channel %u MHz for %u ms\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"DPP: Listen operation on non-operating channel (%d MHz) is not yet supported (operating channel: %d MHz)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @hostapd_dpp_reply_wait_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_dpp_reply_wait_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.dpp_authentication*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.os_reltime, align 4
  %9 = alloca %struct.os_reltime, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.hostapd_data*
  store %struct.hostapd_data* %13, %struct.hostapd_data** %5, align 8
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 3
  %16 = load %struct.dpp_authentication*, %struct.dpp_authentication** %15, align 8
  store %struct.dpp_authentication* %16, %struct.dpp_authentication** %6, align 8
  %17 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %18 = icmp ne %struct.dpp_authentication* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %21 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %2
  br label %143

25:                                               ; preds = %19
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %27 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 2000, %34 ]
  store i32 %36, i32* %10, align 4
  %37 = call i32 @os_get_reltime(%struct.os_reltime* %8)
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %39 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %38, i32 0, i32 5
  %40 = call i32 @os_reltime_sub(%struct.os_reltime* %8, i32* %39, %struct.os_reltime* %9)
  %41 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 1000
  %44 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 1000
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %53 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %35
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %64 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MSG_INFO, align 4
  %67 = load i32, i32* @DPP_EVENT_AUTH_INIT_FAILED, align 4
  %68 = call i32 @wpa_msg(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %70 = call i32 @hostapd_drv_send_action_cancel_wait(%struct.hostapd_data* %69)
  %71 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %72 = call i32 @hostapd_dpp_listen_stop(%struct.hostapd_data* %71)
  %73 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %74 = call i32 @dpp_auth_deinit(%struct.dpp_authentication* %73)
  %75 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %76 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %75, i32 0, i32 3
  store %struct.dpp_authentication* null, %struct.dpp_authentication** %76, align 8
  br label %143

77:                                               ; preds = %56, %35
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp uge i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %85 = call i32 @hostapd_drv_send_action_cancel_wait(%struct.hostapd_data* %84)
  %86 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %87 = call i32 @hostapd_dpp_listen_stop(%struct.hostapd_data* %86)
  %88 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %89 = call i32 @hostapd_dpp_auth_init_next(%struct.hostapd_data* %88)
  br label %143

90:                                               ; preds = %77
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %95 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %7, align 4
  %97 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %98 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ugt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %103 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %90
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %111 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %114 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %112, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %105
  %120 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %121 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ugt i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load i32, i32* @MSG_INFO, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %130 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %129, i32 0, i32 2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 %128, i32 %133)
  br label %135

135:                                              ; preds = %126, %119, %105
  %136 = load i32, i32* %10, align 4
  %137 = udiv i32 %136, 1000
  %138 = load i32, i32* %10, align 4
  %139 = urem i32 %138, 1000
  %140 = mul i32 %139, 1000
  %141 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %142 = call i32 @eloop_register_timeout(i32 %137, i32 %140, void (i8*, i8*)* @hostapd_dpp_reply_wait_timeout, %struct.hostapd_data* %141, i32* null)
  br label %143

143:                                              ; preds = %135, %81, %60, %24
  ret void
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_reltime_sub(%struct.os_reltime*, i32*, %struct.os_reltime*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_msg(i32, i32, i32) #1

declare dso_local i32 @hostapd_drv_send_action_cancel_wait(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_dpp_listen_stop(%struct.hostapd_data*) #1

declare dso_local i32 @dpp_auth_deinit(%struct.dpp_authentication*) #1

declare dso_local i32 @hostapd_dpp_auth_init_next(%struct.hostapd_data*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.hostapd_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
