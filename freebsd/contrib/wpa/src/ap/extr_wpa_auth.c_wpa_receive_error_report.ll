; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_receive_error_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_receive_error_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_state_machine = type { i64, i32, i32 }

@LOGGER_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"received EAPOL-Key Error Request (STA detected Michael MIC failure (group=%d))\00", align 1
@WPA_CIPHER_TKIP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"ignore Michael MIC failure report since group cipher is not TKIP\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"ignore Michael MIC failure report since pairwise cipher is not TKIP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_authenticator*, %struct.wpa_state_machine*, i32)* @wpa_receive_error_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_receive_error_report(%struct.wpa_authenticator* %0, %struct.wpa_state_machine* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_authenticator*, align 8
  %6 = alloca %struct.wpa_state_machine*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %5, align 8
  store %struct.wpa_state_machine* %1, %struct.wpa_state_machine** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %9 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %6, align 8
  %10 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LOGGER_INFO, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @wpa_auth_vlogger(%struct.wpa_authenticator* %8, i32 %11, i32 %12, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WPA_CIPHER_TKIP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %26 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %6, align 8
  %27 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LOGGER_INFO, align 4
  %30 = call i32 @wpa_auth_logger(%struct.wpa_authenticator* %25, i32 %28, i32 %29, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %65

31:                                               ; preds = %17, %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WPA_CIPHER_TKIP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %42 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %6, align 8
  %43 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LOGGER_INFO, align 4
  %46 = call i32 @wpa_auth_logger(%struct.wpa_authenticator* %41, i32 %44, i32 %45, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  br label %64

47:                                               ; preds = %34, %31
  %48 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %49 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %6, align 8
  %50 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @wpa_auth_mic_failure_report(%struct.wpa_authenticator* %48, i32 %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %68

55:                                               ; preds = %47
  %56 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %6, align 8
  %57 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %61 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %55, %40
  br label %65

65:                                               ; preds = %64, %24
  %66 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %6, align 8
  %67 = call i32 @wpa_request_new_ptk(%struct.wpa_state_machine* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @wpa_auth_vlogger(%struct.wpa_authenticator*, i32, i32, i8*, i32) #1

declare dso_local i32 @wpa_auth_logger(%struct.wpa_authenticator*, i32, i32, i8*) #1

declare dso_local i64 @wpa_auth_mic_failure_report(%struct.wpa_authenticator*, i32) #1

declare dso_local i32 @wpa_request_new_ptk(%struct.wpa_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
