; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_ieee802_1x_decapsulate_radius.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_ieee802_1x_decapsulate_radius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_test_data = type { %struct.TYPE_2__*, %struct.wpabuf*, i32, %struct.radius_msg* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wpabuf = type { i32 }
%struct.radius_msg = type { i32 }
%struct.eap_hdr = type { i32, i32, i32 }
%struct.ieee802_1x_hdr = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"could not extract EAP-Message from RADIUS message\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"too short EAP packet received from authentication server\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"EAP-Request-%s (%d)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"EAP Response-%s (%d)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"EAP Success\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"EAP Failure\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"unknown EAP code\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Decapsulated EAP packet\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"decapsulated EAP packet (code=%d id=%d len=%d) from RADIUS server: %s\00", align 1
@EAPOL_VERSION = common dso_local global i32 0, align 4
@IEEE802_1X_TYPE_EAP_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_test_data*)* @ieee802_1x_decapsulate_radius to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_decapsulate_radius(%struct.eapol_test_data* %0) #0 {
  %2 = alloca %struct.eapol_test_data*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca %struct.radius_msg*, align 8
  %8 = alloca %struct.ieee802_1x_hdr*, align 8
  store %struct.eapol_test_data* %0, %struct.eapol_test_data** %2, align 8
  store i32 -1, i32* %5, align 4
  %9 = load %struct.eapol_test_data*, %struct.eapol_test_data** %2, align 8
  %10 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %9, i32 0, i32 3
  %11 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %12 = icmp eq %struct.radius_msg* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %170

14:                                               ; preds = %1
  %15 = load %struct.eapol_test_data*, %struct.eapol_test_data** %2, align 8
  %16 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %15, i32 0, i32 3
  %17 = load %struct.radius_msg*, %struct.radius_msg** %16, align 8
  store %struct.radius_msg* %17, %struct.radius_msg** %7, align 8
  %18 = load %struct.radius_msg*, %struct.radius_msg** %7, align 8
  %19 = call %struct.wpabuf* @radius_msg_get_eap(%struct.radius_msg* %18)
  store %struct.wpabuf* %19, %struct.wpabuf** %3, align 8
  %20 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %21 = icmp eq %struct.wpabuf* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.eapol_test_data*, %struct.eapol_test_data** %2, align 8
  %26 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %25, i32 0, i32 1
  %27 = load %struct.wpabuf*, %struct.wpabuf** %26, align 8
  %28 = call i32 @wpabuf_free(%struct.wpabuf* %27)
  %29 = load %struct.eapol_test_data*, %struct.eapol_test_data** %2, align 8
  %30 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %29, i32 0, i32 1
  store %struct.wpabuf* null, %struct.wpabuf** %30, align 8
  br label %170

31:                                               ; preds = %14
  %32 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %33 = call i32 @wpabuf_len(%struct.wpabuf* %32)
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 12
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %40 = call i32 @wpabuf_free(%struct.wpabuf* %39)
  br label %170

41:                                               ; preds = %31
  %42 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %43 = call i32 @wpabuf_len(%struct.wpabuf* %42)
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %44, 12
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %48 = call i32* @wpabuf_head_u8(%struct.wpabuf* %47)
  %49 = getelementptr inbounds i32, i32* %48, i64 12
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %53 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %52)
  store %struct.eap_hdr* %53, %struct.eap_hdr** %4, align 8
  %54 = load %struct.eap_hdr*, %struct.eap_hdr** %4, align 8
  %55 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %94 [
    i32 130, label %57
    i32 129, label %69
    i32 128, label %81
    i32 131, label %84
  ]

57:                                               ; preds = %51
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %59 = load i32, i32* %5, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %5, align 4
  %63 = call i8* @eap_type_text(i32 %62)
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i8* [ %63, %61 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %64 ]
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @os_snprintf(i8* %58, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 %67)
  br label %100

69:                                               ; preds = %51
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %71 = load i32, i32* %5, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = call i8* @eap_type_text(i32 %74)
  br label %77

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i8* [ %75, %73 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %76 ]
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @os_snprintf(i8* %70, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %78, i32 %79)
  br label %100

