; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_derive_key_provisioning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_derive_key_provisioning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { %struct.eap_fast_key_block_provisioning*, i32, i64, %struct.TYPE_2__ }
%struct.eap_fast_key_block_provisioning = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"EAP-FAST: Failed to derive key block\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"EAP-FAST: session_key_seed (SKS = S-IMCK[0])\00", align 1
@EAP_FAST_SIMCK_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"EAP-FAST: server_challenge\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"EAP-FAST: client_challenge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_derive_key_provisioning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_derive_key_provisioning(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %5, align 8
  %6 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %7 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %6, i32 0, i32 0
  %8 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %7, align 8
  %9 = call i32 @os_free(%struct.eap_fast_key_block_provisioning* %8)
  %10 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %11 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %14 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @eap_fast_derive_key(i32 %12, i32 %16, i32 12)
  %18 = inttoptr i64 %17 to %struct.eap_fast_key_block_provisioning*
  %19 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %20 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %19, i32 0, i32 0
  store %struct.eap_fast_key_block_provisioning* %18, %struct.eap_fast_key_block_provisioning** %20, align 8
  %21 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %22 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %21, i32 0, i32 0
  %23 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %22, align 8
  %24 = icmp eq %struct.eap_fast_key_block_provisioning* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %62

28:                                               ; preds = %2
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %31 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %30, i32 0, i32 0
  %32 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %31, align 8
  %33 = getelementptr inbounds %struct.eap_fast_key_block_provisioning, %struct.eap_fast_key_block_provisioning* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wpa_hexdump_key(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 4)
  %36 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %37 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %39 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %42 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %41, i32 0, i32 0
  %43 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %42, align 8
  %44 = getelementptr inbounds %struct.eap_fast_key_block_provisioning, %struct.eap_fast_key_block_provisioning* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %47 = call i32 @os_memcpy(i32 %40, i32 %45, i32 %46)
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %50 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %49, i32 0, i32 0
  %51 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %50, align 8
  %52 = getelementptr inbounds %struct.eap_fast_key_block_provisioning, %struct.eap_fast_key_block_provisioning* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wpa_hexdump_key(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 4)
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %57 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %56, i32 0, i32 0
  %58 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %57, align 8
  %59 = getelementptr inbounds %struct.eap_fast_key_block_provisioning, %struct.eap_fast_key_block_provisioning* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wpa_hexdump_key(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 4)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %28, %25
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @os_free(%struct.eap_fast_key_block_provisioning*) #1

declare dso_local i64 @eap_fast_derive_key(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
