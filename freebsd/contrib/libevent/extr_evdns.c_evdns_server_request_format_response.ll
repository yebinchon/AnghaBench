; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_server_request_format_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_server_request_format_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_request = type { i32, i32, i32, i32, i32, i8*, %struct.server_reply_item*, %struct.server_reply_item*, %struct.server_reply_item*, %struct.TYPE_4__ }
%struct.server_reply_item = type { i8*, i32, i32, i8*, i32, %struct.server_reply_item*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i8*, i32, i32 }
%struct.dnslabel_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.server_request*, i32)* @evdns_server_request_format_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_server_request_format_response(%struct.server_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.server_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1500 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dnslabel_table, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.server_reply_item*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.server_request* %0, %struct.server_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 1500, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 15
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  store i32 -1, i32* %3, align 4
  br label %281

25:                                               ; preds = %21
  %26 = load %struct.server_request*, %struct.server_request** %4, align 8
  %27 = getelementptr inbounds %struct.server_request, %struct.server_request* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 32768, %30
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = call i32 @dnslabel_table_init(%struct.dnslabel_table* %14)
  %35 = load %struct.server_request*, %struct.server_request** %4, align 8
  %36 = getelementptr inbounds %struct.server_request, %struct.server_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @APPEND16(i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @APPEND16(i32 %39)
  %41 = load %struct.server_request*, %struct.server_request** %4, align 8
  %42 = getelementptr inbounds %struct.server_request, %struct.server_request* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @APPEND16(i32 %44)
  %46 = load %struct.server_request*, %struct.server_request** %4, align 8
  %47 = getelementptr inbounds %struct.server_request, %struct.server_request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @APPEND16(i32 %48)
  %50 = load %struct.server_request*, %struct.server_request** %4, align 8
  %51 = getelementptr inbounds %struct.server_request, %struct.server_request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @APPEND16(i32 %52)
  %54 = load %struct.server_request*, %struct.server_request** %4, align 8
  %55 = getelementptr inbounds %struct.server_request, %struct.server_request* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @APPEND16(i32 %56)
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %111, %25
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.server_request*, %struct.server_request** %4, align 8
  %61 = getelementptr inbounds %struct.server_request, %struct.server_request* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %58
  %66 = load %struct.server_request*, %struct.server_request** %4, align 8
  %67 = getelementptr inbounds %struct.server_request, %struct.server_request* %66, i32 0, i32 9
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %69, i64 %71
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %15, align 8
  %76 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i8*, i8** %15, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = call i32 @dnsname_to_labels(i8* %76, i64 %77, i32 %78, i8* %79, i32 %81, %struct.dnslabel_table* %14)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %65
  %86 = call i32 @dnslabel_clear(%struct.dnslabel_table* %14)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %281

88:                                               ; preds = %65
  %89 = load %struct.server_request*, %struct.server_request** %4, align 8
  %90 = getelementptr inbounds %struct.server_request, %struct.server_request* %89, i32 0, i32 9
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %92, i64 %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @APPEND16(i32 %98)
  %100 = load %struct.server_request*, %struct.server_request** %4, align 8
  %101 = getelementptr inbounds %struct.server_request, %struct.server_request* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %103, i64 %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @APPEND16(i32 %109)
  br label %111

111:                                              ; preds = %88
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %58

114:                                              ; preds = %58
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %241, %114
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 3
  br i1 %117, label %118, label %244

118:                                              ; preds = %115
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load %struct.server_request*, %struct.server_request** %4, align 8
  %123 = getelementptr inbounds %struct.server_request, %struct.server_request* %122, i32 0, i32 8
  %124 = load %struct.server_reply_item*, %struct.server_reply_item** %123, align 8
  store %struct.server_reply_item* %124, %struct.server_reply_item** %16, align 8
  br label %137

125:                                              ; preds = %118
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.server_request*, %struct.server_request** %4, align 8
  %130 = getelementptr inbounds %struct.server_request, %struct.server_request* %129, i32 0, i32 7
  %131 = load %struct.server_reply_item*, %struct.server_reply_item** %130, align 8
  store %struct.server_reply_item* %131, %struct.server_reply_item** %16, align 8
  br label %136

132:                                              ; preds = %125
  %133 = load %struct.server_request*, %struct.server_request** %4, align 8
  %134 = getelementptr inbounds %struct.server_request, %struct.server_request* %133, i32 0, i32 6
  %135 = load %struct.server_reply_item*, %struct.server_reply_item** %134, align 8
  store %struct.server_reply_item* %135, %struct.server_reply_item** %16, align 8
  br label %136

136:                                              ; preds = %132, %128
  br label %137

137:                                              ; preds = %136, %121
  br label %138

138:                                              ; preds = %236, %137
  %139 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %140 = icmp ne %struct.server_reply_item* %139, null
  br i1 %140, label %141, label %240

141:                                              ; preds = %138
  %142 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %143 = load i64, i64* %7, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %146 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %149 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @strlen(i8* %150)
  %152 = call i32 @dnsname_to_labels(i8* %142, i64 %143, i32 %144, i8* %147, i32 %151, %struct.dnslabel_table* %14)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %141
  br label %248

156:                                              ; preds = %141
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %8, align 4
  %158 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %159 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @APPEND16(i32 %160)
  %162 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %163 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @APPEND16(i32 %164)
  %166 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %167 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @APPEND32(i32 %168)
  %170 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %171 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %205

174:                                              ; preds = %156
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 2
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %18, align 4
  %179 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %180 = load i64, i64* %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %183 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %186 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %185, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @strlen(i8* %187)
  %189 = call i32 @dnsname_to_labels(i8* %179, i64 %180, i32 %181, i8* %184, i32 %188, %struct.dnslabel_table* %14)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %174
  br label %248

193:                                              ; preds = %174
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %18, align 4
  %197 = sub nsw i32 %195, %196
  %198 = trunc i32 %197 to i16
  %199 = call i32 @htons(i16 signext %198)
  store i32 %199, i32* %10, align 4
  %200 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = call i32 (i8*, ...) @memcpy(i8* %203, i32* %10, i32 2)
  br label %236

205:                                              ; preds = %156
  %206 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %207 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @APPEND16(i32 %208)
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %212 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %210, %213
  %215 = load i64, i64* %7, align 8
  %216 = trunc i64 %215 to i32
  %217 = icmp sgt i32 %214, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %205
  br label %248

219:                                              ; preds = %205
  %220 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %225 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %224, i32 0, i32 3
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %228 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i8*, ...) @memcpy(i8* %223, i8* %226, i32 %229)
  %231 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %232 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %219, %193
  %237 = load %struct.server_reply_item*, %struct.server_reply_item** %16, align 8
  %238 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %237, i32 0, i32 5
  %239 = load %struct.server_reply_item*, %struct.server_reply_item** %238, align 8
  store %struct.server_reply_item* %239, %struct.server_reply_item** %16, align 8
  br label %138

240:                                              ; preds = %138
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %12, align 4
  br label %115

244:                                              ; preds = %115
  %245 = load i32, i32* %8, align 4
  %246 = icmp sgt i32 %245, 512
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  br label %248

248:                                              ; preds = %247, %218, %192, %155
  store i32 512, i32* %8, align 4
  %249 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 2
  %250 = load i8, i8* %249, align 2
  %251 = zext i8 %250 to i32
  %252 = or i32 %251, 2
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %249, align 2
  br label %254

254:                                              ; preds = %248, %244
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.server_request*, %struct.server_request** %4, align 8
  %257 = getelementptr inbounds %struct.server_request, %struct.server_request* %256, i32 0, i32 4
  store i32 %255, i32* %257, align 8
  %258 = load %struct.server_request*, %struct.server_request** %4, align 8
  %259 = getelementptr inbounds %struct.server_request, %struct.server_request* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = call i8* @mm_malloc(i32 %260)
  %262 = load %struct.server_request*, %struct.server_request** %4, align 8
  %263 = getelementptr inbounds %struct.server_request, %struct.server_request* %262, i32 0, i32 5
  store i8* %261, i8** %263, align 8
  %264 = icmp ne i8* %261, null
  br i1 %264, label %269, label %265

265:                                              ; preds = %254
  %266 = load %struct.server_request*, %struct.server_request** %4, align 8
  %267 = call i32 @server_request_free_answers(%struct.server_request* %266)
  %268 = call i32 @dnslabel_clear(%struct.dnslabel_table* %14)
  store i32 -1, i32* %3, align 4
  br label %281

269:                                              ; preds = %254
  %270 = load %struct.server_request*, %struct.server_request** %4, align 8
  %271 = getelementptr inbounds %struct.server_request, %struct.server_request* %270, i32 0, i32 5
  %272 = load i8*, i8** %271, align 8
  %273 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %274 = load %struct.server_request*, %struct.server_request** %4, align 8
  %275 = getelementptr inbounds %struct.server_request, %struct.server_request* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = call i32 (i8*, ...) @memcpy(i8* %272, i8* %273, i32 %276)
  %278 = load %struct.server_request*, %struct.server_request** %4, align 8
  %279 = call i32 @server_request_free_answers(%struct.server_request* %278)
  %280 = call i32 @dnslabel_clear(%struct.dnslabel_table* %14)
  store i32 0, i32* %3, align 4
  br label %281

281:                                              ; preds = %269, %265, %85, %24
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @dnslabel_table_init(%struct.dnslabel_table*) #1

declare dso_local i32 @APPEND16(i32) #1

declare dso_local i32 @dnsname_to_labels(i8*, i64, i32, i8*, i32, %struct.dnslabel_table*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dnslabel_clear(%struct.dnslabel_table*) #1

declare dso_local i32 @APPEND32(i32) #1

declare dso_local i32 @htons(i16 signext) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i8* @mm_malloc(i32) #1

declare dso_local i32 @server_request_free_answers(%struct.server_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
