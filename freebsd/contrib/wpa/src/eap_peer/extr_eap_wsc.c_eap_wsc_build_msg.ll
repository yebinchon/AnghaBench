; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_wsc_build_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_wsc_build_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_wsc_data = type { i64, i32, i32, i64, i32* }
%struct.eap_method_ret = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-WSC: Generating Response\00", align 1
@TRUE = common dso_local global i32 0, align 4
@WSC_FLAGS_MF = common dso_local global i32 0, align 4
@WSC_FLAGS_LF = common dso_local global i32 0, align 4
@EAP_VENDOR_WFA = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE_WSC = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"EAP-WSC: Sending out %lu bytes (message sent completely)\00", align 1
@FAIL = common dso_local global i64 0, align 8
@WSC_ACK = common dso_local global i32 0, align 4
@WSC_NACK = common dso_local global i32 0, align 4
@WSC_Done = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i32 0, align 4
@MESG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"EAP-WSC: Sending out %lu bytes (%lu more to send)\00", align 1
@WAIT_FRAG_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_wsc_data*, %struct.eap_method_ret*, i32)* @eap_wsc_build_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_wsc_build_msg(%struct.eap_wsc_data* %0, %struct.eap_method_ret* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_wsc_data*, align 8
  %6 = alloca %struct.eap_method_ret*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.eap_wsc_data* %0, %struct.eap_wsc_data** %5, align 8
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
  store i32 0, i32* %9, align 4
  %20 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %21 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @wpabuf_len(i32* %22)
  %24 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %25 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = add i64 2, %28
  %30 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %31 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %29, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %3
  %36 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %37 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  %41 = load i32, i32* @WSC_FLAGS_MF, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %45 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load i32, i32* @WSC_FLAGS_LF, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %52, 2
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %48, %35
  br label %55

55:                                               ; preds = %54, %3
  %56 = load i64, i64* %10, align 8
  %57 = add i64 2, %56
  store i64 %57, i64* %11, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @WSC_FLAGS_LF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 2
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i32, i32* @EAP_VENDOR_WFA, align 4
  %67 = load i32, i32* @EAP_VENDOR_TYPE_WSC, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call %struct.wpabuf* @eap_msg_alloc(i32 %66, i32 %67, i64 %68, i32 %69, i32 %70)
  store %struct.wpabuf* %71, %struct.wpabuf** %8, align 8
  %72 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %73 = icmp eq %struct.wpabuf* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %190

75:                                               ; preds = %65
  %76 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %77 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %78 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @wpabuf_put_u8(%struct.wpabuf* %76, i32 %79)
  %81 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @wpabuf_put_u8(%struct.wpabuf* %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @WSC_FLAGS_LF, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %75
  %89 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %90 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %91 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @wpabuf_len(i32* %92)
  %94 = call i32 @wpabuf_put_be16(%struct.wpabuf* %89, i64 %93)
  br label %95

95:                                               ; preds = %88, %75
  %96 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %97 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %98 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @wpabuf_head_u8(i32* %99)
  %101 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %102 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @wpabuf_put_data(%struct.wpabuf* %96, i64 %104, i64 %105)
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %109 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load i32, i32* @METHOD_MAY_CONT, align 4
  %113 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %114 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @DECISION_FAIL, align 4
  %116 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %117 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %119 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %122 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @wpabuf_len(i32* %123)
  %125 = icmp eq i64 %120, %124
  br i1 %125, label %126, label %173

126:                                              ; preds = %95
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load i64, i64* %10, align 8
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %128)
  %130 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %131 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @wpabuf_free(i32* %132)
  %134 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %135 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %134, i32 0, i32 4
  store i32* null, i32** %135, align 8
  %136 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %137 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %139 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @FAIL, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %126
  %144 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %145 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @WSC_ACK, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %161, label %149

149:                                              ; preds = %143, %126
  %150 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %151 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @WSC_NACK, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %157 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @WSC_Done, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %155, %149, %143
  %162 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %163 = load i64, i64* @FAIL, align 8
  %164 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %162, i64 %163)
  %165 = load i32, i32* @METHOD_DONE, align 4
  %166 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %167 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  br label %172

168:                                              ; preds = %155
  %169 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %170 = load i64, i64* @MESG, align 8
  %171 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %169, i64 %170)
  br label %172

172:                                              ; preds = %168, %161
  br label %188

173:                                              ; preds = %95
  %174 = load i32, i32* @MSG_DEBUG, align 4
  %175 = load i64, i64* %10, align 8
  %176 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %177 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = call i64 @wpabuf_len(i32* %178)
  %180 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %181 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = sub i64 %179, %182
  %184 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %175, i64 %183)
  %185 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %5, align 8
  %186 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %187 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %185, i64 %186)
  br label %188

188:                                              ; preds = %173, %172
  %189 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %189, %struct.wpabuf** %4, align 8
  br label %190

190:                                              ; preds = %188, %74
  %191 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %191
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wpabuf_len(i32*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

declare dso_local i64 @wpabuf_head_u8(i32*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @eap_wsc_state(%struct.eap_wsc_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
