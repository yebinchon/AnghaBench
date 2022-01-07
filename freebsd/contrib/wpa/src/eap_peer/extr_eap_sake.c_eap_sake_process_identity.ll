; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sake.c_eap_sake_process_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sake.c_eap_sake_process_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_sake_data = type { i64, i64, i32 }
%struct.eap_method_ret = type { i32 }
%struct.eap_sake_parse_attr = type { i32, i32 }

@IDENTITY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"EAP-SAKE: Received Request/Identity\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"EAP-SAKE: No AT_PERM_ID_REQ or AT_ANY_ID_REQ in Request/Identity\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"EAP-SAKE: Sending Response/Identity\00", align 1
@EAP_SAKE_SUBTYPE_IDENTITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"EAP-SAKE: * AT_PEERID\00", align 1
@EAP_SAKE_AT_PEERID = common dso_local global i32 0, align 4
@CHALLENGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sake_data*, %struct.eap_method_ret*, i32, i32*, i64)* @eap_sake_process_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sake_process_identity(%struct.eap_sm* %0, %struct.eap_sake_data* %1, %struct.eap_method_ret* %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_sake_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.eap_sake_parse_attr, align 4
  %15 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_sake_data* %1, %struct.eap_sake_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %17 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IDENTITY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* @TRUE, align 4
  %23 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %24 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %74

25:                                               ; preds = %6
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @eap_sake_parse_attributes(i32* %28, i64 %29, %struct.eap_sake_parse_attr* %14)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %74

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %14, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.eap_sake_parse_attr, %struct.eap_sake_parse_attr* %14, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %74

44:                                               ; preds = %37, %33
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %50 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 2, %51
  %53 = load i32, i32* @EAP_SAKE_SUBTYPE_IDENTITY, align 4
  %54 = call %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data* %47, i32 %48, i64 %52, i32 %53)
  store %struct.wpabuf* %54, %struct.wpabuf** %15, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %56 = icmp eq %struct.wpabuf* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %74

58:                                               ; preds = %44
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = call i32 @wpa_printf(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %62 = load i32, i32* @EAP_SAKE_AT_PEERID, align 4
  %63 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %64 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %67 = getelementptr inbounds %struct.eap_sake_data, %struct.eap_sake_data* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @eap_sake_add_attr(%struct.wpabuf* %61, i32 %62, i32 %65, i64 %68)
  %70 = load %struct.eap_sake_data*, %struct.eap_sake_data** %9, align 8
  %71 = load i32, i32* @CHALLENGE, align 4
  %72 = call i32 @eap_sake_state(%struct.eap_sake_data* %70, i32 %71)
  %73 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %73, %struct.wpabuf** %7, align 8
  br label %74

74:                                               ; preds = %58, %57, %41, %32, %21
  %75 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %75
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eap_sake_parse_attributes(i32*, i64, %struct.eap_sake_parse_attr*) #1

declare dso_local %struct.wpabuf* @eap_sake_build_msg(%struct.eap_sake_data*, i32, i64, i32) #1

declare dso_local i32 @eap_sake_add_attr(%struct.wpabuf*, i32, i32, i64) #1

declare dso_local i32 @eap_sake_state(%struct.eap_sake_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
