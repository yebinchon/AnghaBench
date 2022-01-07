; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_build_std_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_build_std_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_pax_data = type { i8*, i32, i32, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.eap_pax_hdr = type { i32, i32, i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-PAX: PAX_STD-3 (sending)\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PAX = common dso_local global i32 0, align 4
@EAP_PAX_MAC_LEN = common dso_local global i32 0, align 4
@EAP_PAX_ICV_LEN = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"EAP-PAX: Failed to allocate memory request\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@EAP_PAX_OP_STD_3 = common dso_local global i32 0, align 4
@EAP_PAX_DH_GROUP_NONE = common dso_local global i32 0, align 4
@EAP_PAX_PUBLIC_KEY_NONE = common dso_local global i32 0, align 4
@EAP_PAX_CK_LEN = common dso_local global i32 0, align 4
@EAP_PAX_RAND_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"EAP-PAX: Failed to calculate MAC\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"EAP-PAX: MAC_CK(B, CID)\00", align 1
@EAP_PAX_ICK_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"EAP-PAX: Failed to calculate ICV\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"EAP-PAX: ICV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_pax_data*, i32)* @eap_pax_build_std_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_pax_build_std_3(%struct.eap_sm* %0, %struct.eap_pax_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_pax_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.eap_pax_hdr*, align 8
  %10 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_pax_data* %1, %struct.eap_pax_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %14 = load i32, i32* @EAP_TYPE_PAX, align 4
  %15 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 34, %16
  %18 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.wpabuf* @eap_msg_alloc(i32 %13, i32 %14, i32 %21, i32 %22, i32 %23)
  store %struct.wpabuf* %24, %struct.wpabuf** %8, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %26 = icmp eq %struct.wpabuf* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @MSG_ERROR, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** @FAILURE, align 8
  %31 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %32 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %131

33:                                               ; preds = %3
  %34 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %35 = call i8* @wpabuf_put(%struct.wpabuf* %34, i32 32)
  %36 = bitcast i8* %35 to %struct.eap_pax_hdr*
  store %struct.eap_pax_hdr* %36, %struct.eap_pax_hdr** %9, align 8
  %37 = load i32, i32* @EAP_PAX_OP_STD_3, align 4
  %38 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %39 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %41 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %43 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @EAP_PAX_DH_GROUP_NONE, align 4
  %48 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %49 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @EAP_PAX_PUBLIC_KEY_NONE, align 4
  %51 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %52 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %54 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %55 = call i32 @wpabuf_put_be16(%struct.wpabuf* %53, i32 %54)
  %56 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %57 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %58 = call i8* @wpabuf_put(%struct.wpabuf* %56, i32 %57)
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %10, align 8
  %60 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %61 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %64 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EAP_PAX_CK_LEN, align 4
  %67 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %68 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* @EAP_PAX_RAND_LEN, align 8
  %73 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %74 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %78 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i64 @eap_pax_mac(i32 %62, i32 %65, i32 %66, i32 %71, i64 %72, i32* %76, i32 %79, i32* null, i32 0, i32* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %33
  %84 = load i32, i32* @MSG_ERROR, align 4
  %85 = call i32 @wpa_printf(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i8*, i8** @FAILURE, align 8
  %87 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %88 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %90 = call i32 @wpabuf_free(%struct.wpabuf* %89)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %131

91:                                               ; preds = %33
  %92 = load i32, i32* @MSG_MSGDUMP, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %95 = call i32 @wpa_hexdump(i32 %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %93, i32 %94)
  %96 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %97 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %98 = call i8* @wpabuf_put(%struct.wpabuf* %96, i32 %97)
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %10, align 8
  %100 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %101 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %104 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @EAP_PAX_ICK_LEN, align 4
  %107 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %108 = call i32 @wpabuf_mhead(%struct.wpabuf* %107)
  %109 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %110 = call i64 @wpabuf_len(%struct.wpabuf* %109)
  %111 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %112 = sext i32 %111 to i64
  %113 = sub nsw i64 %110, %112
  %114 = load i32*, i32** %10, align 8
  %115 = call i64 @eap_pax_mac(i32 %102, i32 %105, i32 %106, i32 %108, i64 %113, i32* null, i32 0, i32* null, i32 0, i32* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %91
  %118 = load i32, i32* @MSG_ERROR, align 4
  %119 = call i32 @wpa_printf(i32 %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i8*, i8** @FAILURE, align 8
  %121 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %122 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %124 = call i32 @wpabuf_free(%struct.wpabuf* %123)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %131

125:                                              ; preds = %91
  %126 = load i32, i32* @MSG_MSGDUMP, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* @EAP_PAX_ICV_LEN, align 4
  %129 = call i32 @wpa_hexdump(i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %127, i32 %128)
  %130 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %130, %struct.wpabuf** %4, align 8
  br label %131

131:                                              ; preds = %125, %117, %83, %27
  %132 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %132
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i64 @eap_pax_mac(i32, i32, i32, i32, i64, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
