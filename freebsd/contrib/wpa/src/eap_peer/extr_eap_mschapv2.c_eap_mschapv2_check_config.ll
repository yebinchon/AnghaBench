; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_check_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_mschapv2.c_eap_mschapv2_check_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP-MSCHAPV2: Identity not configured\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"EAP-MSCHAPV2: Password not configured\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*)* @eap_mschapv2_check_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_mschapv2_check_config(%struct.eap_sm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  %5 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %6 = call i32* @eap_get_config_identity(%struct.eap_sm* %5, i64* %4)
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @MSG_INFO, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %12 = call i32 @eap_sm_request_identity(%struct.eap_sm* %11)
  store i32 -1, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %15 = call i32* @eap_get_config_password(%struct.eap_sm* %14, i64* %4)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %21 = call i32 @eap_sm_request_password(%struct.eap_sm* %20)
  store i32 -1, i32* %2, align 4
  br label %23

22:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %17, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_sm_request_identity(%struct.eap_sm*) #1

declare dso_local i32* @eap_get_config_password(%struct.eap_sm*, i64*) #1

declare dso_local i32 @eap_sm_request_password(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
