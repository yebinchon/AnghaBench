; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_build_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sake.c_eap_sake_build_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32* }
%struct.eap_sake_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EAP-SAKE: Request/Identity\00", align 1
@EAP_SAKE_SUBTYPE_IDENTITY = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"EAP-SAKE: * AT_PERM_ID_REQ\00", align 1
@EAP_SAKE_AT_PERM_ID_REQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"EAP-SAKE: * AT_SERVERID\00", align 1
@EAP_SAKE_AT_SERVERID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sake_data*, i32)* @eap_sake_build_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sake_build_identity(%struct.eap_sm* %0, %struct.eap_sake_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sake_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sake_data* %1, %struct.eap_sake_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i64 4, i64* %9, align 8
  %12 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %9, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %9, align 8
  %19 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @EAP_SAKE_SUBTYPE_IDENTITY, align 4
  %23 = call %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data* %19, i32 %20, i64 %21, i32 %22)
  store %struct.wpabuf* %23, %struct.wpabuf** %8, align 8
  %24 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %25 = icmp eq %struct.wpabuf* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @FAILURE, align 4
  %28 = load %struct.eap_sake_data*, %struct.eap_sake_data** %6, align 8
  %29 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %48

30:                                               ; preds = %3
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %34 = load i32, i32* @EAP_SAKE_AT_PERM_ID_REQ, align 4
  %35 = call i32 @eap_sake_add_attr(%struct.wpabuf* %33, i32 %34, i32* null, i32 2)
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %39 = load i32, i32* @EAP_SAKE_AT_SERVERID, align 4
  %40 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %41 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %44 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @eap_sake_add_attr(%struct.wpabuf* %38, i32 %39, i32* %42, i32 %45)
  %47 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %47, %struct.wpabuf** %4, align 8
  br label %48

48:                                               ; preds = %30, %26
  %49 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %49
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data*, i32, i64, i32) #1

declare dso_local i32 @eap_sake_add_attr(%struct.wpabuf*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
