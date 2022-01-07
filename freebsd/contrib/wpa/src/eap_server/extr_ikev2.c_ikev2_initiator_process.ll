; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_initiator_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_initiator_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.ikev2_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ikev2_payloads = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"IKEV2: Received message (len %lu)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"IKEV2: Too short frame to include HDR\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"IKEV2:   IKE_SA Initiator's SPI\00", align 1
@IKEV2_SPI_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"IKEV2:   Next Payload: %u  Version: 0x%x  Exchange Type: %u\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"IKEV2:   Message ID: %u  Length: %u\00", align 1
@IKEV2_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"IKEV2: Unsupported HDR version 0x%x (expected 0x%x)\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"IKEV2: Invalid length (HDR: %lu != RX: %lu)\00", align 1
@IKEV2_HDR_INITIATOR = common dso_local global i32 0, align 4
@IKEV2_HDR_RESPONSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"IKEV2: Unexpected Flags value 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"IKEV2: Unexpected IKE_SA Initiator's SPI\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"IKEV2: Unexpected IKE_SA Responder's SPI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ikev2_initiator_process(%struct.ikev2_initiator_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ikev2_initiator_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.ikev2_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ikev2_payloads, align 4
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %12 = load i32, i32* @MSG_MSGDUMP, align 4
  %13 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %14 = call i32 @wpabuf_len(%struct.wpabuf* %13)
  %15 = sext i32 %14 to i64
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = call i32 @wpabuf_len(%struct.wpabuf* %17)
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 32
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %191

24:                                               ; preds = %2
  %25 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %26 = call i64 @wpabuf_head(%struct.wpabuf* %25)
  %27 = inttoptr i64 %26 to %struct.ikev2_hdr*
  store %struct.ikev2_hdr* %27, %struct.ikev2_hdr** %6, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %29 = call i32* @wpabuf_head_u8(%struct.wpabuf* %28)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %31 = call i32 @wpabuf_len(%struct.wpabuf* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %10, align 8
  %34 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %35 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @WPA_GET_BE32(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %39 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WPA_GET_BE32(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %47 = call i32 @wpa_hexdump(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %53 = call i32 @wpa_hexdump(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %59 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %62 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %60, i32 %63)
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %70 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IKEV2_VERSION, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %24
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %77 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IKEV2_VERSION, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %78, i32 %79)
  store i32 -1, i32* %3, align 4
  br label %191

81:                                               ; preds = %24
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %84 = call i32 @wpabuf_len(%struct.wpabuf* %83)
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32, i32* @MSG_INFO, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %91 = call i32 @wpabuf_len(%struct.wpabuf* %90)
  %92 = sext i32 %91 to i64
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %89, i64 %92)
  store i32 -1, i32* %3, align 4
  br label %191

94:                                               ; preds = %81
  %95 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %96 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %97 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @ikev2_validate_rx_state(%struct.ikev2_initiator_data* %95, i32 %98, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %191

103:                                              ; preds = %94
  %104 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %105 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IKEV2_HDR_INITIATOR, align 4
  %108 = load i32, i32* @IKEV2_HDR_RESPONSE, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = load i32, i32* @IKEV2_HDR_RESPONSE, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load i32, i32* @MSG_INFO, align 4
  %115 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %116 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  store i32 -1, i32* %3, align 4
  br label %191

119:                                              ; preds = %103
  %120 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %121 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 128
  br i1 %123, label %124, label %151

124:                                              ; preds = %119
  %125 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %126 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %129 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %132 = call i64 @os_memcmp(i32 %127, i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = load i32, i32* @MSG_INFO, align 4
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %191

137:                                              ; preds = %124
  %138 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %139 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %142 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IKEV2_SPI_LEN, align 4
  %145 = call i64 @os_memcmp(i32 %140, i32 %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load i32, i32* @MSG_INFO, align 4
  %149 = call i32 (i32, i8*, ...) @wpa_printf(i32 %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %191

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150, %119
  %152 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %153 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %152, i64 1
  %154 = bitcast %struct.ikev2_hdr* %153 to i32*
  store i32* %154, i32** %9, align 8
  %155 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %156 = getelementptr inbounds %struct.ikev2_hdr, %struct.ikev2_hdr* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = call i64 @ikev2_parse_payloads(%struct.ikev2_payloads* %11, i32 %157, i32* %158, i32* %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  store i32 -1, i32* %3, align 4
  br label %191

163:                                              ; preds = %151
  %164 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %165 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %190 [
    i32 128, label %167
    i32 129, label %182
    i32 131, label %189
    i32 130, label %189
  ]

167:                                              ; preds = %163
  %168 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %169 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %170 = call i32 @ikev2_process_sa_init(%struct.ikev2_initiator_data* %168, %struct.ikev2_hdr* %169, %struct.ikev2_payloads* %11)
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 -1, i32* %3, align 4
  br label %191

173:                                              ; preds = %167
  %174 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %175 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @wpabuf_free(i32 %176)
  %178 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %179 = call i32 @wpabuf_dup(%struct.wpabuf* %178)
  %180 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %181 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  br label %190

182:                                              ; preds = %163
  %183 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %4, align 8
  %184 = load %struct.ikev2_hdr*, %struct.ikev2_hdr** %6, align 8
  %185 = call i32 @ikev2_process_sa_auth(%struct.ikev2_initiator_data* %183, %struct.ikev2_hdr* %184, %struct.ikev2_payloads* %11)
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 -1, i32* %3, align 4
  br label %191

188:                                              ; preds = %182
  br label %190

189:                                              ; preds = %163, %163
  br label %190

190:                                              ; preds = %163, %189, %188, %173
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %187, %172, %162, %147, %134, %113, %102, %86, %74, %21
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32* @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @WPA_GET_BE32(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i64 @ikev2_validate_rx_state(%struct.ikev2_initiator_data*, i32, i32) #1

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local i64 @ikev2_parse_payloads(%struct.ikev2_payloads*, i32, i32*, i32*) #1

declare dso_local i32 @ikev2_process_sa_init(%struct.ikev2_initiator_data*, %struct.ikev2_hdr*, %struct.ikev2_payloads*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_dup(%struct.wpabuf*) #1

declare dso_local i32 @ikev2_process_sa_auth(%struct.ikev2_initiator_data*, %struct.ikev2_hdr*, %struct.ikev2_payloads*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
