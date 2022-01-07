; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_init_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_init_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.wpa_group* }
%struct.wpa_group = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"WPA: Start group state machine to set initial keys\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WPA_GROUP_FATAL_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_init_keys(%struct.wpa_authenticator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_authenticator*, align 8
  %4 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %3, align 8
  %5 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %5, i32 0, i32 0
  %7 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  store %struct.wpa_group* %7, %struct.wpa_group** %4, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %11 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %12 = call i32 @wpa_group_sm_step(%struct.wpa_authenticator* %10, %struct.wpa_group* %11)
  %13 = load i32, i32* @FALSE, align 4
  %14 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %17 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %18 = call i32 @wpa_group_sm_step(%struct.wpa_authenticator* %16, %struct.wpa_group* %17)
  %19 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WPA_GROUP_FATAL_FAILURE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_group_sm_step(%struct.wpa_authenticator*, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
