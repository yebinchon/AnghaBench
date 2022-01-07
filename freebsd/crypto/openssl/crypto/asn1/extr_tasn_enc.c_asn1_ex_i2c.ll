; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_enc.c_asn1_ex_i2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_tasn_enc.c_asn1_ex_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { {}* }
%struct.TYPE_11__ = type { i32, i32, i8*, i32 }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@ASN1_ITYPE_PRIMITIVE = common dso_local global i64 0, align 8
@ASN1_ITYPE_MSTRING = common dso_local global i64 0, align 8
@V_ASN1_ANY = common dso_local global i64 0, align 8
@ASN1_TFLG_NDEF = common dso_local global i32 0, align 4
@ASN1_STRING_FLAG_NDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i32*, %struct.TYPE_14__*)* @asn1_ex_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_ex_i2c(i32** %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store i32* null, i32** %10, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %17, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (i32**, i8*, i32*, %struct.TYPE_14__*)**
  %28 = load i32 (i32**, i8*, i32*, %struct.TYPE_14__*)*, i32 (i32**, i8*, i32*, %struct.TYPE_14__*)** %27, align 8
  %29 = icmp ne i32 (i32**, i8*, i32*, %struct.TYPE_14__*)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (i32**, i8*, i32*, %struct.TYPE_14__*)**
  %34 = load i32 (i32**, i8*, i32*, %struct.TYPE_14__*)*, i32 (i32**, i8*, i32*, %struct.TYPE_14__*)** %33, align 8
  %35 = load i32**, i32*** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = call i32 %34(i32** %35, i8* %36, i32* %37, %struct.TYPE_14__* %38)
  store i32 %39, i32* %5, align 4
  br label %219

40:                                               ; preds = %24, %4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ASN1_ITYPE_PRIMITIVE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 147
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %40
  %52 = load i32**, i32*** %6, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %219

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %46
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ASN1_ITYPE_MSTRING, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32**, i32*** %6, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %11, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %94

72:                                               ; preds = %57
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @V_ASN1_ANY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i32**, i32*** %6, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %18, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32** %89, i32*** %6, align 8
  br label %93

90:                                               ; preds = %72
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %90, %78
  br label %94

94:                                               ; preds = %93, %63
  %95 = load i32, i32* %13, align 4
  switch i32 %95, label %173 [
    i32 138, label %96
    i32 140, label %113
    i32 147, label %114
    i32 149, label %152
    i32 141, label %162
    i32 146, label %162
    i32 137, label %172
    i32 139, label %172
    i32 136, label %172
    i32 133, label %172
    i32 129, label %172
    i32 142, label %172
    i32 131, label %172
    i32 145, label %172
    i32 143, label %172
    i32 128, label %172
    i32 144, label %172
    i32 132, label %172
    i32 148, label %172
    i32 130, label %172
    i32 135, label %172
    i32 134, label %172
  ]

96:                                               ; preds = %94
  %97 = load i32**, i32*** %6, align 8
  %98 = load i32*, i32** %97, align 8
  %99 = bitcast i32* %98 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %12, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %14, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %16, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %16, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %96
  store i32 -1, i32* %5, align 4
  br label %219

112:                                              ; preds = %108
  br label %206

113:                                              ; preds = %94
  store i8* null, i8** %14, align 8
  store i32 0, i32* %16, align 4
  br label %206

114:                                              ; preds = %94
  %115 = load i32**, i32*** %6, align 8
  %116 = bitcast i32** %115 to i32*
  store i32* %116, i32** %10, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 -1, i32* %5, align 4
  br label %219

121:                                              ; preds = %114
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @V_ASN1_ANY, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %121
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 -1, i32* %5, align 4
  br label %219

137:                                              ; preds = %131, %127
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  store i32 -1, i32* %5, align 4
  br label %219

147:                                              ; preds = %141, %137
  br label %148

148:                                              ; preds = %147, %121
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %149, align 4
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %15, align 1
  store i8* %15, i8** %14, align 8
  store i32 1, i32* %16, align 4
  br label %206

152:                                              ; preds = %94
  %153 = load i32**, i32*** %6, align 8
  %154 = load i32*, i32** %153, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %159

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %157
  %160 = phi i8** [ %7, %157 ], [ null, %158 ]
  %161 = call i32 @i2c_ASN1_BIT_STRING(i32* %154, i8** %160)
  store i32 %161, i32* %5, align 4
  br label %219

162:                                              ; preds = %94, %94
  %163 = load i32**, i32*** %6, align 8
  %164 = load i32*, i32** %163, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %169

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168, %167
  %170 = phi i8** [ %7, %167 ], [ null, %168 ]
  %171 = call i32 @i2c_ASN1_INTEGER(i32* %164, i8** %170)
  store i32 %171, i32* %5, align 4
  br label %219

172:                                              ; preds = %94, %94, %94, %94, %94, %94, %94, %94, %94, %94, %94, %94, %94, %94, %94, %94
  br label %173

173:                                              ; preds = %94, %172
  %174 = load i32**, i32*** %6, align 8
  %175 = load i32*, i32** %174, align 8
  %176 = bitcast i32* %175 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %11, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @ASN1_TFLG_NDEF, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %173
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @ASN1_STRING_FLAG_NDEF, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %182
  %190 = load i8*, i8** %7, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i8*, i8** %7, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 3
  store i32 0, i32* %197, align 8
  br label %198

198:                                              ; preds = %192, %189
  store i32 -2, i32* %5, align 4
  br label %219

199:                                              ; preds = %182, %173
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %14, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %199, %148, %113, %112
  %207 = load i8*, i8** %7, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i8*, i8** %7, align 8
  %214 = load i8*, i8** %14, align 8
  %215 = load i32, i32* %16, align 4
  %216 = call i32 @memcpy(i8* %213, i8* %214, i32 %215)
  br label %217

217:                                              ; preds = %212, %209, %206
  %218 = load i32, i32* %16, align 4
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %217, %198, %169, %159, %146, %136, %120, %111, %55, %30
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @i2c_ASN1_BIT_STRING(i32*, i8**) #1

declare dso_local i32 @i2c_ASN1_INTEGER(i32*, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
