; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_eap_tnc_build_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_eap_tnc_build_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_tnc_data = type { i64, i32, i32, i32, i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-TNC: Generating Request\00", align 1
@EAP_TNC_VERSION = common dso_local global i32 0, align 4
@EAP_TNC_FLAGS_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@EAP_TNC_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TNC = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"EAP-TNC: Sending out %lu bytes (message sent completely)\00", align 1
@FAIL = common dso_local global i64 0, align 8
@DONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"EAP-TNC: Sending out %lu bytes (%lu more to send)\00", align 1
@WAIT_FRAG_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_tnc_data*, i32)* @eap_tnc_build_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tnc_build_msg(%struct.eap_tnc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_tnc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.eap_tnc_data* %0, %struct.eap_tnc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EAP_TNC_VERSION, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %14 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @wpabuf_len(i32* %15)
  %17 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %18 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 1, %21
  %23 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %24 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %22, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %2
  %29 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %30 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* @EAP_TNC_FLAGS_MORE_FRAGMENTS, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %38 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load i32, i32* @EAP_TNC_FLAGS_LENGTH_INCLUDED, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %45, 4
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %41, %28
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i64, i64* %8, align 8
  %50 = add i64 1, %49
  store i64 %50, i64* %9, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @EAP_TNC_FLAGS_LENGTH_INCLUDED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %60 = load i32, i32* @EAP_TYPE_TNC, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.wpabuf* @eap_msg_alloc(i32 %59, i32 %60, i64 %61, i32 %62, i32 %63)
  store %struct.wpabuf* %64, %struct.wpabuf** %6, align 8
  %65 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %66 = icmp eq %struct.wpabuf* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %175

68:                                               ; preds = %58
  %69 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @wpabuf_put_u8(%struct.wpabuf* %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @EAP_TNC_FLAGS_LENGTH_INCLUDED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %78 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %79 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @wpabuf_len(i32* %80)
  %82 = call i32 @wpabuf_put_be32(%struct.wpabuf* %77, i64 %81)
  br label %83

83:                                               ; preds = %76, %68
  %84 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %85 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %86 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @wpabuf_head_u8(i32* %87)
  %89 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %90 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @wpabuf_put_data(%struct.wpabuf* %84, i64 %92, i64 %93)
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %97 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %101 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %104 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @wpabuf_len(i32* %105)
  %107 = icmp eq i64 %102, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %83
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = load i64, i64* %8, align 8
  %111 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  %112 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %113 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @wpabuf_free(i32* %114)
  %116 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %117 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %116, i32 0, i32 5
  store i32* null, i32** %117, align 8
  %118 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %119 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %121 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %108
  %125 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %126 = load i64, i64* @FAIL, align 8
  %127 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %125, i64 %126)
  br label %138

128:                                              ; preds = %108
  %129 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %130 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %135 = load i64, i64* @DONE, align 8
  %136 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %134, i64 %135)
  br label %137

137:                                              ; preds = %133, %128
  br label %138

138:                                              ; preds = %137, %124
  br label %173

139:                                              ; preds = %83
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %143 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %142, i32 0, i32 5
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @wpabuf_len(i32* %144)
  %146 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %147 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %145, %148
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %141, i64 %149)
  %151 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %152 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @FAIL, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %139
  %157 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %158 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %157, i32 0, i32 2
  store i32 1, i32* %158, align 4
  br label %169

159:                                              ; preds = %139
  %160 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %161 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DONE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %167 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %166, i32 0, i32 3
  store i32 1, i32* %167, align 8
  br label %168

168:                                              ; preds = %165, %159
  br label %169

169:                                              ; preds = %168, %156
  %170 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %4, align 8
  %171 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %172 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %170, i64 %171)
  br label %173

173:                                              ; preds = %169, %138
  %174 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %174, %struct.wpabuf** %3, align 8
  br label %175

175:                                              ; preds = %173, %67
  %176 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %176
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(i32*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

declare dso_local i64 @wpabuf_head_u8(i32*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @eap_tnc_set_state(%struct.eap_tnc_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
