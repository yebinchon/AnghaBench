; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_wsc.c_eap_wsc_build_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_wsc.c_eap_wsc_build_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_wsc_data = type { i64, i32, i32, i32* }

@WSC_FLAGS_MF = common dso_local global i32 0, align 4
@WSC_FLAGS_LF = common dso_local global i32 0, align 4
@EAP_VENDOR_WFA = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE_WSC = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"EAP-WSC: Failed to allocate memory for request\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"EAP-WSC: Sending out %lu bytes (message sent completely)\00", align 1
@MESG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"EAP-WSC: Sending out %lu bytes (%lu more to send)\00", align 1
@WAIT_FRAG_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_wsc_data*, i32)* @eap_wsc_build_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_wsc_build_msg(%struct.eap_wsc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_wsc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.eap_wsc_data* %0, %struct.eap_wsc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %11 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @wpabuf_len(i32* %12)
  %14 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %15 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = add i64 2, %18
  %20 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %21 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %19, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %27 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* @WSC_FLAGS_MF, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %35 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load i32, i32* @WSC_FLAGS_LF, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %42, 2
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %38, %25
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i64, i64* %8, align 8
  %47 = add i64 2, %46
  store i64 %47, i64* %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @WSC_FLAGS_LF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 2
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* @EAP_VENDOR_WFA, align 4
  %57 = load i32, i32* @EAP_VENDOR_TYPE_WSC, align 4
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call %struct.wpabuf* @eap_msg_alloc(i32 %56, i32 %57, i64 %58, i32 %59, i32 %60)
  store %struct.wpabuf* %61, %struct.wpabuf** %6, align 8
  %62 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %63 = icmp eq %struct.wpabuf* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @MSG_ERROR, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %144

67:                                               ; preds = %55
  %68 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %69 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %70 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @wpabuf_put_u8(%struct.wpabuf* %68, i32 %71)
  %73 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @wpabuf_put_u8(%struct.wpabuf* %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @WSC_FLAGS_LF, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %67
  %81 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %82 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %83 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @wpabuf_len(i32* %84)
  %86 = call i32 @wpabuf_put_be16(%struct.wpabuf* %81, i64 %85)
  br label %87

87:                                               ; preds = %80, %67
  %88 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %89 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %90 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @wpabuf_head_u8(i32* %91)
  %93 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %94 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @wpabuf_put_data(%struct.wpabuf* %88, i64 %96, i64 %97)
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %101 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %105 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %108 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @wpabuf_len(i32* %109)
  %111 = icmp eq i64 %106, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %87
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = load i64, i64* %8, align 8
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %114)
  %116 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %117 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @wpabuf_free(i32* %118)
  %120 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %121 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %120, i32 0, i32 3
  store i32* null, i32** %121, align 8
  %122 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %123 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %125 = load i32, i32* @MESG, align 4
  %126 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %124, i32 %125)
  br label %142

127:                                              ; preds = %87
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %131 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = call i64 @wpabuf_len(i32* %132)
  %134 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %135 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %133, %136
  %138 = call i32 (i32, i8*, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %129, i64 %137)
  %139 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %4, align 8
  %140 = load i32, i32* @WAIT_FRAG_ACK, align 4
  %141 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %139, i32 %140)
  br label %142

142:                                              ; preds = %127, %112
  %143 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %143, %struct.wpabuf** %3, align 8
  br label %144

144:                                              ; preds = %142, %64
  %145 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %145
}

declare dso_local i64 @wpabuf_len(i32*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

declare dso_local i64 @wpabuf_head_u8(i32*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @eap_wsc_state(%struct.eap_wsc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
