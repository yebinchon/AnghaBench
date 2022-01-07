; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_remove_ptk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_remove_ptk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { i32, i8*, i32, i32, i8* }

@FALSE = common dso_local global i8* null, align 8
@WPA_ALG_NONE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RSN: PTK removal from the driver failed\00", align 1
@wpa_rekey_ptk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_remove_ptk(%struct.wpa_state_machine* %0) #0 {
  %2 = alloca %struct.wpa_state_machine*, align 8
  store %struct.wpa_state_machine* %0, %struct.wpa_state_machine** %2, align 8
  %3 = load i8*, i8** @FALSE, align 8
  %4 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %5 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %4, i32 0, i32 4
  store i8* %3, i8** %5, align 8
  %6 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %6, i32 0, i32 3
  %8 = call i32 @os_memset(i32* %7, i32 0, i32 4)
  %9 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WPA_ALG_NONE, align 4
  %13 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @wpa_auth_set_key(i32 %11, i32 0, i32 %12, i32 %15, i32 0, i32* null, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i8*, i8** @FALSE, align 8
  %23 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %24 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @wpa_rekey_ptk, align 4
  %26 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %27 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %2, align 8
  %30 = call i32 @eloop_cancel_timeout(i32 %25, i32 %28, %struct.wpa_state_machine* %29)
  ret void
}

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i64 @wpa_auth_set_key(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, i32, %struct.wpa_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
