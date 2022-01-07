; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_derive_key_provisioning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_derive_key_provisioning.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_derive_key_provisioning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_derive_key_provisioning(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca %struct.eap_sm*, align 8
  %4 = alloca %struct.eap_fast_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %3, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %4, align 8
  %5 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %6 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %5, i32 0, i32 0
  %7 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %6, align 8
  %8 = call i32 @os_free(%struct.eap_fast_key_block_provisioning* %7)
  %9 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %10 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %13 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @eap_fast_derive_key(i32 %11, i32 %15, i32 12)
  %17 = inttoptr i64 %16 to %struct.eap_fast_key_block_provisioning*
  %18 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %19 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %18, i32 0, i32 0
  store %struct.eap_fast_key_block_provisioning* %17, %struct.eap_fast_key_block_provisioning** %19, align 8
  %20 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %21 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %20, i32 0, i32 0
  %22 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %21, align 8
  %23 = icmp eq %struct.eap_fast_key_block_provisioning* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %61

27:                                               ; preds = %2
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %30 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %29, i32 0, i32 0
  %31 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %30, align 8
  %32 = getelementptr inbounds %struct.eap_fast_key_block_provisioning, %struct.eap_fast_key_block_provisioning* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wpa_hexdump_key(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 4)
  %35 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %36 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %38 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %41 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %40, i32 0, i32 0
  %42 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %41, align 8
  %43 = getelementptr inbounds %struct.eap_fast_key_block_provisioning, %struct.eap_fast_key_block_provisioning* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %46 = call i32 @os_memcpy(i32 %39, i32 %44, i32 %45)
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %49 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %48, i32 0, i32 0
  %50 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %49, align 8
  %51 = getelementptr inbounds %struct.eap_fast_key_block_provisioning, %struct.eap_fast_key_block_provisioning* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wpa_hexdump_key(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 4)
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %56 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %55, i32 0, i32 0
  %57 = load %struct.eap_fast_key_block_provisioning*, %struct.eap_fast_key_block_provisioning** %56, align 8
  %58 = getelementptr inbounds %struct.eap_fast_key_block_provisioning, %struct.eap_fast_key_block_provisioning* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wpa_hexdump_key(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 4)
  br label %61

61:                                               ; preds = %27, %24
  ret void
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
