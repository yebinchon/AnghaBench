; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_cons_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_cons_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.dhcp_packet = type { i8*, i8*, i8* }
%struct.tree_cache = type { i32 }

@DHO_DHCP_MAX_MESSAGE_SIZE = common dso_local global i64 0, align 8
@DHCP_FIXED_LEN = common dso_local global i32 0, align 4
@DHO_DHCP_MESSAGE_TYPE = common dso_local global i8 0, align 1
@DHO_DHCP_SERVER_IDENTIFIER = common dso_local global i8 0, align 1
@DHO_DHCP_LEASE_TIME = common dso_local global i8 0, align 1
@DHO_DHCP_MESSAGE = common dso_local global i8 0, align 1
@DHO_DHCP_PARAMETER_REQUEST_LIST = common dso_local global i64 0, align 8
@dhcp_option_default_priority_list = common dso_local global i8* null, align 8
@sizeof_dhcp_option_default_priority_list = common dso_local global i32 0, align 4
@DHCP_FILE_LEN = common dso_local global i64 0, align 8
@DHCP_SNAME_LEN = common dso_local global i32 0, align 4
@DHCP_OPTIONS_COOKIE = common dso_local global i8* null, align 8
@DHO_END = common dso_local global i8 0, align 1
@DHCP_FIXED_NON_UDP = common dso_local global i32 0, align 4
@DHO_DHCP_OPTION_OVERLOAD = common dso_local global i8 0, align 1
@DHO_PAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cons_options(%struct.packet* %0, %struct.dhcp_packet* %1, i32 %2, %struct.tree_cache** %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.packet*, align 8
  %11 = alloca %struct.dhcp_packet*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tree_cache**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [300 x i8], align 16
  %20 = alloca [4096 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.packet* %0, %struct.packet** %10, align 8
  store %struct.dhcp_packet* %1, %struct.dhcp_packet** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.tree_cache** %3, %struct.tree_cache*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %61, label %30

30:                                               ; preds = %9
  %31 = load %struct.packet*, %struct.packet** %10, align 8
  %32 = icmp ne %struct.packet* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load %struct.packet*, %struct.packet** %10, align 8
  %35 = getelementptr inbounds %struct.packet, %struct.packet* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* @DHO_DHCP_MAX_MESSAGE_SIZE, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %33
  %43 = load %struct.packet*, %struct.packet** %10, align 8
  %44 = getelementptr inbounds %struct.packet, %struct.packet* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* @DHO_DHCP_MAX_MESSAGE_SIZE, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp uge i64 %50, 4
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load %struct.packet*, %struct.packet** %10, align 8
  %54 = getelementptr inbounds %struct.packet, %struct.packet* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* @DHO_DHCP_MAX_MESSAGE_SIZE, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @getUShort(i8* %59)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %52, %42, %33, %30, %9
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @DHCP_FIXED_LEN, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %22, align 8
  br label %78

69:                                               ; preds = %61
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i64 64, i64* %22, align 8
  br label %77

73:                                               ; preds = %69
  %74 = load i32, i32* @DHCP_FIXED_LEN, align 4
  %75 = sub nsw i32 576, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %22, align 8
  br label %77

77:                                               ; preds = %73, %72
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i64, i64* %22, align 8
  %80 = icmp ugt i64 %79, 4096
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i64 4096, i64* %22, align 8
  br label %82

82:                                               ; preds = %81, %78
  store i32 0, i32* %21, align 4
  %83 = load i8, i8* @DHO_DHCP_MESSAGE_TYPE, align 1
  %84 = load i32, i32* %21, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %21, align 4
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds [300 x i8], [300 x i8]* %19, i64 0, i64 %86
  store i8 %83, i8* %87, align 1
  %88 = load i8, i8* @DHO_DHCP_SERVER_IDENTIFIER, align 1
  %89 = load i32, i32* %21, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %21, align 4
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds [300 x i8], [300 x i8]* %19, i64 0, i64 %91
  store i8 %88, i8* %92, align 1
  %93 = load i8, i8* @DHO_DHCP_LEASE_TIME, align 1
  %94 = load i32, i32* %21, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %21, align 4
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds [300 x i8], [300 x i8]* %19, i64 0, i64 %96
  store i8 %93, i8* %97, align 1
  %98 = load i8, i8* @DHO_DHCP_MESSAGE, align 1
  %99 = load i32, i32* %21, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %21, align 4
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds [300 x i8], [300 x i8]* %19, i64 0, i64 %101
  store i8 %98, i8* %102, align 1
  %103 = load %struct.packet*, %struct.packet** %10, align 8
  %104 = icmp ne %struct.packet* %103, null
  br i1 %104, label %105, label %149

105:                                              ; preds = %82
  %106 = load %struct.packet*, %struct.packet** %10, align 8
  %107 = getelementptr inbounds %struct.packet, %struct.packet* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i64, i64* @DHO_DHCP_PARAMETER_REQUEST_LIST, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %149

114:                                              ; preds = %105
  %115 = load %struct.packet*, %struct.packet** %10, align 8
  %116 = getelementptr inbounds %struct.packet, %struct.packet* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i64, i64* @DHO_DHCP_PARAMETER_REQUEST_LIST, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %27, align 4
  %122 = load i32, i32* %27, align 4
  %123 = load i32, i32* %21, align 4
  %124 = add i32 %122, %123
  %125 = zext i32 %124 to i64
  %126 = icmp ugt i64 %125, 300
  br i1 %126, label %127, label %132

127:                                              ; preds = %114
  %128 = load i32, i32* %21, align 4
  %129 = zext i32 %128 to i64
  %130 = sub i64 300, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %27, align 4
  br label %132

132:                                              ; preds = %127, %114
  %133 = load i32, i32* %21, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [300 x i8], [300 x i8]* %19, i64 0, i64 %134
  %136 = load %struct.packet*, %struct.packet** %10, align 8
  %137 = getelementptr inbounds %struct.packet, %struct.packet* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i64, i64* @DHO_DHCP_PARAMETER_REQUEST_LIST, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %27, align 4
  %144 = call i32 @memcpy(i8* %135, i8* %142, i32 %143)
  %145 = load i32, i32* %27, align 4
  %146 = load i32, i32* %21, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %21, align 4
  %148 = getelementptr inbounds [300 x i8], [300 x i8]* %19, i64 0, i64 0
  store i8* %148, i8** %17, align 8
  br label %185

149:                                              ; preds = %105, %82
  %150 = load i8*, i8** %17, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %174

152:                                              ; preds = %149
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %21, align 4
  %155 = add i32 %153, %154
  %156 = zext i32 %155 to i64
  %157 = icmp ugt i64 %156, 300
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load i32, i32* %21, align 4
  %160 = zext i32 %159 to i64
  %161 = sub i64 300, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %18, align 4
  br label %163

163:                                              ; preds = %158, %152
  %164 = load i32, i32* %21, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [300 x i8], [300 x i8]* %19, i64 0, i64 %165
  %167 = load i8*, i8** %17, align 8
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @memcpy(i8* %166, i8* %167, i32 %168)
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %21, align 4
  %172 = add i32 %171, %170
  store i32 %172, i32* %21, align 4
  %173 = getelementptr inbounds [300 x i8], [300 x i8]* %19, i64 0, i64 0
  store i8* %173, i8** %17, align 8
  br label %184

174:                                              ; preds = %149
  %175 = load i32, i32* %21, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [300 x i8], [300 x i8]* %19, i64 0, i64 %176
  %178 = load i8*, i8** @dhcp_option_default_priority_list, align 8
  %179 = load i32, i32* @sizeof_dhcp_option_default_priority_list, align 4
  %180 = call i32 @memcpy(i8* %177, i8* %178, i32 %179)
  %181 = load i32, i32* @sizeof_dhcp_option_default_priority_list, align 4
  %182 = load i32, i32* %21, align 4
  %183 = add i32 %182, %181
  store i32 %183, i32* %21, align 4
  br label %184

184:                                              ; preds = %174, %163
  br label %185

185:                                              ; preds = %184, %132
  %186 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %187 = load i64, i64* %22, align 8
  %188 = sub i64 %187, 7
  %189 = load i32, i32* %14, align 4
  %190 = and i32 %189, 1
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load i64, i64* @DHCP_FILE_LEN, align 8
  br label %195

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194, %192
  %196 = phi i64 [ %193, %192 ], [ 0, %194 ]
  %197 = add i64 %188, %196
  %198 = load i32, i32* %14, align 4
  %199 = and i32 %198, 2
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* @DHCP_SNAME_LEN, align 4
  br label %204

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203, %201
  %205 = phi i32 [ %202, %201 ], [ 0, %203 ]
  %206 = zext i32 %205 to i64
  %207 = add i64 %197, %206
  %208 = load %struct.tree_cache**, %struct.tree_cache*** %13, align 8
  %209 = getelementptr inbounds [300 x i8], [300 x i8]* %19, i64 0, i64 0
  %210 = load i32, i32* %21, align 4
  %211 = load i64, i64* %22, align 8
  %212 = load i64, i64* %22, align 8
  %213 = load i32, i32* %14, align 4
  %214 = and i32 %213, 1
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %204
  %217 = load i64, i64* @DHCP_FILE_LEN, align 8
  br label %219

218:                                              ; preds = %204
  br label %219

219:                                              ; preds = %218, %216
  %220 = phi i64 [ %217, %216 ], [ 0, %218 ]
  %221 = add i64 %212, %220
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @store_options(i8* %186, i64 %207, %struct.tree_cache** %208, i8* %209, i32 %210, i64 %211, i64 %221, i32 %222)
  store i32 %223, i32* %23, align 4
  %224 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %225 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load i8*, i8** @DHCP_OPTIONS_COOKIE, align 8
  %228 = call i32 @memcpy(i8* %226, i8* %227, i32 4)
  store i32 4, i32* %25, align 4
  %229 = load i32, i32* %23, align 4
  %230 = zext i32 %229 to i64
  %231 = load i64, i64* %22, align 8
  %232 = load i32, i32* %25, align 4
  %233 = zext i32 %232 to i64
  %234 = sub i64 %231, %233
  %235 = icmp ule i64 %230, %234
  br i1 %235, label %236, label %266

236:                                              ; preds = %219
  %237 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %238 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* %25, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %244 = load i32, i32* %23, align 4
  %245 = call i32 @memcpy(i8* %242, i8* %243, i32 %244)
  %246 = load i32, i32* %23, align 4
  %247 = load i32, i32* %25, align 4
  %248 = add i32 %247, %246
  store i32 %248, i32* %25, align 4
  %249 = load i32, i32* %25, align 4
  %250 = zext i32 %249 to i64
  %251 = load i64, i64* %22, align 8
  %252 = icmp ult i64 %250, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %236
  %254 = load i8, i8* @DHO_END, align 1
  %255 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %256 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = load i32, i32* %25, align 4
  %259 = add i32 %258, 1
  store i32 %259, i32* %25, align 4
  %260 = zext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %257, i64 %260
  store i8 %254, i8* %261, align 1
  br label %262

262:                                              ; preds = %253, %236
  %263 = load i32, i32* @DHCP_FIXED_NON_UDP, align 4
  %264 = load i32, i32* %25, align 4
  %265 = add i32 %263, %264
  store i32 %265, i32* %26, align 4
  br label %450

266:                                              ; preds = %219
  %267 = load i8, i8* @DHO_DHCP_OPTION_OVERLOAD, align 1
  %268 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %269 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = load i32, i32* %25, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %25, align 4
  %273 = zext i32 %271 to i64
  %274 = getelementptr inbounds i8, i8* %270, i64 %273
  store i8 %267, i8* %274, align 1
  %275 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %276 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = load i32, i32* %25, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %25, align 4
  %280 = zext i32 %278 to i64
  %281 = getelementptr inbounds i8, i8* %277, i64 %280
  store i8 1, i8* %281, align 1
  %282 = load i32, i32* %23, align 4
  %283 = zext i32 %282 to i64
  %284 = load i64, i64* %22, align 8
  %285 = load i32, i32* %25, align 4
  %286 = zext i32 %285 to i64
  %287 = sub i64 %284, %286
  %288 = load i64, i64* @DHCP_FILE_LEN, align 8
  %289 = add i64 %287, %288
  %290 = icmp ugt i64 %283, %289
  br i1 %290, label %291, label %299

291:                                              ; preds = %266
  %292 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %293 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = load i32, i32* %25, align 4
  %296 = add i32 %295, 1
  store i32 %296, i32* %25, align 4
  %297 = zext i32 %295 to i64
  %298 = getelementptr inbounds i8, i8* %294, i64 %297
  store i8 3, i8* %298, align 1
  br label %307

299:                                              ; preds = %266
  %300 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %301 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = load i32, i32* %25, align 4
  %304 = add i32 %303, 1
  store i32 %304, i32* %25, align 4
  %305 = zext i32 %303 to i64
  %306 = getelementptr inbounds i8, i8* %302, i64 %305
  store i8 1, i8* %306, align 1
  br label %307

307:                                              ; preds = %299, %291
  %308 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %309 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %308, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  %311 = load i32, i32* %25, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  %314 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %315 = load i64, i64* %22, align 8
  %316 = load i32, i32* %25, align 4
  %317 = zext i32 %316 to i64
  %318 = sub i64 %315, %317
  %319 = trunc i64 %318 to i32
  %320 = call i32 @memcpy(i8* %313, i8* %314, i32 %319)
  %321 = load i64, i64* %22, align 8
  %322 = load i32, i32* %25, align 4
  %323 = zext i32 %322 to i64
  %324 = sub i64 %321, %323
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %24, align 4
  %326 = load i32, i32* @DHCP_FIXED_NON_UDP, align 4
  %327 = load i32, i32* %25, align 4
  %328 = add i32 %326, %327
  store i32 %328, i32* %26, align 4
  %329 = load i32, i32* %14, align 4
  %330 = and i32 %329, 1
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %399

332:                                              ; preds = %307
  %333 = load i32, i32* %23, align 4
  %334 = load i32, i32* %24, align 4
  %335 = sub i32 %333, %334
  %336 = zext i32 %335 to i64
  %337 = load i64, i64* @DHCP_FILE_LEN, align 8
  %338 = icmp ule i64 %336, %337
  br i1 %338, label %339, label %383

339:                                              ; preds = %332
  %340 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %341 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %340, i32 0, i32 1
  %342 = load i8*, i8** %341, align 8
  %343 = load i32, i32* %24, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 %344
  %346 = load i32, i32* %23, align 4
  %347 = load i32, i32* %24, align 4
  %348 = sub i32 %346, %347
  %349 = call i32 @memcpy(i8* %342, i8* %345, i32 %348)
  %350 = load i32, i32* %23, align 4
  %351 = load i32, i32* %24, align 4
  %352 = sub i32 %350, %351
  store i32 %352, i32* %25, align 4
  %353 = load i32, i32* %25, align 4
  %354 = zext i32 %353 to i64
  %355 = load i64, i64* @DHCP_FILE_LEN, align 8
  %356 = icmp ult i64 %354, %355
  br i1 %356, label %357, label %366

357:                                              ; preds = %339
  %358 = load i8, i8* @DHO_END, align 1
  %359 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %360 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %359, i32 0, i32 1
  %361 = load i8*, i8** %360, align 8
  %362 = load i32, i32* %25, align 4
  %363 = add i32 %362, 1
  store i32 %363, i32* %25, align 4
  %364 = zext i32 %362 to i64
  %365 = getelementptr inbounds i8, i8* %361, i64 %364
  store i8 %358, i8* %365, align 1
  br label %366

366:                                              ; preds = %357, %339
  br label %367

367:                                              ; preds = %372, %366
  %368 = load i32, i32* %25, align 4
  %369 = zext i32 %368 to i64
  %370 = load i64, i64* @DHCP_FILE_LEN, align 8
  %371 = icmp ult i64 %369, %370
  br i1 %371, label %372, label %382

372:                                              ; preds = %367
  %373 = load i64, i64* @DHO_PAD, align 8
  %374 = trunc i64 %373 to i8
  %375 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %376 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %375, i32 0, i32 1
  %377 = load i8*, i8** %376, align 8
  %378 = load i32, i32* %25, align 4
  %379 = add i32 %378, 1
  store i32 %379, i32* %25, align 4
  %380 = zext i32 %378 to i64
  %381 = getelementptr inbounds i8, i8* %377, i64 %380
  store i8 %374, i8* %381, align 1
  br label %367

382:                                              ; preds = %367
  br label %398

383:                                              ; preds = %332
  %384 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %385 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %384, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  %387 = load i32, i32* %24, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 %388
  %390 = load i64, i64* @DHCP_FILE_LEN, align 8
  %391 = trunc i64 %390 to i32
  %392 = call i32 @memcpy(i8* %386, i8* %389, i32 %391)
  %393 = load i64, i64* @DHCP_FILE_LEN, align 8
  %394 = load i32, i32* %24, align 4
  %395 = zext i32 %394 to i64
  %396 = add i64 %395, %393
  %397 = trunc i64 %396 to i32
  store i32 %397, i32* %24, align 4
  br label %398

398:                                              ; preds = %383, %382
  br label %399

399:                                              ; preds = %398, %307
  %400 = load i32, i32* %14, align 4
  %401 = and i32 %400, 2
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %449

403:                                              ; preds = %399
  %404 = load i32, i32* %23, align 4
  %405 = load i32, i32* %24, align 4
  %406 = icmp ult i32 %404, %405
  br i1 %406, label %407, label %449

407:                                              ; preds = %403
  %408 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %409 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %408, i32 0, i32 2
  %410 = load i8*, i8** %409, align 8
  %411 = load i32, i32* %24, align 4
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 %412
  %414 = load i32, i32* %23, align 4
  %415 = load i32, i32* %24, align 4
  %416 = sub i32 %414, %415
  %417 = call i32 @memcpy(i8* %410, i8* %413, i32 %416)
  %418 = load i32, i32* %23, align 4
  %419 = load i32, i32* %24, align 4
  %420 = sub i32 %418, %419
  store i32 %420, i32* %25, align 4
  %421 = load i32, i32* %25, align 4
  %422 = load i32, i32* @DHCP_SNAME_LEN, align 4
  %423 = icmp ult i32 %421, %422
  br i1 %423, label %424, label %433

424:                                              ; preds = %407
  %425 = load i8, i8* @DHO_END, align 1
  %426 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %427 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %426, i32 0, i32 1
  %428 = load i8*, i8** %427, align 8
  %429 = load i32, i32* %25, align 4
  %430 = add i32 %429, 1
  store i32 %430, i32* %25, align 4
  %431 = zext i32 %429 to i64
  %432 = getelementptr inbounds i8, i8* %428, i64 %431
  store i8 %425, i8* %432, align 1
  br label %433

433:                                              ; preds = %424, %407
  br label %434

434:                                              ; preds = %438, %433
  %435 = load i32, i32* %25, align 4
  %436 = load i32, i32* @DHCP_SNAME_LEN, align 4
  %437 = icmp ult i32 %435, %436
  br i1 %437, label %438, label %448

438:                                              ; preds = %434
  %439 = load i64, i64* @DHO_PAD, align 8
  %440 = trunc i64 %439 to i8
  %441 = load %struct.dhcp_packet*, %struct.dhcp_packet** %11, align 8
  %442 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %441, i32 0, i32 1
  %443 = load i8*, i8** %442, align 8
  %444 = load i32, i32* %25, align 4
  %445 = add i32 %444, 1
  store i32 %445, i32* %25, align 4
  %446 = zext i32 %444 to i64
  %447 = getelementptr inbounds i8, i8* %443, i64 %446
  store i8 %440, i8* %447, align 1
  br label %434

448:                                              ; preds = %434
  br label %449

449:                                              ; preds = %448, %403, %399
  br label %450

450:                                              ; preds = %449, %262
  %451 = load i32, i32* %26, align 4
  ret i32 %451
}

declare dso_local i32 @getUShort(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @store_options(i8*, i64, %struct.tree_cache**, i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
