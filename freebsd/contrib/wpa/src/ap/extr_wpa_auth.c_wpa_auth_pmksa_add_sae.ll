; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_pmksa_add_sae.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_pmksa_add_sae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RSN: Cache PMK from SAE\00", align 1
@PMK_LEN = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_pmksa_add_sae(%struct.wpa_authenticator* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_authenticator*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %6, align 8
  %11 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %36

16:                                               ; preds = %4
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @PMK_LEN, align 4
  %20 = call i32 @wpa_hexdump_key(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %18, i32 %19)
  %21 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %6, align 8
  %22 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @PMK_LEN, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @WPA_KEY_MGMT_SAE, align 4
  %32 = call i64 @pmksa_cache_auth_add(i32 %23, i32* %24, i32 %25, i32* %26, i32* null, i32 0, i32 %29, i32* %30, i32 0, i32* null, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %36

35:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %34, %15
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i64 @pmksa_cache_auth_add(i32, i32*, i32, i32*, i32*, i32, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
