; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_dec.c_asn1_ex_c2i.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_dec.c_asn1_ex_c2i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { {}* }
%struct.TYPE_18__ = type { i32, i8*, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_21__ = type { i32 }

@V_ASN1_ANY = common dso_local global i64 0, align 8
@ASN1_F_ASN1_EX_C2I = common dso_local global i32 0, align 4
@ASN1_R_NULL_IS_WRONG_LENGTH = common dso_local global i32 0, align 4
@ASN1_R_BOOLEAN_IS_WRONG_LENGTH = common dso_local global i32 0, align 4
@V_ASN1_NEG = common dso_local global i32 0, align 4
@ASN1_R_BMPSTRING_IS_WRONG_LENGTH = common dso_local global i32 0, align 4
@ASN1_R_UNIVERSALSTRING_IS_WRONG_LENGTH = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_20__*)* @asn1_ex_c2i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_ex_c2i(i32** %0, i8* %1, i32 %2, i32 %3, i8* %4, %struct.TYPE_20__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca %struct.TYPE_21__**, align 8
  %20 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_20__* %5, %struct.TYPE_20__** %13, align 8
  store i32** null, i32*** %14, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %18, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %25 = icmp ne %struct.TYPE_19__* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %6
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_20__*)**
  %30 = load i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_20__*)*, i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_20__*)** %29, align 8
  %31 = icmp ne i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_20__*)* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_20__*)**
  %36 = load i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_20__*)*, i32 (i32**, i8*, i32, i32, i8*, %struct.TYPE_20__*)** %35, align 8
  %37 = load i32**, i32*** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %43 = call i32 %36(i32** %37, i8* %38, i32 %39, i32 %40, i8* %41, %struct.TYPE_20__* %42)
  store i32 %43, i32* %7, align 4
  br label %243

44:                                               ; preds = %26, %6
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @V_ASN1_ANY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %44
  %51 = load i32**, i32*** %8, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = call %struct.TYPE_17__* (...) @ASN1_TYPE_new()
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %16, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %57 = icmp eq %struct.TYPE_17__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %230

59:                                               ; preds = %54
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %61 = bitcast %struct.TYPE_17__* %60 to i32*
  %62 = load i32**, i32*** %8, align 8
  store i32* %61, i32** %62, align 8
  br label %67

63:                                               ; preds = %50
  %64 = load i32**, i32*** %8, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %16, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @ASN1_TYPE_set(%struct.TYPE_17__* %74, i32 %75, i32* null)
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32**, i32*** %8, align 8
  store i32** %78, i32*** %14, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  store i32** %81, i32*** %8, align 8
  br label %82

82:                                               ; preds = %77, %44
  %83 = load i32, i32* %11, align 4
  switch i32 %83, label %142 [
    i32 139, label %84
    i32 141, label %91
    i32 148, label %100
    i32 150, label %114
    i32 142, label %121
    i32 147, label %121
    i32 138, label %141
    i32 140, label %141
    i32 136, label %141
    i32 133, label %141
    i32 129, label %141
    i32 143, label %141
    i32 131, label %141
    i32 146, label %141
    i32 144, label %141
    i32 128, label %141
    i32 145, label %141
    i32 132, label %141
    i32 149, label %141
    i32 130, label %141
    i32 137, label %141
    i32 134, label %141
    i32 135, label %141
  ]

