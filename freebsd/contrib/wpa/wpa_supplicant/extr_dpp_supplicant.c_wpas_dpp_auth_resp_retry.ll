; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_auth_resp_retry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_auth_resp_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.dpp_authentication* }
%struct.dpp_authentication = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"DPP: No confirm received from initiator - stopping exchange\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"DPP: Schedule retransmission of Authentication Response frame in %u ms\00", align 1
@wpas_dpp_auth_resp_retry_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpas_dpp_auth_resp_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_dpp_auth_resp_retry(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.dpp_authentication*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 2
  %8 = load %struct.dpp_authentication*, %struct.dpp_authentication** %7, align 8
  store %struct.dpp_authentication* %8, %struct.dpp_authentication** %3, align 8
  %9 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %10 = icmp ne %struct.dpp_authentication* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %13 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  br label %73

17:                                               ; preds = %11
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %17
  store i32 5, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %29 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.dpp_authentication*, %struct.dpp_authentication** %3, align 8
  %33 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %41 = call i32 @offchannel_send_action_done(%struct.wpa_supplicant* %40)
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 2
  %44 = load %struct.dpp_authentication*, %struct.dpp_authentication** %43, align 8
  %45 = call i32 @dpp_auth_deinit(%struct.dpp_authentication* %44)
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 2
  store %struct.dpp_authentication* null, %struct.dpp_authentication** %47, align 8
  br label %73

48:                                               ; preds = %27
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %50 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %48
  store i32 1000, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @wpas_dpp_auth_resp_retry_timeout, align 4
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %64 = call i32 @eloop_cancel_timeout(i32 %62, %struct.wpa_supplicant* %63, i32* null)
  %65 = load i32, i32* %4, align 4
  %66 = udiv i32 %65, 1000
  %67 = load i32, i32* %4, align 4
  %68 = urem i32 %67, 1000
  %69 = mul i32 %68, 1000
  %70 = load i32, i32* @wpas_dpp_auth_resp_retry_timeout, align 4
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %72 = call i32 @eloop_register_timeout(i32 %66, i32 %69, i32 %70, %struct.wpa_supplicant* %71, i32* null)
  br label %73

73:                                               ; preds = %58, %37, %16
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @offchannel_send_action_done(%struct.wpa_supplicant*) #1

declare dso_local i32 @dpp_auth_deinit(%struct.dpp_authentication*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
