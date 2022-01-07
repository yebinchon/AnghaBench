; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gpsk.c_eap_gpsk_build_gpsk_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gpsk.c_eap_gpsk_build_gpsk_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32 }
%struct.eap_gpsk_data = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EAP-GPSK: Request/GPSK-1\00", align 1
@EAP_GPSK_RAND_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"EAP-GPSK: Failed to get random data\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"EAP-GPSK: RAND_Server\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_GPSK = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"EAP-GPSK: Failed to allocate memory for request/GPSK-1\00", align 1
@EAP_GPSK_OPCODE_GPSK_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_gpsk_data*, i32)* @eap_gpsk_build_gpsk_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_gpsk_build_gpsk_1(%struct.eap_sm* %0, %struct.eap_gpsk_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_gpsk_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_gpsk_data* %1, %struct.eap_gpsk_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %13 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %16 = call i64 @random_get_bytes(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @MSG_ERROR, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %22 = load i32, i32* @FAILURE, align 4
  %23 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %21, i32 %22)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %102

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_MSGDUMP, align 4
  %26 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %27 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %30 = call i32 @wpa_hexdump(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %32 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 3, %33
  %35 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %36 = add nsw i32 %34, %35
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %40 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = add i64 %38, %43
  store i64 %44, i64* %8, align 8
  %45 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %46 = load i32, i32* @EAP_TYPE_GPSK, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.wpabuf* @eap_msg_alloc(i32 %45, i32 %46, i64 %47, i32 %48, i32 %49)
  store %struct.wpabuf* %50, %struct.wpabuf** %9, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %52 = icmp eq %struct.wpabuf* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %24
  %54 = load i32, i32* @MSG_ERROR, align 4
  %55 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %57 = load i32, i32* @FAILURE, align 4
  %58 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %56, i32 %57)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %102

59:                                               ; preds = %24
  %60 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %61 = load i32, i32* @EAP_GPSK_OPCODE_GPSK_1, align 4
  %62 = call i32 @wpabuf_put_u8(%struct.wpabuf* %60, i32 %61)
  %63 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %64 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %65 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @wpabuf_put_be16(%struct.wpabuf* %63, i32 %66)
  %68 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %69 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %70 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %73 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wpabuf_put_data(%struct.wpabuf* %68, i32 %71, i32 %74)
  %76 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %77 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %78 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EAP_GPSK_RAND_LEN, align 4
  %81 = call i32 @wpabuf_put_data(%struct.wpabuf* %76, i32 %79, i32 %80)
  %82 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %83 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %84 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32 @wpabuf_put_be16(%struct.wpabuf* %82, i32 %88)
  %90 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %91 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %92 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %95 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i32 @wpabuf_put_data(%struct.wpabuf* %90, i32 %93, i32 %99)
  %101 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %101, %struct.wpabuf** %4, align 8
  br label %102

102:                                              ; preds = %59, %53, %18
  %103 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %103
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @eap_gpsk_state(%struct.eap_gpsk_data*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
