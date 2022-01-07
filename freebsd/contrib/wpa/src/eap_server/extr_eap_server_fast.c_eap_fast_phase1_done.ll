; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_phase1_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_phase1_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"EAP-FAST: Phase1 done, starting Phase2\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"EAP-FAST: Failed to get cipher information\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ADH\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"EAP-FAST: Anonymous provisioning\00", align 1
@PHASE2_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_phase1_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_phase1_done(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  %6 = alloca [64 x i8], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %5, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 @wpa_printf(i32 %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %10 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %17 = call i64 @tls_get_cipher(i32 %11, i32 %15, i8* %16, i32 64)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %23 = load i32, i32* @FAILURE, align 4
  %24 = call i32 @eap_fast_state(%struct.eap_fast_data* %22, i32 %23)
  store i32 -1, i32* %3, align 4
  br label %50

25:                                               ; preds = %2
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %27 = call i32* @os_strstr(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %31 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %33 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %40 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %41 = call i32 @eap_fast_derive_key_provisioning(%struct.eap_sm* %39, %struct.eap_fast_data* %40)
  br label %46

42:                                               ; preds = %25
  %43 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %44 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %45 = call i32 @eap_fast_derive_key_auth(%struct.eap_sm* %43, %struct.eap_fast_data* %44)
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %48 = load i32, i32* @PHASE2_START, align 4
  %49 = call i32 @eap_fast_state(%struct.eap_fast_data* %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @tls_get_cipher(i32, i32, i8*, i32) #1

declare dso_local i32 @eap_fast_state(%struct.eap_fast_data*, i32) #1

declare dso_local i32* @os_strstr(i8*, i8*) #1

declare dso_local i32 @eap_fast_derive_key_provisioning(%struct.eap_sm*, %struct.eap_fast_data*) #1

declare dso_local i32 @eap_fast_derive_key_auth(%struct.eap_sm*, %struct.eap_fast_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
