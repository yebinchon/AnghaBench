; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_oct.c_ec_GFp_simple_point2oct.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_oct.c_ec_GFp_simple_point2oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@POINT_CONVERSION_COMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@POINT_CONVERSION_HYBRID = common dso_local global i32 0, align 4
@EC_F_EC_GFP_SIMPLE_POINT2OCT = common dso_local global i32 0, align 4
@EC_R_INVALID_FORM = common dso_local global i32 0, align 4
@EC_R_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ec_GFp_simple_point2oct(%struct.TYPE_5__* %0, i32* %1, i32 %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %35 = load i32, i32* @EC_R_INVALID_FORM, align 4
  %36 = call i32 @ECerr(i32 %34, i32 %35)
  br label %233

37:                                               ; preds = %29, %25, %6
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_5__* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i64, i64* %12, align 8
  %47 = icmp ult i64 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %50 = load i32, i32* @EC_R_BUFFER_TOO_SMALL, align 4
  %51 = call i32 @ECerr(i32 %49, i32 %50)
  store i64 0, i64* %7, align 8
  br label %242

52:                                               ; preds = %45
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %52, %42
  store i64 1, i64* %7, align 8
  br label %242

56:                                               ; preds = %37
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @BN_num_bytes(i32* %59)
  store i64 %60, i64* %19, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i64, i64* %19, align 8
  %66 = add i64 1, %65
  br label %71

67:                                               ; preds = %56
  %68 = load i64, i64* %19, align 8
  %69 = mul i64 2, %68
  %70 = add i64 1, %69
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i64 [ %66, %64 ], [ %70, %67 ]
  store i64 %72, i64* %14, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %223

75:                                               ; preds = %71
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %14, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %81 = load i32, i32* @EC_R_BUFFER_TOO_SMALL, align 4
  %82 = call i32 @ECerr(i32 %80, i32 %81)
  br label %233

83:                                               ; preds = %75
  %84 = load i32*, i32** %13, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = call i32* (...) @BN_CTX_new()
  store i32* %87, i32** %15, align 8
  store i32* %87, i32** %13, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i64 0, i64* %7, align 8
  br label %242

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %83
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @BN_CTX_start(i32* %93)
  store i32 1, i32* %16, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = call i32* @BN_CTX_get(i32* %95)
  store i32* %96, i32** %17, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = call i32* @BN_CTX_get(i32* %97)
  store i32* %98, i32** %18, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %233

102:                                              ; preds = %92
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32*, i32** %17, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_5__* %103, i32* %104, i32* %105, i32* %106, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %233

111:                                              ; preds = %102
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @POINT_CONVERSION_COMPRESSED, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115, %111
  %120 = load i32*, i32** %18, align 8
  %121 = call i64 @BN_is_odd(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %11, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 %126, i8* %128, align 1
  br label %134

129:                                              ; preds = %119, %115
  %130 = load i32, i32* %10, align 4
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %11, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  store i8 %131, i8* %133, align 1
  br label %134

134:                                              ; preds = %129, %123
  store i64 1, i64* %20, align 8
  %135 = load i64, i64* %19, align 8
  %136 = load i32*, i32** %17, align 8
  %137 = call i64 @BN_num_bytes(i32* %136)
  %138 = sub i64 %135, %137
  store i64 %138, i64* %21, align 8
  %139 = load i64, i64* %21, align 8
  %140 = load i64, i64* %19, align 8
  %141 = icmp ugt i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %144 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %145 = call i32 @ECerr(i32 %143, i32 %144)
  br label %233

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %150, %146
  %148 = load i64, i64* %21, align 8
  %149 = icmp ugt i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i8*, i8** %11, align 8
  %152 = load i64, i64* %20, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %20, align 8
  %154 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8 0, i8* %154, align 1
  %155 = load i64, i64* %21, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %21, align 8
  br label %147

157:                                              ; preds = %147
  %158 = load i32*, i32** %17, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = load i64, i64* %20, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = call i64 @BN_bn2bin(i32* %158, i8* %161)
  store i64 %162, i64* %21, align 8
  %163 = load i64, i64* %21, align 8
  %164 = load i64, i64* %20, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %20, align 8
  %166 = load i64, i64* %20, align 8
  %167 = load i64, i64* %19, align 8
  %168 = add i64 1, %167
  %169 = icmp ne i64 %166, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %157
  %171 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %172 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %173 = call i32 @ECerr(i32 %171, i32 %172)
  br label %233

174:                                              ; preds = %157
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @POINT_CONVERSION_HYBRID, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %214

182:                                              ; preds = %178, %174
  %183 = load i64, i64* %19, align 8
  %184 = load i32*, i32** %18, align 8
  %185 = call i64 @BN_num_bytes(i32* %184)
  %186 = sub i64 %183, %185
  store i64 %186, i64* %21, align 8
  %187 = load i64, i64* %21, align 8
  %188 = load i64, i64* %19, align 8
  %189 = icmp ugt i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %182
  %191 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %192 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %193 = call i32 @ECerr(i32 %191, i32 %192)
  br label %233

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %198, %194
  %196 = load i64, i64* %21, align 8
  %197 = icmp ugt i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load i8*, i8** %11, align 8
  %200 = load i64, i64* %20, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %20, align 8
  %202 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8 0, i8* %202, align 1
  %203 = load i64, i64* %21, align 8
  %204 = add i64 %203, -1
  store i64 %204, i64* %21, align 8
  br label %195

205:                                              ; preds = %195
  %206 = load i32*, i32** %18, align 8
  %207 = load i8*, i8** %11, align 8
  %208 = load i64, i64* %20, align 8
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  %210 = call i64 @BN_bn2bin(i32* %206, i8* %209)
  store i64 %210, i64* %21, align 8
  %211 = load i64, i64* %21, align 8
  %212 = load i64, i64* %20, align 8
  %213 = add i64 %212, %211
  store i64 %213, i64* %20, align 8
  br label %214

214:                                              ; preds = %205, %178
  %215 = load i64, i64* %20, align 8
  %216 = load i64, i64* %14, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT2OCT, align 4
  %220 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %221 = call i32 @ECerr(i32 %219, i32 %220)
  br label %233

222:                                              ; preds = %214
  br label %223

223:                                              ; preds = %222, %71
  %224 = load i32, i32* %16, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i32*, i32** %13, align 8
  %228 = call i32 @BN_CTX_end(i32* %227)
  br label %229

229:                                              ; preds = %226, %223
  %230 = load i32*, i32** %15, align 8
  %231 = call i32 @BN_CTX_free(i32* %230)
  %232 = load i64, i64* %14, align 8
  store i64 %232, i64* %7, align 8
  br label %242

233:                                              ; preds = %218, %190, %170, %142, %110, %101, %79, %33
  %234 = load i32, i32* %16, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32*, i32** %13, align 8
  %238 = call i32 @BN_CTX_end(i32* %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32*, i32** %15, align 8
  %241 = call i32 @BN_CTX_free(i32* %240)
  store i64 0, i64* %7, align 8
  br label %242

242:                                              ; preds = %239, %229, %90, %55, %48
  %243 = load i64, i64* %7, align 8
  ret i64 %243
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @EC_POINT_is_at_infinity(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_5__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_odd(i32*) #1

declare dso_local i64 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
