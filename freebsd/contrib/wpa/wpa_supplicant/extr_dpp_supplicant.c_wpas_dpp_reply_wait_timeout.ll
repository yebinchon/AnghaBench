; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_reply_wait_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_reply_wait_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.dpp_authentication*, i32 }
%struct.dpp_authentication = type { i32, i32, i64, i32 }
%struct.os_reltime = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"DPP: Reply wait timeout - wait_time=%u diff_ms=%u\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"DPP: No response received from responder - stopping initiation attempt\00", align 1
@DPP_EVENT_AUTH_INIT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"DPP: Continue Initiator channel iteration\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"DPP: Continue reply wait on channel %u MHz for %u ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @wpas_dpp_reply_wait_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_dpp_reply_wait_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.dpp_authentication*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.os_reltime, align 4
  %9 = alloca %struct.os_reltime, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %13, %struct.wpa_supplicant** %5, align 8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 2
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
  br label %120

25:                                               ; preds = %19
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 2000, %34 ]
  store i32 %36, i32* %10, align 4
  %37 = call i32 @os_get_reltime(%struct.os_reltime* %8)
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 3
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
  br i1 %55, label %56, label %75

56:                                               ; preds = %35
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = load i32, i32* @DPP_EVENT_AUTH_INIT_FAILED, align 4
  %66 = call i32 @wpa_msg(%struct.wpa_supplicant* %63, i32 %64, i32 %65)
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %68 = call i32 @offchannel_send_action_done(%struct.wpa_supplicant* %67)
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %70 = call i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant* %69)
  %71 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %72 = call i32 @dpp_auth_deinit(%struct.dpp_authentication* %71)
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 2
  store %struct.dpp_authentication* null, %struct.dpp_authentication** %74, align 8
  br label %120

75:                                               ; preds = %56, %35
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %83 = call i32 @offchannel_send_action_done(%struct.wpa_supplicant* %82)
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %85 = call i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant* %84)
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %87 = call i32 @wpas_dpp_auth_init_next(%struct.wpa_supplicant* %86)
  br label %120

88:                                               ; preds = %75
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sub i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %93 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %7, align 4
  %95 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %96 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ugt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load %struct.dpp_authentication*, %struct.dpp_authentication** %6, align 8
  %101 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %99, %88
  %104 = load i32, i32* @MSG_DEBUG, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %109 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @wpas_dpp_listen_start(%struct.wpa_supplicant* %110, i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = udiv i32 %113, 1000
  %115 = load i32, i32* %10, align 4
  %116 = urem i32 %115, 1000
  %117 = mul i32 %116, 1000
  %118 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %119 = call i32 @eloop_register_timeout(i32 %114, i32 %117, void (i8*, i8*)* @wpas_dpp_reply_wait_timeout, %struct.wpa_supplicant* %118, i32* null)
  br label %120

120:                                              ; preds = %103, %79, %60, %24
  ret void
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @os_reltime_sub(%struct.os_reltime*, i32*, %struct.os_reltime*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @offchannel_send_action_done(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant*) #1

declare dso_local i32 @dpp_auth_deinit(%struct.dpp_authentication*) #1

declare dso_local i32 @wpas_dpp_auth_init_next(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_dpp_listen_start(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
