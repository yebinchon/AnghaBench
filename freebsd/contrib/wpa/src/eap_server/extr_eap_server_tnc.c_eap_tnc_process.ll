; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_eap_tnc_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_eap_tnc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_tnc_data = type { i64, %struct.wpabuf* }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TNC = common dso_local global i32 0, align 4
@DONE = common dso_local global i64 0, align 8
@FAIL = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"EAP-TNC: Peer acknowledged the last message\00", align 1
@EAP_TNC_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"EAP-TNC: Message underflow\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"EAP-TNC: Invalid Message Length (%d; %ld remaining in this msg)\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"EAP-TNC: Received packet: Flags 0x%x Message Length %u\00", align 1
@WAIT_FRAG_ACK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"EAP-TNC: Unexpected payload in WAIT_FRAG_ACK state\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"EAP-TNC: Fragment acknowledged\00", align 1
@CONTINUE = common dso_local global i64 0, align 8
@EAP_TNC_FLAGS_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@FRAG_ACK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"EAP-TNC: All fragments received\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"EAP-TNC: Received payload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_tnc_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_tnc_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_tnc_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpabuf, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.eap_tnc_data*
  store %struct.eap_tnc_data* %15, %struct.eap_tnc_data** %7, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %17 = load i32, i32* @EAP_TYPE_TNC, align 4
  %18 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %19 = call i32* @eap_hdr_validate(i32 %16, i32 %17, %struct.wpabuf* %18, i64* %10)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %234

23:                                               ; preds = %3
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %31 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %37 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FAIL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %29
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %234

44:                                               ; preds = %35, %23
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %8, align 8
  %51 = load i32, i32* %49, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %47
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @EAP_TNC_FLAGS_LENGTH_INCLUDED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %102

57:                                               ; preds = %52
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = ptrtoint i32* %58 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = icmp slt i64 %63, 4
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %69 = load i64, i64* @FAIL, align 8
  %70 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %68, i64 %69)
  br label %234

71:                                               ; preds = %57
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @WPA_GET_BE32(i32* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32* %75, i32** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = ptrtoint i32* %77 to i64
  %80 = ptrtoint i32* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = icmp slt i32 %76, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %71
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %86, 75000
  br i1 %87, label %88, label %101

88:                                               ; preds = %85, %71
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = ptrtoint i32* %91 to i64
  %94 = ptrtoint i32* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  %97 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %90, i64 %96)
  %98 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %99 = load i64, i64* @FAIL, align 8
  %100 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %98, i64 %99)
  br label %234

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101, %52
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %108 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %102
  %113 = load i64, i64* %10, align 8
  %114 = icmp ugt i64 %113, 1
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %119 = load i64, i64* @FAIL, align 8
  %120 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %118, i64 %119)
  br label %234

121:                                              ; preds = %112
  %122 = load i32, i32* @MSG_DEBUG, align 4
  %123 = call i32 (i32, i8*, ...) @wpa_printf(i32 %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %124 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %125 = load i64, i64* @CONTINUE, align 8
  %126 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %124, i64 %125)
  br label %234

127:                                              ; preds = %102
  %128 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %129 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %128, i32 0, i32 1
  %130 = load %struct.wpabuf*, %struct.wpabuf** %129, align 8
  %131 = icmp ne %struct.wpabuf* %130, null
  br i1 %131, label %132, label %148

132:                                              ; preds = %127
  %133 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = ptrtoint i32* %135 to i64
  %138 = ptrtoint i32* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = call i64 @eap_tnc_process_cont(%struct.eap_tnc_data* %133, i32* %134, i32 %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %146 = load i64, i64* @FAIL, align 8
  %147 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %145, i64 %146)
  br label %234

