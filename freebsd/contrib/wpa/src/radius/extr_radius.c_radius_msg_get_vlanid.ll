; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_vlanid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius.c_radius_msg_get_vlanid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i64 }
%struct.radius_tunnel_attrs = type { i64, i64, i32, i64 }
%struct.radius_attr_hdr = type { i32, i32 }

@RADIUS_TUNNEL_TAGS = common dso_local global i32 0, align 4
@RADIUS_TUNNEL_TYPE_VLAN = common dso_local global i64 0, align 8
@RADIUS_TUNNEL_MEDIUM_TYPE_802 = common dso_local global i64 0, align 8
@cmp_int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_msg_get_vlanid(%struct.radius_msg* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.radius_tunnel_attrs*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.radius_attr_hdr*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [10 x i8], align 1
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.radius_msg* %0, %struct.radius_msg** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %22 = load i32, i32* @RADIUS_TUNNEL_TAGS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca %struct.radius_tunnel_attrs, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  store %struct.radius_attr_hdr* null, %struct.radius_attr_hdr** %14, align 8
  store i32 0, i32* %19, align 4
  %26 = bitcast %struct.radius_tunnel_attrs* %25 to %struct.radius_tunnel_attrs**
  %27 = mul nuw i64 32, %23
  %28 = trunc i64 %27 to i32
  %29 = call i32 @os_memset(%struct.radius_tunnel_attrs** %26, i32 0, i32 %28)
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %39, %4
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %18, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %18, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %18, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load i32*, i32** %7, align 8
  store i32 0, i32* %43, align 4
  store i64 0, i64* %13, align 8
  br label %44

44:                                               ; preds = %205, %42
  %45 = load i64, i64* %13, align 8
  %46 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %47 = getelementptr inbounds %struct.radius_msg, %struct.radius_msg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %208

50:                                               ; preds = %44
  %51 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg* %51, i64 %52)
  store %struct.radius_attr_hdr* %53, %struct.radius_attr_hdr** %14, align 8
  %54 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %55 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 8
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %264

60:                                               ; preds = %50
  %61 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %62 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %61, i64 1
  %63 = bitcast %struct.radius_attr_hdr* %62 to i32*
  store i32* %63, i32** %15, align 8
  %64 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %65 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, 8
  store i64 %68, i64* %17, align 8
  %69 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %70 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %205

74:                                               ; preds = %60
  %75 = load i32*, i32** %15, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RADIUS_TUNNEL_TAGS, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %25, i64 0
  store %struct.radius_tunnel_attrs* %81, %struct.radius_tunnel_attrs** %12, align 8
  br label %88

82:                                               ; preds = %74
  %83 = load i32*, i32** %15, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %25, i64 %86
  store %struct.radius_tunnel_attrs* %87, %struct.radius_tunnel_attrs** %12, align 8
  br label %88

88:                                               ; preds = %82, %80
  %89 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %90 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %204 [
    i32 128, label %92
    i32 130, label %109
    i32 129, label %126
    i32 131, label %161
  ]

92:                                               ; preds = %88
  %93 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %94 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 6
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %204

98:                                               ; preds = %92
  %99 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %100 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = call i8* @WPA_GET_BE24(i32* %104)
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %108 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %204

109:                                              ; preds = %88
  %110 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %111 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 6
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %204

