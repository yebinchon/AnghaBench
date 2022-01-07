; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_header_body_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_header_body_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"\0A\09version 1.0, type %s, length %u, xid 0x%08x\00", align 1
@ofpt_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid (0x%02x)\00", align 1
@OF_HEADER_LEN = common dso_local global i32 0, align 4
@OF_SWITCH_CONFIG_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"\0A\09 flags %s\00", align 1
@ofp_config_str = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid (0x%04x)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c", miss_send_len %u\00", align 1
@OF_PORT_MOD_LEN = common dso_local global i32 0, align 4
@OF_QUEUE_GET_CONFIG_REQUEST_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"\0A\09 port_no %s\00", align 1
@ofpp_str = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@OF_FLOW_REMOVED_LEN = common dso_local global i32 0, align 4
@OF_PORT_STATUS_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"\0A\09 reason %s\00", align 1
@ofppr_str = common dso_local global i32 0, align 4
@OF_PHY_PORT_LEN = common dso_local global i32 0, align 4
@OF_SWITCH_FEATURES_LEN = common dso_local global i32 0, align 4
@OF_ERROR_MSG_LEN = common dso_local global i32 0, align 4
@OF_VENDOR_HEADER_LEN = common dso_local global i32 0, align 4
@OF_PACKET_IN_LEN = common dso_local global i32 0, align 4
@OF_STATS_REQUEST_LEN = common dso_local global i32 0, align 4
@OF_STATS_REPLY_LEN = common dso_local global i32 0, align 4
@OF_PACKET_OUT_LEN = common dso_local global i32 0, align 4
@OF_FLOW_MOD_LEN = common dso_local global i32 0, align 4
@OF_QUEUE_GET_CONFIG_REPLY_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @of10_header_body_print(%struct.TYPE_17__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %9, align 8
  store i32* %16, i32** %14, align 8
  %17 = load i32, i32* %12, align 4
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = load i32, i32* @ofpt_str, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @tok2str(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.TYPE_17__*
  %26 = call i32 @ND_PRINT(%struct.TYPE_17__* %25)
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %357 [
    i32 143, label %28
    i32 139, label %28
    i32 148, label %28
    i32 149, label %28
    i32 131, label %34
    i32 140, label %34
    i32 135, label %70
    i32 132, label %86
    i32 141, label %116
    i32 134, label %132
    i32 144, label %167
    i32 138, label %184
    i32 146, label %184
    i32 147, label %184
    i32 145, label %198
    i32 128, label %215
    i32 137, label %234
    i32 129, label %252
    i32 130, label %269
    i32 136, label %286
    i32 142, label %303
    i32 133, label %320
  ]

28:                                               ; preds = %6, %6, %6, %6
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @OF_HEADER_LEN, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %358

33:                                               ; preds = %28
  br label %357

34:                                               ; preds = %6, %6
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @OF_SWITCH_CONFIG_LEN, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %358

39:                                               ; preds = %34
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %364

45:                                               ; preds = %39
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ND_TCHECK2(i32 %47, i32 2)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = load i32, i32* @ofp_config_str, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @EXTRACT_16BITS(i32* %51)
  %53 = call i32 @tok2str(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_17__*
  %56 = call i32 @ND_PRINT(%struct.TYPE_17__* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ND_TCHECK2(i32 %60, i32 2)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @EXTRACT_16BITS(i32* %63)
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to %struct.TYPE_17__*
  %67 = call i32 @ND_PRINT(%struct.TYPE_17__* %66)
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32* %69, i32** %7, align 8
  br label %386

70:                                               ; preds = %6
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @OF_PORT_MOD_LEN, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %358

75:                                               ; preds = %70
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %364

81:                                               ; preds = %75
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32* @of10_port_mod_print(%struct.TYPE_17__* %82, i32* %83, i32* %84)
  store i32* %85, i32** %7, align 8
  br label %386

86:                                               ; preds = %6
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @OF_QUEUE_GET_CONFIG_REQUEST_LEN, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %358

91:                                               ; preds = %86
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %364

97:                                               ; preds = %91
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ND_TCHECK2(i32 %99, i32 2)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %102 = load i32, i32* @ofpp_str, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @EXTRACT_16BITS(i32* %103)
  %105 = call i32 @tok2str(i32 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to %struct.TYPE_17__*
  %108 = call i32 @ND_PRINT(%struct.TYPE_17__* %107)
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  store i32* %110, i32** %9, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ND_TCHECK2(i32 %112, i32 2)
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32* %115, i32** %7, align 8
  br label %386

116:                                              ; preds = %6
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @OF_FLOW_REMOVED_LEN, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %358

121:                                              ; preds = %116
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %364

127:                                              ; preds = %121
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = call i32* @of10_flow_removed_print(%struct.TYPE_17__* %128, i32* %129, i32* %130)
  store i32* %131, i32** %7, align 8
  br label %386

132:                                              ; preds = %6
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @OF_PORT_STATUS_LEN, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %358

137:                                              ; preds = %132
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %364

143:                                              ; preds = %137
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ND_TCHECK2(i32 %145, i32 1)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %148 = load i32, i32* @ofppr_str, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @tok2str(i32 %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to %struct.TYPE_17__*
  %154 = call i32 @ND_PRINT(%struct.TYPE_17__* %153)
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32* %156, i32** %9, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ND_TCHECK2(i32 %158, i32 7)
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 7
  store i32* %161, i32** %9, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %163 = load i32*, i32** %9, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* @OF_PHY_PORT_LEN, align 4
  %166 = call i32* @of10_phy_ports_print(%struct.TYPE_17__* %162, i32* %163, i32* %164, i32 %165)
  store i32* %166, i32** %7, align 8
  br label %386

167:                                              ; preds = %6
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @OF_SWITCH_FEATURES_LEN, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %358

172:                                              ; preds = %167
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %364

178:                                              ; preds = %172
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32* @of10_features_reply_print(%struct.TYPE_17__* %179, i32* %180, i32* %181, i32 %182)
  store i32* %183, i32** %7, align 8
  br label %386

184:                                              ; preds = %6, %6, %6
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %364

190:                                              ; preds = %184
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %192 = load i32*, i32** %9, align 8
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* @OF_HEADER_LEN, align 4
  %196 = sub nsw i32 %194, %195
  %197 = call i32* @of10_data_print(%struct.TYPE_17__* %191, i32* %192, i32* %193, i32 %196)
  store i32* %197, i32** %7, align 8
  br label %386

198:                                              ; preds = %6
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @OF_ERROR_MSG_LEN, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %358

203:                                              ; preds = %198
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %206, 1
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %364

209:                                              ; preds = %203
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %211 = load i32*, i32** %9, align 8
  %212 = load i32*, i32** %10, align 8
  %213 = load i32, i32* %12, align 4
  %214 = call i32* @of10_error_print(%struct.TYPE_17__* %210, i32* %211, i32* %212, i32 %213)
  store i32* %214, i32** %7, align 8
  br label %386

215:                                              ; preds = %6
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* @OF_VENDOR_HEADER_LEN, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %358

220:                                              ; preds = %215
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %223, 1
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %364

226:                                              ; preds = %220
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %228 = load i32*, i32** %9, align 8
  %229 = load i32*, i32** %10, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @OF_HEADER_LEN, align 4
  %232 = sub nsw i32 %230, %231
  %233 = call i32* @of10_vendor_message_print(%struct.TYPE_17__* %227, i32* %228, i32* %229, i32 %232)
  store i32* %233, i32** %7, align 8
  br label %386

234:                                              ; preds = %6
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* @OF_PACKET_IN_LEN, align 4
  %237 = sub nsw i32 %236, 2
  %238 = icmp slt i32 %235, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %358

240:                                              ; preds = %234
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %243, 1
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %364

246:                                              ; preds = %240
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %248 = load i32*, i32** %9, align 8
  %249 = load i32*, i32** %10, align 8
  %250 = load i32, i32* %12, align 4
  %251 = call i32* @of10_packet_in_print(%struct.TYPE_17__* %247, i32* %248, i32* %249, i32 %250)
  store i32* %251, i32** %7, align 8
  br label %386

252:                                              ; preds = %6
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* @OF_STATS_REQUEST_LEN, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %358

257:                                              ; preds = %252
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %260, 1
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  br label %364

263:                                              ; preds = %257
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %265 = load i32*, i32** %9, align 8
  %266 = load i32*, i32** %10, align 8
  %267 = load i32, i32* %12, align 4
  %268 = call i32* @of10_stats_request_print(%struct.TYPE_17__* %264, i32* %265, i32* %266, i32 %267)
  store i32* %268, i32** %7, align 8
  br label %386

269:                                              ; preds = %6
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* @OF_STATS_REPLY_LEN, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  br label %358

274:                                              ; preds = %269
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp slt i32 %277, 1
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  br label %364

280:                                              ; preds = %274
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %282 = load i32*, i32** %9, align 8
  %283 = load i32*, i32** %10, align 8
  %284 = load i32, i32* %12, align 4
  %285 = call i32* @of10_stats_reply_print(%struct.TYPE_17__* %281, i32* %282, i32* %283, i32 %284)
  store i32* %285, i32** %7, align 8
  br label %386

286:                                              ; preds = %6
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* @OF_PACKET_OUT_LEN, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  br label %358

291:                                              ; preds = %286
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = icmp slt i32 %294, 1
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  br label %364

297:                                              ; preds = %291
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %299 = load i32*, i32** %9, align 8
  %300 = load i32*, i32** %10, align 8
  %301 = load i32, i32* %12, align 4
  %302 = call i32* @of10_packet_out_print(%struct.TYPE_17__* %298, i32* %299, i32* %300, i32 %301)
  store i32* %302, i32** %7, align 8
  br label %386

303:                                              ; preds = %6
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* @OF_FLOW_MOD_LEN, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %303
  br label %358

308:                                              ; preds = %303
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = icmp slt i32 %311, 1
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %364

314:                                              ; preds = %308
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %316 = load i32*, i32** %9, align 8
  %317 = load i32*, i32** %10, align 8
  %318 = load i32, i32* %12, align 4
  %319 = call i32* @of10_flow_mod_print(%struct.TYPE_17__* %315, i32* %316, i32* %317, i32 %318)
  store i32* %319, i32** %7, align 8
  br label %386

320:                                              ; preds = %6
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* @OF_QUEUE_GET_CONFIG_REPLY_LEN, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %320
  br label %358

325:                                              ; preds = %320
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = icmp slt i32 %328, 1
  br i1 %329, label %330, label %331

330:                                              ; preds = %325
  br label %364

331:                                              ; preds = %325
  %332 = load i32*, i32** %9, align 8
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @ND_TCHECK2(i32 %333, i32 2)
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %336 = load i32, i32* @ofpp_str, align 4
  %337 = load i32*, i32** %9, align 8
  %338 = call i32 @EXTRACT_16BITS(i32* %337)
  %339 = call i32 @tok2str(i32 %336, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %338)
  %340 = sext i32 %339 to i64
  %341 = inttoptr i64 %340 to %struct.TYPE_17__*
  %342 = call i32 @ND_PRINT(%struct.TYPE_17__* %341)
  %343 = load i32*, i32** %9, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 2
  store i32* %344, i32** %9, align 8
  %345 = load i32*, i32** %9, align 8
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @ND_TCHECK2(i32 %346, i32 6)
  %348 = load i32*, i32** %9, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 6
  store i32* %349, i32** %9, align 8
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %351 = load i32*, i32** %9, align 8
  %352 = load i32*, i32** %10, align 8
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* @OF_QUEUE_GET_CONFIG_REPLY_LEN, align 4
  %355 = sub nsw i32 %353, %354
  %356 = call i32* @of10_queues_print(%struct.TYPE_17__* %350, i32* %351, i32* %352, i32 %355)
  store i32* %356, i32** %7, align 8
  br label %386

357:                                              ; preds = %6, %33
  br label %364

358:                                              ; preds = %324, %307, %290, %273, %256, %239, %219, %202, %171, %136, %120, %90, %74, %38, %32
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %360 = load i32, i32* @istr, align 4
  %361 = sext i32 %360 to i64
  %362 = inttoptr i64 %361 to %struct.TYPE_17__*
  %363 = call i32 @ND_PRINT(%struct.TYPE_17__* %362)
  br label %364

364:                                              ; preds = %358, %357, %330, %313, %296, %279, %262, %245, %225, %208, %189, %177, %142, %126, %96, %80, %44
  %365 = load i32*, i32** %14, align 8
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %15, align 4
  %368 = load i32, i32* @OF_HEADER_LEN, align 4
  %369 = sub nsw i32 %367, %368
  %370 = call i32 @ND_TCHECK2(i32 %366, i32 %369)
  %371 = load i32*, i32** %14, align 8
  %372 = load i32, i32* %15, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* @OF_HEADER_LEN, align 4
  %376 = sext i32 %375 to i64
  %377 = sub i64 0, %376
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  store i32* %378, i32** %7, align 8
  br label %386

379:                                              ; No predecessors!
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %381 = load i32, i32* @tstr, align 4
  %382 = sext i32 %381 to i64
  %383 = inttoptr i64 %382 to %struct.TYPE_17__*
  %384 = call i32 @ND_PRINT(%struct.TYPE_17__* %383)
  %385 = load i32*, i32** %10, align 8
  store i32* %385, i32** %7, align 8
  br label %386

386:                                              ; preds = %379, %364, %331, %314, %297, %280, %263, %246, %226, %209, %190, %178, %143, %127, %97, %81, %45
  %387 = load i32*, i32** %7, align 8
  ret i32* %387
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_17__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32* @of10_port_mod_print(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32* @of10_flow_removed_print(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32* @of10_phy_ports_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_features_reply_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_data_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_error_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_vendor_message_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_packet_in_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_stats_request_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_stats_reply_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_packet_out_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_flow_mod_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32* @of10_queues_print(%struct.TYPE_17__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
