; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_sta_associated.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_sta_associated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_state_machine = type { i32, i8*, i8*, i32, i8*, i32, i8*, i8*, i64, i64 }

@TRUE = common dso_local global i8* null, align 8
@LOGGER_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"start authentication\00", align 1
@FALSE = common dso_local global i8* null, align 8
@WPA_PTK_PTKINITDONE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_sta_associated(%struct.wpa_authenticator* %0, %struct.wpa_state_machine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_authenticator*, align 8
  %5 = alloca %struct.wpa_state_machine*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %4, align 8
  store %struct.wpa_state_machine* %1, %struct.wpa_state_machine** %5, align 8
  %6 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %7 = icmp eq %struct.wpa_authenticator* %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %16 = icmp eq %struct.wpa_state_machine* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %8, %2
  store i32 -1, i32* %3, align 4
  br label %57

18:                                               ; preds = %14
  %19 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %25 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %24, i32 0, i32 5
  %26 = call i32 @os_memset(i32* %25, i32 0, i32 4)
  %27 = load i8*, i8** @TRUE, align 8
  %28 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %31 = call i32 @wpa_sm_step(%struct.wpa_state_machine* %30)
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %18
  %33 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %34 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %35 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @LOGGER_DEBUG, align 4
  %38 = call i32 @wpa_auth_logger(%struct.wpa_authenticator* %33, i32 %36, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i8*, i8** @TRUE, align 8
  %42 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %43 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %45 = call i32 @wpa_sm_step(%struct.wpa_state_machine* %44)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %57

48:                                               ; preds = %32
  %49 = load i8*, i8** @FALSE, align 8
  %50 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %54 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %5, align 8
  %56 = call i32 @wpa_sm_step(%struct.wpa_state_machine* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %48, %47, %23, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @wpa_sm_step(%struct.wpa_state_machine*) #1

declare dso_local i32 @wpa_auth_logger(%struct.wpa_authenticator*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