148:                                              ; preds = %132, %127
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @EAP_TNC_FLAGS_MORE_FRAGMENTS, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %148
  %154 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = load i32*, i32** %8, align 8
  %160 = ptrtoint i32* %158 to i64
  %161 = ptrtoint i32* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sdiv exact i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = call i64 @eap_tnc_process_fragment(%struct.eap_tnc_data* %154, i32 %155, i32 %156, i32* %157, i32 %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %153
  %168 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %169 = load i64, i64* @FAIL, align 8
  %170 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %168, i64 %169)
  br label %175

171:                                              ; preds = %153
  %172 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %173 = load i64, i64* @FRAG_ACK, align 8
  %174 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %172, i64 %173)
  br label %175

175:                                              ; preds = %171, %167
  br label %234

176:                                              ; preds = %148
  %177 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %178 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @FRAG_ACK, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = load i32, i32* @MSG_DEBUG, align 4
  %184 = call i32 (i32, i8*, ...) @wpa_printf(i32 %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %185 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %186 = load i64, i64* @CONTINUE, align 8
  %187 = call i32 @eap_tnc_set_state(%struct.eap_tnc_data* %185, i64 %186)
  br label %188

188:                                              ; preds = %182, %176
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %191 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %190, i32 0, i32 1
  %192 = load %struct.wpabuf*, %struct.wpabuf** %191, align 8
  %193 = icmp eq %struct.wpabuf* %192, null
  br i1 %193, label %194, label %206

194:                                              ; preds = %189
  %195 = load i32*, i32** %8, align 8
  %196 = load i32*, i32** %9, align 8
  %197 = load i32*, i32** %8, align 8
  %198 = ptrtoint i32* %196 to i64
  %199 = ptrtoint i32* %197 to i64
  %200 = sub i64 %198, %199
  %201 = sdiv exact i64 %200, 4
  %202 = trunc i64 %201 to i32
  %203 = call i32 @wpabuf_set(%struct.wpabuf* %13, i32* %195, i32 %202)
  %204 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %205 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %204, i32 0, i32 1
  store %struct.wpabuf* %13, %struct.wpabuf** %205, align 8
  br label %206

206:                                              ; preds = %194, %189
  %207 = load i32, i32* @MSG_MSGDUMP, align 4
  %208 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %209 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %208, i32 0, i32 1
  %210 = load %struct.wpabuf*, %struct.wpabuf** %209, align 8
  %211 = call i32 @wpabuf_head(%struct.wpabuf* %210)
  %212 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %213 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %212, i32 0, i32 1
  %214 = load %struct.wpabuf*, %struct.wpabuf** %213, align 8
  %215 = call i32 @wpabuf_len(%struct.wpabuf* %214)
  %216 = call i32 @wpa_hexdump_ascii(i32 %207, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %211, i32 %215)
  %217 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %218 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %219 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %218, i32 0, i32 1
  %220 = load %struct.wpabuf*, %struct.wpabuf** %219, align 8
  %221 = call i32 @tncs_process(%struct.eap_tnc_data* %217, %struct.wpabuf* %220)
  %222 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %223 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %222, i32 0, i32 1
  %224 = load %struct.wpabuf*, %struct.wpabuf** %223, align 8
  %225 = icmp ne %struct.wpabuf* %224, %13
  br i1 %225, label %226, label %231

226:                                              ; preds = %206
  %227 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %228 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %227, i32 0, i32 1
  %229 = load %struct.wpabuf*, %struct.wpabuf** %228, align 8
  %230 = call i32 @wpabuf_free(%struct.wpabuf* %229)
  br label %231

231:                                              ; preds = %226, %206
  %232 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %233 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %232, i32 0, i32 1
  store %struct.wpabuf* null, %struct.wpabuf** %233, align 8
  br label %234

234:                                              ; preds = %231, %175, %144, %121, %115, %88, %65, %41, %22
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_tnc_set_state(%struct.eap_tnc_data*, i64) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i64 @eap_tnc_process_cont(%struct.eap_tnc_data*, i32*, i32) #1

declare dso_local i64 @eap_tnc_process_fragment(%struct.eap_tnc_data*, i32, i32, i32*, i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @tncs_process(%struct.eap_tnc_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
