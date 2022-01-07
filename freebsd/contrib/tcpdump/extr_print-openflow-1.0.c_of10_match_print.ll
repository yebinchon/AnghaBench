; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_match_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_match_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFPFW_U = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%swildcards 0x%08x (bogus)\00", align 1
@OFPFW_IN_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%smatch in_port %s\00", align 1
@ofpp_str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@OFPFW_DL_SRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%smatch dl_src %s\00", align 1
@OFPFW_DL_DST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"%smatch dl_dst %s\00", align 1
@OFPFW_DL_VLAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"%smatch dl_vlan %s\00", align 1
@OFPFW_DL_VLAN_PCP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"%smatch dl_vlan_pcp %s\00", align 1
@OFPFW_DL_TYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"%smatch dl_type 0x%04x\00", align 1
@OFPFW_NW_TOS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"%smatch nw_tos 0x%02x\00", align 1
@OFPFW_NW_PROTO = common dso_local global i32 0, align 4
@ETHERTYPE_ARP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"arp_opcode\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"nw_proto\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"%smatch %s %u\00", align 1
@OFPFW_NW_SRC_MASK = common dso_local global i32 0, align 4
@OFPFW_NW_SRC_SHIFT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"%smatch nw_src %s/%u\00", align 1
@OFPFW_NW_DST_MASK = common dso_local global i32 0, align 4
@OFPFW_NW_DST_SHIFT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"%smatch nw_dst %s/%u\00", align 1
@OFPFW_TP_SRC = common dso_local global i32 0, align 4
@ETHERTYPE_IP = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"icmp_type\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"tp_src\00", align 1
@OFPFW_TP_DST = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"icmp_code\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"tp_dst\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*, i32*)* @of10_match_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_match_print(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ND_TCHECK2(i32 %16, i32 4)
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @EXTRACT_32BITS(i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @OFPFW_U, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @ND_PRINT(i32* %29)
  br label %31

31:                                               ; preds = %24, %4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ND_TCHECK2(i32 %35, i32 2)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @OFPFW_IN_PORT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %31
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @ofpp_str, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @EXTRACT_16BITS(i32* %45)
  %47 = call i32 @tok2str(i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @ND_PRINT(i32* %49)
  br label %51

51:                                               ; preds = %41, %31
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %57 = call i32 @ND_TCHECK2(i32 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @OFPFW_DL_SRC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %51
  %63 = load i32*, i32** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @etheraddr_string(i32* %65, i32* %66)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 @ND_PRINT(i32* %69)
  br label %71

71:                                               ; preds = %62, %51
  %72 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %79 = call i32 @ND_TCHECK2(i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @OFPFW_DL_DST, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %71
  %85 = load i32*, i32** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @etheraddr_string(i32* %87, i32* %88)
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i32*
  %92 = call i32 @ND_PRINT(i32* %91)
  br label %93

93:                                               ; preds = %84, %71
  %94 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %8, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ND_TCHECK2(i32 %99, i32 2)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @OFPFW_DL_VLAN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %93
  %106 = load i32*, i32** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = call i64 @EXTRACT_16BITS(i32* %108)
  %110 = call i32 @vlan_str(i64 %109)
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i32*
  %113 = call i32 @ND_PRINT(i32* %112)
  br label %114

114:                                              ; preds = %105, %93
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32* %116, i32** %8, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ND_TCHECK2(i32 %118, i32 1)
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @OFPFW_DL_VLAN_PCP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %114
  %125 = load i32*, i32** %6, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @pcp_str(i32 %128)
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i32*
  %132 = call i32 @ND_PRINT(i32* %131)
  br label %133

133:                                              ; preds = %124, %114
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32* %135, i32** %8, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ND_TCHECK2(i32 %137, i32 1)
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32* %140, i32** %8, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ND_TCHECK2(i32 %142, i32 2)
  %144 = load i32*, i32** %8, align 8
  %145 = call i64 @EXTRACT_16BITS(i32* %144)
  store i64 %145, i64* %11, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  store i32* %147, i32** %8, align 8
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @OFPFW_DL_TYPE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %133
  %153 = load i32*, i32** %6, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = load i64, i64* %11, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = call i32 @ND_PRINT(i32* %156)
  br label %158

158:                                              ; preds = %152, %133
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ND_TCHECK2(i32 %160, i32 1)
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @OFPFW_NW_TOS, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %158
  %167 = load i32*, i32** %6, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to i32*
  %173 = call i32 @ND_PRINT(i32* %172)
  br label %174

174:                                              ; preds = %166, %158
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  store i32* %176, i32** %8, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ND_TCHECK2(i32 %178, i32 1)
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  store i64 %182, i64* %12, align 8
  %183 = load i32*, i32** %8, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  store i32* %184, i32** %8, align 8
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @OFPFW_NW_PROTO, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %208, label %189

189:                                              ; preds = %174
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @OFPFW_DL_TYPE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %189
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* @ETHERTYPE_ARP, align 8
  %197 = icmp eq i64 %195, %196
  br label %198

198:                                              ; preds = %194, %189
  %199 = phi i1 [ false, %189 ], [ %197, %194 ]
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)
  store i8* %201, i8** %14, align 8
  %202 = load i32*, i32** %6, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = load i8*, i8** %14, align 8
  %205 = load i64, i64* %12, align 8
  %206 = inttoptr i64 %205 to i32*
  %207 = call i32 @ND_PRINT(i32* %206)
  br label %208

208:                                              ; preds = %198, %174
  %209 = load i32*, i32** %8, align 8
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ND_TCHECK2(i32 %210, i32 2)
  %212 = load i32*, i32** %8, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  store i32* %213, i32** %8, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ND_TCHECK2(i32 %215, i32 4)
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* @OFPFW_NW_SRC_MASK, align 4
  %219 = and i32 %217, %218
  %220 = load i32, i32* @OFPFW_NW_SRC_SHIFT, align 4
  %221 = ashr i32 %219, %220
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp slt i32 %222, 32
  br i1 %223, label %224, label %235

224:                                              ; preds = %208
  %225 = load i32*, i32** %6, align 8
  %226 = load i8*, i8** %7, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = load i32*, i32** %8, align 8
  %229 = call i32 @ipaddr_string(i32* %227, i32* %228)
  %230 = load i32, i32* %13, align 4
  %231 = sub nsw i32 32, %230
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i32*
  %234 = call i32 @ND_PRINT(i32* %233)
  br label %235

235:                                              ; preds = %224, %208
  %236 = load i32*, i32** %8, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 4
  store i32* %237, i32** %8, align 8
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ND_TCHECK2(i32 %239, i32 4)
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @OFPFW_NW_DST_MASK, align 4
  %243 = and i32 %241, %242
  %244 = load i32, i32* @OFPFW_NW_DST_SHIFT, align 4
  %245 = ashr i32 %243, %244
  store i32 %245, i32* %13, align 4
  %246 = load i32, i32* %13, align 4
  %247 = icmp slt i32 %246, 32
  br i1 %247, label %248, label %259

248:                                              ; preds = %235
  %249 = load i32*, i32** %6, align 8
  %250 = load i8*, i8** %7, align 8
  %251 = load i32*, i32** %6, align 8
  %252 = load i32*, i32** %8, align 8
  %253 = call i32 @ipaddr_string(i32* %251, i32* %252)
  %254 = load i32, i32* %13, align 4
  %255 = sub nsw i32 32, %254
  %256 = sext i32 %255 to i64
  %257 = inttoptr i64 %256 to i32*
  %258 = call i32 @ND_PRINT(i32* %257)
  br label %259

259:                                              ; preds = %248, %235
  %260 = load i32*, i32** %8, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 4
  store i32* %261, i32** %8, align 8
  %262 = load i32*, i32** %8, align 8
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @ND_TCHECK2(i32 %263, i32 2)
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @OFPFW_TP_SRC, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %298, label %269

269:                                              ; preds = %259
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* @OFPFW_DL_TYPE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %287, label %274

274:                                              ; preds = %269
  %275 = load i64, i64* %11, align 8
  %276 = load i64, i64* @ETHERTYPE_IP, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %274
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* @OFPFW_NW_PROTO, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %278
  %284 = load i64, i64* %12, align 8
  %285 = load i64, i64* @IPPROTO_ICMP, align 8
  %286 = icmp eq i64 %284, %285
  br label %287

287:                                              ; preds = %283, %278, %274, %269
  %288 = phi i1 [ false, %278 ], [ false, %274 ], [ false, %269 ], [ %286, %283 ]
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  store i8* %290, i8** %14, align 8
  %291 = load i32*, i32** %6, align 8
  %292 = load i8*, i8** %7, align 8
  %293 = load i8*, i8** %14, align 8
  %294 = load i32*, i32** %8, align 8
  %295 = call i64 @EXTRACT_16BITS(i32* %294)
  %296 = inttoptr i64 %295 to i32*
  %297 = call i32 @ND_PRINT(i32* %296)
  br label %298

298:                                              ; preds = %287, %259
  %299 = load i32*, i32** %8, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 2
  store i32* %300, i32** %8, align 8
  %301 = load i32*, i32** %8, align 8
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @ND_TCHECK2(i32 %302, i32 2)
  %304 = load i32, i32* %10, align 4
  %305 = load i32, i32* @OFPFW_TP_DST, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %337, label %308

308:                                              ; preds = %298
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* @OFPFW_DL_TYPE, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %326, label %313

313:                                              ; preds = %308
  %314 = load i64, i64* %11, align 8
  %315 = load i64, i64* @ETHERTYPE_IP, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %326

317:                                              ; preds = %313
  %318 = load i32, i32* %10, align 4
  %319 = load i32, i32* @OFPFW_NW_PROTO, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %317
  %323 = load i64, i64* %12, align 8
  %324 = load i64, i64* @IPPROTO_ICMP, align 8
  %325 = icmp eq i64 %323, %324
  br label %326

326:                                              ; preds = %322, %317, %313, %308
  %327 = phi i1 [ false, %317 ], [ false, %313 ], [ false, %308 ], [ %325, %322 ]
  %328 = zext i1 %327 to i64
  %329 = select i1 %327, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)
  store i8* %329, i8** %14, align 8
  %330 = load i32*, i32** %6, align 8
  %331 = load i8*, i8** %7, align 8
  %332 = load i8*, i8** %14, align 8
  %333 = load i32*, i32** %8, align 8
  %334 = call i64 @EXTRACT_16BITS(i32* %333)
  %335 = inttoptr i64 %334 to i32*
  %336 = call i32 @ND_PRINT(i32* %335)
  br label %337

337:                                              ; preds = %326, %298
  %338 = load i32*, i32** %8, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 2
  store i32* %339, i32** %5, align 8
  br label %347

340:                                              ; No predecessors!
  %341 = load i32*, i32** %6, align 8
  %342 = load i32, i32* @tstr, align 4
  %343 = sext i32 %342 to i64
  %344 = inttoptr i64 %343 to i32*
  %345 = call i32 @ND_PRINT(i32* %344)
  %346 = load i32*, i32** %9, align 8
  store i32* %346, i32** %5, align 8
  br label %347

347:                                              ; preds = %340, %337
  %348 = load i32*, i32** %5, align 8
  ret i32* %348
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @etheraddr_string(i32*, i32*) #1

declare dso_local i32 @vlan_str(i64) #1

declare dso_local i32 @pcp_str(i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