81:                                               ; preds = %51
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %83 = call i32 @os_strlcpy(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 64)
  br label %100

84:                                               ; preds = %51
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %86 = call i32 @os_strlcpy(i8* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 64)
  %87 = load %struct.eapol_test_data*, %struct.eapol_test_data** %2, align 8
  %88 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %100

92:                                               ; preds = %84
  %93 = call i32 (...) @eloop_terminate()
  br label %100

94:                                               ; preds = %51
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %96 = call i32 @os_strlcpy(i8* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 64)
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %99 = call i32 @wpa_hexdump_buf(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), %struct.wpabuf* %98)
  br label %100

100:                                              ; preds = %94, %92, %91, %81, %77, %65
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load %struct.eap_hdr*, %struct.eap_hdr** %4, align 8
  %103 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.eap_hdr*, %struct.eap_hdr** %4, align 8
  %106 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.eap_hdr*, %struct.eap_hdr** %4, align 8
  %109 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ntohs(i32 %110)
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0), i32 %104, i32 %107, i32 %111, i8* %112)
  %114 = load %struct.eapol_test_data*, %struct.eapol_test_data** %2, align 8
  %115 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %114, i32 0, i32 1
  %116 = load %struct.wpabuf*, %struct.wpabuf** %115, align 8
  %117 = call i32 @wpabuf_free(%struct.wpabuf* %116)
  %118 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %119 = load %struct.eapol_test_data*, %struct.eapol_test_data** %2, align 8
  %120 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %119, i32 0, i32 1
  store %struct.wpabuf* %118, %struct.wpabuf** %120, align 8
  %121 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %122 = call i32 @wpabuf_len(%struct.wpabuf* %121)
  %123 = sext i32 %122 to i64
  %124 = add i64 12, %123
  %125 = trunc i64 %124 to i32
  %126 = call %struct.ieee802_1x_hdr* @os_malloc(i32 %125)
  store %struct.ieee802_1x_hdr* %126, %struct.ieee802_1x_hdr** %8, align 8
  %127 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %128 = icmp ne %struct.ieee802_1x_hdr* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* @EAPOL_VERSION, align 4
  %132 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %133 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @IEEE802_1X_TYPE_EAP_PACKET, align 4
  %135 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %136 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %138 = call i32 @wpabuf_len(%struct.wpabuf* %137)
  %139 = call i32 @htons(i32 %138)
  %140 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %141 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %143 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %142, i64 1
  %144 = bitcast %struct.ieee802_1x_hdr* %143 to i32*
  %145 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %146 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %145)
  %147 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %148 = call i32 @wpabuf_len(%struct.wpabuf* %147)
  %149 = call i32 @os_memcpy(i32* %144, %struct.eap_hdr* %146, i32 %148)
  %150 = load %struct.eapol_test_data*, %struct.eapol_test_data** %2, align 8
  %151 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.eapol_test_data*, %struct.eapol_test_data** %2, align 8
  %156 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %161 = bitcast %struct.ieee802_1x_hdr* %160 to i32*
  %162 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %163 = call i32 @wpabuf_len(%struct.wpabuf* %162)
  %164 = sext i32 %163 to i64
  %165 = add i64 12, %164
  %166 = trunc i64 %165 to i32
  %167 = call i32 @eapol_sm_rx_eapol(i32 %154, i32 %159, i32* %161, i32 %166)
  %168 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %169 = call i32 @os_free(%struct.ieee802_1x_hdr* %168)
  br label %170

170:                                              ; preds = %100, %36, %22, %13
  ret void
}

declare dso_local %struct.wpabuf* @radius_msg_get_eap(%struct.radius_msg*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @eap_type_text(i32) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @eloop_terminate(...) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.ieee802_1x_hdr* @os_malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @os_memcpy(i32*, %struct.eap_hdr*, i32) #1

declare dso_local i32 @eapol_sm_rx_eapol(i32, i32, i32*, i32) #1

declare dso_local i32 @os_free(%struct.ieee802_1x_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
