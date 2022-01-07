; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tnc.c_eap_tnc_build_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tnc.c_eap_tnc_build_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_tnc_data = type { i64, i32, i32, i32* }
%struct.eap_method_ret = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-TNC: Generating Response\00", align 1
@TRUE = common dso_local global i32 0, align 4
@EAP_TNC_VERSION = common dso_local global i32 0, align 4
@EAP_TNC_FLAGS_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@EAP_TNC_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TNC = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"EAP-TNC: Sending out %lu bytes (message sent completely)\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"EAP-TNC: Sending out %lu bytes (%lu more to send)\00", align 1
@WAIT_FRAG_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_tnc_data*, %struct.eap_method_ret*, i32)* @eap_tnc_build_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tnc_build_msg(%struct.eap_tnc_data* %0, %struct.eap_method_ret* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_tnc_data*, align 8
  %6 = alloca %struct.eap_method_ret*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.eap_tnc_data* %0, %struct.eap_tnc_data** %5, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %14 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @TRUE, align 4
  %18 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %19 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @EAP_TNC_VERSION, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %22 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @wpabuf_len(i32* %23)
  %25 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %26 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add i64 1, %29
  %31 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %32 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ugt i64 %30, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %3
  %37 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %38 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %10, align 8
  %42 = load i32, i32* @EAP_TNC_FLAGS_MORE_FRAGMENTS, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %46 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load i32, i32* @EAP_TNC_FLAGS_LENGTH_INCLUDED, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %53, 4
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %49, %36
  br label %56

56:                                               ; preds = %55, %3
  %57 = load i64, i64* %10, align 8
  %58 = add i64 1, %57
  store i64 %58, i64* %11, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @EAP_TNC_FLAGS_LENGTH_INCLUDED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %68 = load i32, i32* @EAP_TYPE_TNC, align 4
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call %struct.wpabuf* @eap_msg_alloc(i32 %67, i32 %68, i64 %69, i32 %70, i32 %71)
  store %struct.wpabuf* %72, %struct.wpabuf** %8, align 8
  %73 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %74 = icmp eq %struct.wpabuf* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %151

76:                                               ; preds = %66
  %77 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @wpabuf_put_u8(%struct.wpabuf* %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @EAP_TNC_FLAGS_LENGTH_INCLUDED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %86 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %87 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @wpabuf_len(i32* %88)
  %90 = call i32 @wpabuf_put_be32(%struct.wpabuf* %85, i64 %89)
  br label %91

91:                                               ; preds = %84, %76
  %92 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %93 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %94 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @wpabuf_head_u8(i32* %95)
  %97 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %98 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @wpabuf_put_data(%struct.wpabuf* %92, i64 %100, i64 %101)
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %105 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load i32, i32* @METHOD_MAY_CONT, align 4
  %109 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %110 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @DECISION_FAIL, align 4
  %112 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %113 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %115 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %118 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @wpabuf_len(i32* %119)
  %121 = icmp eq i64 %116, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %91
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load i64, i64* %10, align 8
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %123, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %124)
  %126 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %127 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @wpabuf_free(i32* %128)
  %130 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %131 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  %132 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %133 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  br label %149

134:                                              ; preds = %91
  %135 = load i32, i32* @MSG_DEBUG, align 4
  %136 = load i64, i64* %10, align 8
  %137 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %138 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = call i64 @wpabuf_len(i32* %139)
  %141 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %142 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %140, %143
  %145 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %136, i64 %144)
  %146 = load i32, i32* @WAIT_FRAG_ACK, align 4
  %147 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %5, align 8
  %148 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %134, %122
  %150 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %150, %struct.wpabuf** %4, align 8
  br label %151

151:                                              ; preds = %149, %75
  %152 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %152
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(i32*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

declare dso_local i64 @wpabuf_head_u8(i32*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