115:                                              ; preds = %109
  %116 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %117 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = call i8* @WPA_GET_BE24(i32* %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %125 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %204

126:                                              ; preds = %88
  %127 = load i32*, i32** %15, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @RADIUS_TUNNEL_TAGS, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load i32*, i32** %15, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %15, align 8
  %135 = load i64, i64* %17, align 8
  %136 = add i64 %135, -1
  store i64 %136, i64* %17, align 8
  br label %137

137:                                              ; preds = %132, %126
  %138 = load i64, i64* %17, align 8
  %139 = icmp uge i64 %138, 10
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %204

141:                                              ; preds = %137
  %142 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %143 = load i32*, i32** %15, align 8
  %144 = load i64, i64* %17, align 8
  %145 = call i32 @os_memcpy(i8* %142, i32* %143, i64 %144)
  %146 = load i64, i64* %17, align 8
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 %146
  store i8 0, i8* %147, align 1
  %148 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %149 = call i32 @atoi(i8* %148)
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp sle i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  br label %204

153:                                              ; preds = %141
  %154 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %155 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %160 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  br label %204

161:                                              ; preds = %88
  %162 = load %struct.radius_attr_hdr*, %struct.radius_attr_hdr** %14, align 8
  %163 = getelementptr inbounds %struct.radius_attr_hdr, %struct.radius_attr_hdr* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 6
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %204

167:                                              ; preds = %161
  %168 = load i32*, i32** %15, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = call i8* @WPA_GET_BE24(i32* %169)
  %171 = ptrtoint i8* %170 to i32
  store i32 %171, i32* %20, align 4
  %172 = load i32, i32* %20, align 4
  %173 = icmp sle i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %204

175:                                              ; preds = %167
  %176 = load i32*, i32** %15, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 50
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* %20, align 4
  %182 = load i32*, i32** %7, align 8
  store i32 %181, i32* %182, align 4
  br label %203

183:                                              ; preds = %175
  %184 = load i32*, i32** %15, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 49
  br i1 %187, label %188, label %202

188:                                              ; preds = %183
  %189 = load i32*, i32** %9, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %202

191:                                              ; preds = %188
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  %196 = load i32, i32* %20, align 4
  %197 = load i32*, i32** %9, align 8
  %198 = load i32, i32* %19, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %19, align 4
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  store i32 %196, i32* %201, align 4
  br label %202

202:                                              ; preds = %195, %191, %188, %183
  br label %203

203:                                              ; preds = %202, %180
  br label %204

204:                                              ; preds = %88, %203, %174, %166, %153, %152, %140, %115, %114, %98, %97
  br label %205

205:                                              ; preds = %204, %73
  %206 = load i64, i64* %13, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %13, align 8
  br label %44

208:                                              ; preds = %44
  store i64 0, i64* %13, align 8
  br label %209

209:                                              ; preds = %244, %208
  %210 = load i64, i64* %13, align 8
  %211 = load i32, i32* @RADIUS_TUNNEL_TAGS, align 4
  %212 = sext i32 %211 to i64
  %213 = icmp ult i64 %210, %212
  br i1 %213, label %214, label %247

214:                                              ; preds = %209
  %215 = load i64, i64* %13, align 8
  %216 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %25, i64 %215
  store %struct.radius_tunnel_attrs* %216, %struct.radius_tunnel_attrs** %12, align 8
  %217 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %218 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %243

221:                                              ; preds = %214
  %222 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %223 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @RADIUS_TUNNEL_TYPE_VLAN, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %221
  %228 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %229 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @RADIUS_TUNNEL_MEDIUM_TYPE_802, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %243

233:                                              ; preds = %227
  %234 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %235 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load %struct.radius_tunnel_attrs*, %struct.radius_tunnel_attrs** %12, align 8
  %240 = getelementptr inbounds %struct.radius_tunnel_attrs, %struct.radius_tunnel_attrs* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32*, i32** %7, align 8
  store i32 %241, i32* %242, align 4
  br label %247

243:                                              ; preds = %233, %227, %221, %214
  br label %244

244:                                              ; preds = %243
  %245 = load i64, i64* %13, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %13, align 8
  br label %209

247:                                              ; preds = %238, %209
  %248 = load i32, i32* %19, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load i32*, i32** %9, align 8
  %252 = load i32, i32* %19, align 4
  %253 = load i32, i32* @cmp_int, align 4
  %254 = call i32 @qsort(i32* %251, i32 %252, i32 4, i32 %253)
  br label %255

255:                                              ; preds = %250, %247
  %256 = load i32*, i32** %7, align 8
  %257 = load i32, i32* %256, align 4
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %19, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259, %255
  store i32 1, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %264

263:                                              ; preds = %259
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %264

264:                                              ; preds = %263, %262, %59
  %265 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %265)
  %266 = load i32, i32* %5, align 4
  ret i32 %266
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(%struct.radius_tunnel_attrs**, i32, i32) #2

declare dso_local %struct.radius_attr_hdr* @radius_get_attr_hdr(%struct.radius_msg*, i64) #2

declare dso_local i8* @WPA_GET_BE24(i32*) #2

declare dso_local i32 @os_memcpy(i8*, i32*, i64) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @qsort(i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
