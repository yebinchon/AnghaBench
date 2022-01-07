; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_sm_ptk_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_sm_ptk_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { i64, i32, i32 }

@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"WPA: Failed to get random data for ANonce\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"WPA: Assign new ANonce\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_state_machine*)* @wpa_auth_sm_ptk_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_auth_sm_ptk_update(%struct.wpa_state_machine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_state_machine*, align 8
  store %struct.wpa_state_machine* %0, %struct.wpa_state_machine** %3, align 8
  %4 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %3, align 8
  %5 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @WPA_NONCE_LEN, align 4
  %8 = call i64 @random_get_bytes(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @MSG_ERROR, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @TRUE, align 4
  %14 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %3, align 8
  %15 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  store i32 -1, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %3, align 8
  %19 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @WPA_NONCE_LEN, align 4
  %22 = call i32 @wpa_hexdump(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %16, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
