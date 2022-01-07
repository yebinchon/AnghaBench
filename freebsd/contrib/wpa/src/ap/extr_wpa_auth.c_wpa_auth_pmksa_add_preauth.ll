; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_pmksa_add_preauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_pmksa_add_preauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32, i32 }
%struct.eapol_state_machine = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RSN: Cache PMK from preauth\00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_pmksa_add_preauth(%struct.wpa_authenticator* %0, i32* %1, i64 %2, i32* %3, i32 %4, %struct.eapol_state_machine* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_authenticator*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.eapol_state_machine*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.eapol_state_machine* %5, %struct.eapol_state_machine** %13, align 8
  %14 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %8, align 8
  %15 = icmp eq %struct.wpa_authenticator* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %38

17:                                               ; preds = %6
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @wpa_hexdump_key(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %19, i64 %20)
  %22 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %8, align 8
  %23 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %8, align 8
  %28 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %13, align 8
  %33 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %34 = call i64 @pmksa_cache_auth_add(i32 %24, i32* %25, i64 %26, i32* null, i32* null, i32 0, i32 %29, i32* %30, i32 %31, %struct.eapol_state_machine* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %38

37:                                               ; preds = %17
  store i32 -1, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %36, %16
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i64 @pmksa_cache_auth_add(i32, i32*, i64, i32*, i32*, i32, i32, i32*, i32, %struct.eapol_state_machine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
