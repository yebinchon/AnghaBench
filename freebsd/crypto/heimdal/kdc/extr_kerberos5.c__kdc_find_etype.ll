; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c__kdc_find_etype.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c__kdc_find_etype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@ETYPE_NULL = common dso_local global i64 0, align 8
@KRB5KDC_ERR_ETYPE_NOSUPP = common dso_local global i64 0, align 8
@KRB5KDC_ERR_NULL_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_kdc_find_etype(i32 %0, i64 %1, i64 %2, %struct.TYPE_14__* %3, i64* %4, i32 %5, i64* %6, %struct.TYPE_15__** %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_15__**, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32 %5, i32* %15, align 4
  store i64* %6, i64** %16, align 8
  store %struct.TYPE_15__** %7, %struct.TYPE_15__*** %17, align 8
  %26 = load i64, i64* @ETYPE_NULL, align 8
  store i64 %26, i64* %20, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @krb5_get_pw_salt(i32 %27, i32 %31, i32* %19)
  store i64 %32, i64* %18, align 8
  %33 = load i64, i64* %18, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %8
  %36 = load i64, i64* %18, align 8
  store i64 %36, i64* %9, align 8
  br label %262

37:                                               ; preds = %8
  %38 = load i64, i64* @KRB5KDC_ERR_ETYPE_NOSUPP, align 8
  store i64 %38, i64* %18, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %173

41:                                               ; preds = %37
  %42 = load i64, i64* @ETYPE_NULL, align 8
  store i64 %42, i64* %24, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i64* @krb5_kerberos_enctypes(i32 %43)
  store i64* %44, i64** %23, align 8
  store i32 0, i32* %22, align 4
  br label %45

45:                                               ; preds = %134, %41
  %46 = load i64*, i64** %23, align 8
  %47 = load i32, i32* %22, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ETYPE_NULL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i64, i64* %20, align 8
  %55 = load i64, i64* @ETYPE_NULL, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi i1 [ false, %45 ], [ %56, %53 ]
  br i1 %58, label %59, label %137

59:                                               ; preds = %57
  %60 = load i32, i32* %10, align 4
  %61 = load i64*, i64** %23, align 8
  %62 = load i32, i32* %22, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @krb5_enctype_valid(i32 %60, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %134

69:                                               ; preds = %59
  store i32 0, i32* %25, align 4
  br label %70

70:                                               ; preds = %130, %69
  %71 = load i32, i32* %25, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* @ETYPE_NULL, align 8
  %77 = icmp eq i64 %75, %76
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ false, %70 ], [ %77, %74 ]
  br i1 %79, label %80, label %133

80:                                               ; preds = %78
  %81 = load i64*, i64** %23, align 8
  %82 = load i32, i32* %22, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %14, align 8
  %87 = load i32, i32* %25, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %85, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %130

93:                                               ; preds = %80
  %94 = load i64, i64* %24, align 8
  %95 = load i64, i64* @ETYPE_NULL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i64*, i64** %23, align 8
  %99 = load i32, i32* %22, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %24, align 8
  br label %103

103:                                              ; preds = %97, %93
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i64*, i64** %23, align 8
  %108 = load i32, i32* %22, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @hdb_enctype2key(i32 %104, %struct.TYPE_16__* %106, i64 %111, %struct.TYPE_15__** %21)
  store i64 %112, i64* %18, align 8
  %113 = load i64, i64* %18, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %130

116:                                              ; preds = %103
  %117 = load i64, i64* %12, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %121 = call i64 @is_default_salt_p(i32* %19, %struct.TYPE_15__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  br label %130

124:                                              ; preds = %119, %116
  %125 = load i64*, i64** %23, align 8
  %126 = load i32, i32* %22, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %20, align 8
  br label %130

130:                                              ; preds = %124, %123, %115, %92
  %131 = load i32, i32* %25, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %25, align 4
  br label %70

133:                                              ; preds = %78
  br label %134

134:                                              ; preds = %133, %68
  %135 = load i32, i32* %22, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %22, align 4
  br label %45

137:                                              ; preds = %57
  %138 = load i64, i64* %24, align 8
  %139 = load i64, i64* @ETYPE_NULL, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i64, i64* %20, align 8
  %143 = load i64, i64* @ETYPE_NULL, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i64, i64* %24, align 8
  store i64 %146, i64* %20, align 8
  br label %154

147:                                              ; preds = %141, %137
  %148 = load i64, i64* %20, align 8
  %149 = load i64, i64* @ETYPE_NULL, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i64, i64* @KRB5KDC_ERR_ETYPE_NOSUPP, align 8
  store i64 %152, i64* %18, align 8
  br label %153

153:                                              ; preds = %151, %147
  br label %154

154:                                              ; preds = %153, %145
  %155 = load i64, i64* %18, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i64*, i64** %16, align 8
  %159 = icmp ne i64* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i64, i64* %20, align 8
  %162 = load i64*, i64** %16, align 8
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %160, %157, %154
  %164 = load i64, i64* %18, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  %168 = icmp ne %struct.TYPE_15__** %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %171 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  store %struct.TYPE_15__* %170, %struct.TYPE_15__** %171, align 8
  br label %172

172:                                              ; preds = %169, %166, %163
  br label %256

173:                                              ; preds = %37
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %21, align 8
  store i32 0, i32* %22, align 4
  br label %174

174:                                              ; preds = %252, %173
  %175 = load i64, i64* %18, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp ult i32 %178, %179
  br label %181

181:                                              ; preds = %177, %174
  %182 = phi i1 [ false, %174 ], [ %180, %177 ]
  br i1 %182, label %183, label %255

183:                                              ; preds = %181
  %184 = load i32, i32* %10, align 4
  %185 = load i64*, i64** %14, align 8
  %186 = load i32, i32* %22, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @krb5_enctype_valid(i32 %184, i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %183
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i64*, i64** %14, align 8
  %198 = load i32, i32* %22, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @_kdc_is_weak_exception(i32 %196, i64 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %192
  br label %252

205:                                              ; preds = %192, %183
  br label %206

206:                                              ; preds = %250, %224, %205
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i64*, i64** %14, align 8
  %211 = load i32, i32* %22, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = call i64 @hdb_next_enctype2key(i32 %207, %struct.TYPE_16__* %209, i64 %214, %struct.TYPE_15__** %21)
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %251

217:                                              ; preds = %206
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = load i64, i64* @KRB5KDC_ERR_NULL_KEY, align 8
  store i64 %225, i64* %18, align 8
  br label %206

226:                                              ; preds = %217
  %227 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  %228 = icmp ne %struct.TYPE_15__** %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %231 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  store %struct.TYPE_15__* %230, %struct.TYPE_15__** %231, align 8
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i64*, i64** %16, align 8
  %234 = icmp ne i64* %233, null
  br i1 %234, label %235, label %242

235:                                              ; preds = %232
  %236 = load i64*, i64** %14, align 8
  %237 = load i32, i32* %22, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i64, i64* %236, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = load i64*, i64** %16, align 8
  store i64 %240, i64* %241, align 8
  br label %242

242:                                              ; preds = %235, %232
  store i64 0, i64* %18, align 8
  %243 = load i64, i64* %12, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %247 = call i64 @is_default_salt_p(i32* %19, %struct.TYPE_15__* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  br label %257

250:                                              ; preds = %245, %242
  br label %206

251:                                              ; preds = %206
  br label %252

252:                                              ; preds = %251, %204
  %253 = load i32, i32* %22, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %22, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %21, align 8
  br label %174

255:                                              ; preds = %181
  br label %256

256:                                              ; preds = %255, %172
  br label %257

257:                                              ; preds = %256, %249
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %19, align 4
  %260 = call i32 @krb5_free_salt(i32 %258, i32 %259)
  %261 = load i64, i64* %18, align 8
  store i64 %261, i64* %9, align 8
  br label %262

262:                                              ; preds = %257, %35
  %263 = load i64, i64* %9, align 8
  ret i64 %263
}

declare dso_local i64 @krb5_get_pw_salt(i32, i32, i32*) #1

declare dso_local i64* @krb5_kerberos_enctypes(i32) #1

declare dso_local i64 @krb5_enctype_valid(i32, i64) #1

declare dso_local i64 @hdb_enctype2key(i32, %struct.TYPE_16__*, i64, %struct.TYPE_15__**) #1

declare dso_local i64 @is_default_salt_p(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @_kdc_is_weak_exception(i32, i64) #1

declare dso_local i64 @hdb_next_enctype2key(i32, %struct.TYPE_16__*, i64, %struct.TYPE_15__**) #1

declare dso_local i32 @krb5_free_salt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
