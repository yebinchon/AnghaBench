; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_sta_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_sta_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { %struct.TYPE_2__*, %struct.wpa_authenticator*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_authenticator = type { %struct.TYPE_2__* }

@WPA_GROUP_FATAL_FAILURE = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_state_machine* @wpa_auth_sta_init(%struct.wpa_authenticator* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.wpa_state_machine*, align 8
  %5 = alloca %struct.wpa_authenticator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wpa_state_machine*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WPA_GROUP_FATAL_FAILURE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.wpa_state_machine* null, %struct.wpa_state_machine** %4, align 8
  br label %55

17:                                               ; preds = %3
  %18 = call %struct.wpa_state_machine* @os_zalloc(i32 24)
  store %struct.wpa_state_machine* %18, %struct.wpa_state_machine** %8, align 8
  %19 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %8, align 8
  %20 = icmp eq %struct.wpa_state_machine* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store %struct.wpa_state_machine* null, %struct.wpa_state_machine** %4, align 8
  br label %55

22:                                               ; preds = %17
  %23 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %8, align 8
  %24 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @os_memcpy(i32 %25, i32* %26, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %8, align 8
  %33 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i32 @os_memcpy(i32 %34, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %22
  %39 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %40 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %8, align 8
  %41 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %40, i32 0, i32 1
  store %struct.wpa_authenticator* %39, %struct.wpa_authenticator** %41, align 8
  %42 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %43 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %8, align 8
  %46 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %45, i32 0, i32 0
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %46, align 8
  %47 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %8, align 8
  %48 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %47, i32 0, i32 1
  %49 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %48, align 8
  %50 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %8, align 8
  %51 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @wpa_group_get(%struct.wpa_authenticator* %49, %struct.TYPE_2__* %52)
  %54 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %8, align 8
  store %struct.wpa_state_machine* %54, %struct.wpa_state_machine** %4, align 8
  br label %55

55:                                               ; preds = %38, %21, %16
  %56 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  ret %struct.wpa_state_machine* %56
}

declare dso_local %struct.wpa_state_machine* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @wpa_group_get(%struct.wpa_authenticator*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