84:                                               ; preds = %82
  %85 = load i32**, i32*** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @c2i_ASN1_OBJECT(i32** %85, i8** %9, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %230

90:                                               ; preds = %84
  br label %219

91:                                               ; preds = %82
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @ASN1_F_ASN1_EX_C2I, align 4
  %96 = load i32, i32* @ASN1_R_NULL_IS_WRONG_LENGTH, align 4
  %97 = call i32 @ASN1err(i32 %95, i32 %96)
  br label %230

98:                                               ; preds = %91
  %99 = load i32**, i32*** %8, align 8
  store i32* inttoptr (i64 1 to i32*), i32** %99, align 8
  br label %219

100:                                              ; preds = %82
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* @ASN1_F_ASN1_EX_C2I, align 4
  %105 = load i32, i32* @ASN1_R_BOOLEAN_IS_WRONG_LENGTH, align 4
  %106 = call i32 @ASN1err(i32 %104, i32 %105)
  br label %230

107:                                              ; preds = %100
  %108 = load i32**, i32*** %8, align 8
  %109 = bitcast i32** %108 to i8*
  store i8* %109, i8** %20, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %20, align 8
  store i8 %111, i8* %112, align 1
  br label %113

113:                                              ; preds = %107
  br label %219

114:                                              ; preds = %82
  %115 = load i32**, i32*** %8, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @c2i_ASN1_BIT_STRING(i32** %115, i8** %9, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  br label %230

120:                                              ; preds = %114
  br label %219

121:                                              ; preds = %82, %82
  %122 = load i32**, i32*** %8, align 8
  %123 = bitcast i32** %122 to %struct.TYPE_21__**
  store %struct.TYPE_21__** %123, %struct.TYPE_21__*** %19, align 8
  %124 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %19, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @c2i_ASN1_INTEGER(%struct.TYPE_21__** %124, i8** %9, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %230

129:                                              ; preds = %121
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %19, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @V_ASN1_NEG, align 4
  %136 = and i32 %134, %135
  %137 = or i32 %130, %136
  %138 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %19, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 4
  br label %219

141:                                              ; preds = %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82, %82
  br label %142

142:                                              ; preds = %82, %141
  %143 = load i32, i32* %11, align 4
  %144 = icmp eq i32 %143, 149
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* @ASN1_F_ASN1_EX_C2I, align 4
  %151 = load i32, i32* @ASN1_R_BMPSTRING_IS_WRONG_LENGTH, align 4
  %152 = call i32 @ASN1err(i32 %150, i32 %151)
  br label %230

153:                                              ; preds = %145, %142
  %154 = load i32, i32* %11, align 4
  %155 = icmp eq i32 %154, 132
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %157, 3
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* @ASN1_F_ASN1_EX_C2I, align 4
  %162 = load i32, i32* @ASN1_R_UNIVERSALSTRING_IS_WRONG_LENGTH, align 4
  %163 = call i32 @ASN1err(i32 %161, i32 %162)
  br label %230

164:                                              ; preds = %156, %153
  %165 = load i32**, i32*** %8, align 8
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %181, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %11, align 4
  %170 = call %struct.TYPE_18__* @ASN1_STRING_type_new(i32 %169)
  store %struct.TYPE_18__* %170, %struct.TYPE_18__** %15, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %172 = icmp eq %struct.TYPE_18__* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @ASN1_F_ASN1_EX_C2I, align 4
  %175 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %176 = call i32 @ASN1err(i32 %174, i32 %175)
  br label %230

177:                                              ; preds = %168
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %179 = bitcast %struct.TYPE_18__* %178 to i32*
  %180 = load i32**, i32*** %8, align 8
  store i32* %179, i32** %180, align 8
  br label %188

181:                                              ; preds = %164
  %182 = load i32**, i32*** %8, align 8
  %183 = load i32*, i32** %182, align 8
  %184 = bitcast i32* %183 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %184, %struct.TYPE_18__** %15, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %181, %177
  %189 = load i8*, i8** %12, align 8
  %190 = load i8, i8* %189, align 1
  %191 = icmp ne i8 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @OPENSSL_free(i8* %195)
  %197 = load i8*, i8** %9, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load i8*, i8** %12, align 8
  store i8 0, i8* %203, align 1
  br label %218

204:                                              ; preds = %188
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @ASN1_STRING_set(%struct.TYPE_18__* %205, i8* %206, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %204
  %211 = load i32, i32* @ASN1_F_ASN1_EX_C2I, align 4
  %212 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %213 = call i32 @ASN1err(i32 %211, i32 %212)
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %215 = call i32 @ASN1_STRING_free(%struct.TYPE_18__* %214)
  %216 = load i32**, i32*** %8, align 8
  store i32* null, i32** %216, align 8
  br label %230

217:                                              ; preds = %204
  br label %218

218:                                              ; preds = %217, %192
  br label %219

219:                                              ; preds = %218, %129, %120, %113, %98, %90
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %221 = icmp ne %struct.TYPE_17__* %220, null
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = load i32, i32* %11, align 4
  %224 = icmp eq i32 %223, 141
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  store i32* null, i32** %228, align 8
  br label %229

229:                                              ; preds = %225, %222, %219
  store i32 1, i32* %17, align 4
  br label %230

230:                                              ; preds = %229, %210, %173, %160, %149, %128, %119, %103, %94, %89, %58
  %231 = load i32, i32* %17, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %230
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %235 = call i32 @ASN1_TYPE_free(%struct.TYPE_17__* %234)
  %236 = load i32**, i32*** %14, align 8
  %237 = icmp ne i32** %236, null
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32**, i32*** %14, align 8
  store i32* null, i32** %239, align 8
  br label %240

240:                                              ; preds = %238, %233
  br label %241

241:                                              ; preds = %240, %230
  %242 = load i32, i32* %17, align 4
  store i32 %242, i32* %7, align 4
  br label %243

243:                                              ; preds = %241, %32
  %244 = load i32, i32* %7, align 4
  ret i32 %244
}

declare dso_local %struct.TYPE_17__* @ASN1_TYPE_new(...) #1

declare dso_local i32 @ASN1_TYPE_set(%struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @c2i_ASN1_OBJECT(i32**, i8**, i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @c2i_ASN1_BIT_STRING(i32**, i8**, i32) #1

declare dso_local i32 @c2i_ASN1_INTEGER(%struct.TYPE_21__**, i8**, i32) #1

declare dso_local %struct.TYPE_18__* @ASN1_STRING_type_new(i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_STRING_set(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @ASN1_STRING_free(%struct.TYPE_18__*) #1

declare dso_local i32 @ASN1_TYPE_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
