; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_ieee802_1x_receive_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_ieee802_1x_receive_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32 }
%struct.eapol_test_data = type { i32, i32, i32, i64, i32, %struct.radius_msg* }
%struct.radius_hdr = type { i32 }

@RADIUS_ATTR_MESSAGE_AUTHENTICATOR = common dso_local global i32 0, align 4
@RADIUS_ATTR_EAP_MESSAGE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"Allowing RADIUS Access-Reject without Message-Authenticator since it does not include EAP-Message\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"Incoming RADIUS packet did not have correct Message-Authenticator - dropped\0A\00", align 1
@RADIUS_RX_UNKNOWN = common dso_local global i32 0, align 4
@RADIUS_CODE_ACCESS_CHALLENGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unknown RADIUS message code\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"RADIUS packet matching with station\00", align 1
@RADIUS_RX_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius_msg*, %struct.radius_msg*, i32*, i64, i8*)* @ieee802_1x_receive_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_receive_auth(%struct.radius_msg* %0, %struct.radius_msg* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca %struct.radius_msg*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.eapol_test_data*, align 8
  %13 = alloca %struct.radius_hdr*, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %7, align 8
  store %struct.radius_msg* %1, %struct.radius_msg** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to %struct.eapol_test_data*
  store %struct.eapol_test_data* %15, %struct.eapol_test_data** %12, align 8
  %16 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %17 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %16)
  store %struct.radius_hdr* %17, %struct.radius_hdr** %13, align 8
  %18 = load %struct.radius_hdr*, %struct.radius_hdr** %13, align 8
  %19 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %24 = load i32, i32* @RADIUS_ATTR_MESSAGE_AUTHENTICATOR, align 4
  %25 = call i64 @radius_msg_get_attr(%struct.radius_msg* %23, i32 %24, i32* null, i32 0)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %29 = load i32, i32* @RADIUS_ATTR_EAP_MESSAGE, align 4
  %30 = call i64 @radius_msg_get_attr(%struct.radius_msg* %28, i32 %29, i32* null, i32 0)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0))
  br label %46

35:                                               ; preds = %27, %22, %5
  %36 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %40 = call i64 @radius_msg_verify(%struct.radius_msg* %36, i32* %37, i64 %38, %struct.radius_msg* %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @RADIUS_RX_UNKNOWN, align 4
  store i32 %44, i32* %6, align 4
  br label %119

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.radius_hdr*, %struct.radius_hdr** %13, align 8
  %48 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 129
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.radius_hdr*, %struct.radius_hdr** %13, align 8
  %53 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 128
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.radius_hdr*, %struct.radius_hdr** %13, align 8
  %58 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RADIUS_CODE_ACCESS_CHALLENGE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @RADIUS_RX_UNKNOWN, align 4
  store i32 %64, i32* %6, align 4
  br label %119

65:                                               ; preds = %56, %51, %46
  %66 = load %struct.eapol_test_data*, %struct.eapol_test_data** %12, align 8
  %67 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.eapol_test_data*, %struct.eapol_test_data** %12, align 8
  %71 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %70, i32 0, i32 5
  %72 = load %struct.radius_msg*, %struct.radius_msg** %71, align 8
  %73 = call i32 @radius_msg_free(%struct.radius_msg* %72)
  %74 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %75 = load %struct.eapol_test_data*, %struct.eapol_test_data** %12, align 8
  %76 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %75, i32 0, i32 5
  store %struct.radius_msg* %74, %struct.radius_msg** %76, align 8
  %77 = load %struct.radius_hdr*, %struct.radius_hdr** %13, align 8
  %78 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %92 [
    i32 129, label %80
    i32 128, label %89
  ]

80:                                               ; preds = %65
  %81 = load %struct.eapol_test_data*, %struct.eapol_test_data** %12, align 8
  %82 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.eapol_test_data*, %struct.eapol_test_data** %12, align 8
  %84 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %85 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @ieee802_1x_get_keys(%struct.eapol_test_data* %83, %struct.radius_msg* %84, %struct.radius_msg* %85, i32* %86, i64 %87)
  br label %92

89:                                               ; preds = %65
  %90 = load %struct.eapol_test_data*, %struct.eapol_test_data** %12, align 8
  %91 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %65, %89, %80
  %93 = load %struct.eapol_test_data*, %struct.eapol_test_data** %12, align 8
  %94 = call i32 @ieee802_1x_decapsulate_radius(%struct.eapol_test_data* %93)
  %95 = load %struct.radius_hdr*, %struct.radius_hdr** %13, align 8
  %96 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 129
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.eapol_test_data*, %struct.eapol_test_data** %12, align 8
  %101 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99, %92
  %105 = load %struct.radius_hdr*, %struct.radius_hdr** %13, align 8
  %106 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 128
  br i1 %108, label %109, label %117

109:                                              ; preds = %104, %99
  %110 = load %struct.eapol_test_data*, %struct.eapol_test_data** %12, align 8
  %111 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = call i32 (...) @eloop_terminate()
  br label %116

116:                                              ; preds = %114, %109
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i32, i32* @RADIUS_RX_QUEUED, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %62, %42
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg*) #1

declare dso_local i64 @radius_msg_get_attr(%struct.radius_msg*, i32, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @radius_msg_verify(%struct.radius_msg*, i32*, i64, %struct.radius_msg*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

declare dso_local i32 @ieee802_1x_get_keys(%struct.eapol_test_data*, %struct.radius_msg*, %struct.radius_msg*, i32*, i64) #1

declare dso_local i32 @ieee802_1x_decapsulate_radius(%struct.eapol_test_data*) #1

declare dso_local i32 @eloop_terminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
