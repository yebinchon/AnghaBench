; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_derive_key_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_derive_key_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAP_FAST_SKS_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"EAP-FAST: Failed to derive session_key_seed\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"EAP-FAST: session_key_seed (SKS = S-IMCK[0])\00", align 1
@EAP_FAST_SIMCK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_derive_key_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_derive_key_auth(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_fast_data*, align 8
  %5 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %4, align 8
  %6 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %7 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %10 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EAP_FAST_SKS_LEN, align 4
  %14 = call i32* @eap_fast_derive_key(i32 %8, i32 %12, i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %35

20:                                               ; preds = %2
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @EAP_FAST_SKS_LEN, align 4
  %24 = call i32 @wpa_hexdump_key(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32 %23)
  %25 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %26 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %28 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %32 = call i32 @os_memcpy(i32 %29, i32* %30, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @os_free(i32* %33)
  br label %35

35:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32* @eap_fast_derive_key(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
