; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_build_std_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_build_std_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_pax_data = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.eap_pax_hdr = type { i32, i32, i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-PAX: PAX_STD-1 (sending)\00", align 1
@EAP_PAX_RAND_LEN = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"EAP-PAX: Failed to get random data\00", align 1
@FAILURE = common dso_local global i8* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PAX = common dso_local global i32 0, align 4
@EAP_PAX_ICV_LEN = common dso_local global i64 0, align 8
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"EAP-PAX: Failed to allocate memory request\00", align 1
@EAP_PAX_OP_STD_1 = common dso_local global i32 0, align 4
@EAP_PAX_DH_GROUP_NONE = common dso_local global i32 0, align 4
@EAP_PAX_PUBLIC_KEY_NONE = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"EAP-PAX: A = X (server rand)\00", align 1
@EAP_PAX_MAC_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"EAP-PAX: Failed to calculate ICV\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"EAP-PAX: ICV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_pax_data*, i32)* @eap_pax_build_std_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_pax_build_std_1(%struct.eap_sm* %0, %struct.eap_pax_data* %1, i32 %2) #0 {
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
  %13 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %14 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @EAP_PAX_RAND_LEN, align 8
  %19 = call i64 @random_get_bytes(i32* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_ERROR, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i8*, i8** @FAILURE, align 8
  %25 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %26 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %114

27:                                               ; preds = %3
  %28 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %29 = load i32, i32* @EAP_TYPE_PAX, align 4
  %30 = load i64, i64* @EAP_PAX_RAND_LEN, align 8
  %31 = add i64 34, %30
  %32 = load i64, i64* @EAP_PAX_ICV_LEN, align 8
  %33 = add i64 %31, %32
  %34 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.wpabuf* @eap_msg_alloc(i32 %28, i32 %29, i64 %33, i32 %34, i32 %35)
  store %struct.wpabuf* %36, %struct.wpabuf** %8, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %38 = icmp eq %struct.wpabuf* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8*, i8** @FAILURE, align 8
  %43 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %44 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %114

45:                                               ; preds = %27
  %46 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %47 = call i8* @wpabuf_put(%struct.wpabuf* %46, i32 32)
  %48 = bitcast i8* %47 to %struct.eap_pax_hdr*
  store %struct.eap_pax_hdr* %48, %struct.eap_pax_hdr** %9, align 8
  %49 = load i32, i32* @EAP_PAX_OP_STD_1, align 4
  %50 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %51 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %53 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %58 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @EAP_PAX_DH_GROUP_NONE, align 4
  %60 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %61 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @EAP_PAX_PUBLIC_KEY_NONE, align 4
  %63 = load %struct.eap_pax_hdr*, %struct.eap_pax_hdr** %9, align 8
  %64 = getelementptr inbounds %struct.eap_pax_hdr, %struct.eap_pax_hdr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %66 = load i64, i64* @EAP_PAX_RAND_LEN, align 8
  %67 = call i32 @wpabuf_put_be16(%struct.wpabuf* %65, i64 %66)
  %68 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %69 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %70 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @EAP_PAX_RAND_LEN, align 8
  %75 = call i32 @wpabuf_put_data(%struct.wpabuf* %68, i32* %73, i64 %74)
  %76 = load i32, i32* @MSG_MSGDUMP, align 4
  %77 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %78 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @EAP_PAX_RAND_LEN, align 8
  %83 = call i32 @wpa_hexdump(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* %81, i64 %82)
  %84 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %85 = load i32, i32* @EAP_PAX_MAC_LEN, align 4
  %86 = call i8* @wpabuf_put(%struct.wpabuf* %84, i32 %85)
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** %10, align 8
  %88 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %89 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %92 = call i32 @wpabuf_mhead(%struct.wpabuf* %91)
  %93 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %94 = call i64 @wpabuf_len(%struct.wpabuf* %93)
  %95 = load i64, i64* @EAP_PAX_ICV_LEN, align 8
  %96 = sub nsw i64 %94, %95
  %97 = load i32*, i32** %10, align 8
  %98 = call i64 @eap_pax_mac(i32 %90, i32* bitcast ([1 x i8]* @.str.4 to i32*), i32 0, i32 %92, i64 %96, i32* null, i32 0, i32* null, i32 0, i32* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %45
  %101 = load i32, i32* @MSG_ERROR, align 4
  %102 = call i32 @wpa_printf(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i8*, i8** @FAILURE, align 8
  %104 = load %struct.eap_pax_data*, %struct.eap_pax_data** %6, align 8
  %105 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %107 = call i32 @wpabuf_free(%struct.wpabuf* %106)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %114

108:                                              ; preds = %45
  %109 = load i32, i32* @MSG_MSGDUMP, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = load i64, i64* @EAP_PAX_ICV_LEN, align 8
  %112 = call i32 @wpa_hexdump(i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %110, i64 %111)
  %113 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %113, %struct.wpabuf** %4, align 8
  br label %114

114:                                              ; preds = %108, %100, %39, %21
  %115 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %115
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @random_get_bytes(i32*, i64) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @eap_pax_mac(i32, i32*, i32, i32, i64, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
