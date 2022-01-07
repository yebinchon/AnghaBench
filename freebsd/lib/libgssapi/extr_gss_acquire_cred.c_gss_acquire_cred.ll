; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_acquire_cred.c_gss_acquire_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_acquire_cred.c_gss_acquire_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_12__ = type { i32, i32* }
%struct._gss_name = type { i32 }
%struct._gss_mech_switch = type { i64 (i64*, i64, i64, %struct.TYPE_12__*, i32, i32*, i32*, i64*)*, i32 (i64*, i32*)*, i32 }
%struct._gss_cred = type { i32, i32, i32*, %struct._gss_mech_switch* }
%struct._gss_mechanism_cred = type { i32, i32, i32*, %struct._gss_mech_switch* }
%struct._gss_mechanism_name = type { i64 }

@GSS_C_NO_CREDENTIAL = common dso_local global i64 0, align 8
@GSS_C_NO_OID_SET = common dso_local global %struct.TYPE_13__* null, align 8
@_gss_mech_oids = common dso_local global %struct.TYPE_13__* null, align 8
@GSS_S_BAD_MECH = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@GSS_C_INDEFINITE = common dso_local global i64 0, align 8
@GSS_C_NO_NAME = common dso_local global i64 0, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@gmc_link = common dso_local global i32 0, align 4
@GSS_S_NO_CRED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_acquire_cred(i64* %0, i64 %1, i64 %2, %struct.TYPE_13__* %3, i32 %4, i64* %5, %struct.TYPE_13__** %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_13__**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_12__, align 8
  %21 = alloca %struct._gss_name*, align 8
  %22 = alloca %struct._gss_mech_switch*, align 8
  %23 = alloca %struct._gss_cred*, align 8
  %24 = alloca %struct._gss_mechanism_cred*, align 8
  %25 = alloca %struct._gss_mechanism_name*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store i64* %0, i64** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64* %5, i64** %15, align 8
  store %struct.TYPE_13__** %6, %struct.TYPE_13__*** %16, align 8
  store i64* %7, i64** %17, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %19, align 8
  %31 = load i64, i64* %11, align 8
  %32 = inttoptr i64 %31 to %struct._gss_name*
  store %struct._gss_name* %32, %struct._gss_name** %21, align 8
  %33 = load i64*, i64** %10, align 8
  store i64 0, i64* %33, align 8
  %34 = load i64*, i64** %15, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %8
  %37 = load i64, i64* @GSS_C_NO_CREDENTIAL, align 8
  %38 = load i64*, i64** %15, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %8
  %40 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %41 = icmp ne %struct.TYPE_13__** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @GSS_C_NO_OID_SET, align 8
  %44 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64*, i64** %17, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i64*, i64** %17, align 8
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = call i32 (...) @_gss_load_mech()
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  store i64 0, i64* %28, align 8
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i64, i64* %28, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load i64*, i64** %10, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %28, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_gss_mech_oids, align 8
  %69 = call i32 @gss_test_oid_set_member(i64* %62, i32* %67, %struct.TYPE_13__* %68, i32* %29)
  %70 = load i32, i32* %29, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %77

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %28, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %28, align 8
  br label %55

77:                                               ; preds = %72, %55
  %78 = load i64, i64* %28, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i64*, i64** %10, align 8
  store i64 0, i64* %84, align 8
  %85 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %85, i64* %9, align 8
  br label %269

86:                                               ; preds = %77
  br label %89

87:                                               ; preds = %50
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_gss_mech_oids, align 8
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %19, align 8
  br label %89

89:                                               ; preds = %87, %86
  %90 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %91 = icmp ne %struct.TYPE_13__** %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i64*, i64** %10, align 8
  %94 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %95 = call i64 @gss_create_empty_oid_set(i64* %93, %struct.TYPE_13__** %94)
  store i64 %95, i64* %18, align 8
  %96 = load i64, i64* %18, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i64, i64* %18, align 8
  store i64 %99, i64* %9, align 8
  br label %269

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %89
  %102 = call %struct._gss_mechanism_cred* @malloc(i32 24)
  %103 = bitcast %struct._gss_mechanism_cred* %102 to %struct._gss_cred*
  store %struct._gss_cred* %103, %struct._gss_cred** %23, align 8
  %104 = load %struct._gss_cred*, %struct._gss_cred** %23, align 8
  %105 = icmp ne %struct._gss_cred* %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %108 = icmp ne %struct.TYPE_13__** %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i64*, i64** %10, align 8
  %111 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %112 = call i32 @gss_release_oid_set(i64* %110, %struct.TYPE_13__** %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i64, i64* @ENOMEM, align 8
  %115 = load i64*, i64** %10, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %116, i64* %9, align 8
  br label %269

117:                                              ; preds = %101
  %118 = load %struct._gss_cred*, %struct._gss_cred** %23, align 8
  %119 = getelementptr inbounds %struct._gss_cred, %struct._gss_cred* %118, i32 0, i32 0
  %120 = call i32 @SLIST_INIT(i32* %119)
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load i64, i64* @GSS_C_INDEFINITE, align 8
  store i64 %122, i64* %26, align 8
  store i64 0, i64* %28, align 8
  br label %123

123:                                              ; preds = %236, %117
  %124 = load i64, i64* %28, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %124, %127
  br i1 %128, label %129, label %239

129:                                              ; preds = %123
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %28, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = call %struct._gss_mech_switch* @_gss_find_mech_switch(i32* %134)
  store %struct._gss_mech_switch* %135, %struct._gss_mech_switch** %22, align 8
  %136 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %137 = icmp ne %struct._gss_mech_switch* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %129
  br label %236

139:                                              ; preds = %129
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* @GSS_C_NO_NAME, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = load i64*, i64** %10, align 8
  %145 = load %struct._gss_name*, %struct._gss_name** %21, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %28, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = call i64 @_gss_find_mn(i64* %144, %struct._gss_name* %145, i32* %150, %struct._gss_mechanism_name** %25)
  store i64 %151, i64* %18, align 8
  %152 = load i64, i64* %18, align 8
  %153 = load i64, i64* @GSS_S_COMPLETE, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  br label %236

156:                                              ; preds = %143
  br label %157

157:                                              ; preds = %156, %139
  %158 = call %struct._gss_mechanism_cred* @malloc(i32 24)
  store %struct._gss_mechanism_cred* %158, %struct._gss_mechanism_cred** %24, align 8
  %159 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %24, align 8
  %160 = icmp ne %struct._gss_mechanism_cred* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  br label %236

162:                                              ; preds = %157
  %163 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %164 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %24, align 8
  %165 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %164, i32 0, i32 3
  store %struct._gss_mech_switch* %163, %struct._gss_mech_switch** %165, align 8
  %166 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %167 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %166, i32 0, i32 2
  %168 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %24, align 8
  %169 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %168, i32 0, i32 2
  store i32* %167, i32** %169, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* %28, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  store i32* %174, i32** %175, align 8
  %176 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %177 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %176, i32 0, i32 0
  %178 = load i64 (i64*, i64, i64, %struct.TYPE_12__*, i32, i32*, i32*, i64*)*, i64 (i64*, i64, i64, %struct.TYPE_12__*, i32, i32*, i32*, i64*)** %177, align 8
  %179 = load i64*, i64** %10, align 8
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* @GSS_C_NO_NAME, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %162
  %184 = load %struct._gss_mechanism_name*, %struct._gss_mechanism_name** %25, align 8
  %185 = getelementptr inbounds %struct._gss_mechanism_name, %struct._gss_mechanism_name* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  br label %189

187:                                              ; preds = %162
  %188 = load i64, i64* @GSS_C_NO_NAME, align 8
  br label %189

189:                                              ; preds = %187, %183
  %190 = phi i64 [ %186, %183 ], [ %188, %187 ]
  %191 = load i64, i64* %12, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %24, align 8
  %194 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %193, i32 0, i32 1
  %195 = call i64 %178(i64* %179, i64 %190, i64 %191, %struct.TYPE_12__* %20, i32 %192, i32* %194, i32* null, i64* %27)
  store i64 %195, i64* %18, align 8
  %196 = load i64, i64* %18, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %189
  %199 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %24, align 8
  %200 = call i32 @free(%struct._gss_mechanism_cred* %199)
  br label %236

201:                                              ; preds = %189
  %202 = load i64, i64* %27, align 8
  %203 = load i64, i64* %26, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load i64, i64* %27, align 8
  store i64 %206, i64* %26, align 8
  br label %207

207:                                              ; preds = %205, %201
  %208 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %209 = icmp ne %struct.TYPE_13__** %208, null
  br i1 %209, label %210, label %230

210:                                              ; preds = %207
  %211 = load i64*, i64** %10, align 8
  %212 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %24, align 8
  %213 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %216 = call i64 @gss_add_oid_set_member(i64* %211, i32* %214, %struct.TYPE_13__** %215)
  store i64 %216, i64* %18, align 8
  %217 = load i64, i64* %18, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %210
  %220 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %22, align 8
  %221 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %220, i32 0, i32 1
  %222 = load i32 (i64*, i32*)*, i32 (i64*, i32*)** %221, align 8
  %223 = load i64*, i64** %10, align 8
  %224 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %24, align 8
  %225 = getelementptr inbounds %struct._gss_mechanism_cred, %struct._gss_mechanism_cred* %224, i32 0, i32 1
  %226 = call i32 %222(i64* %223, i32* %225)
  %227 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %24, align 8
  %228 = call i32 @free(%struct._gss_mechanism_cred* %227)
  br label %236

229:                                              ; preds = %210
  br label %230

230:                                              ; preds = %229, %207
  %231 = load %struct._gss_cred*, %struct._gss_cred** %23, align 8
  %232 = getelementptr inbounds %struct._gss_cred, %struct._gss_cred* %231, i32 0, i32 0
  %233 = load %struct._gss_mechanism_cred*, %struct._gss_mechanism_cred** %24, align 8
  %234 = load i32, i32* @gmc_link, align 4
  %235 = call i32 @SLIST_INSERT_HEAD(i32* %232, %struct._gss_mechanism_cred* %233, i32 %234)
  br label %236

236:                                              ; preds = %230, %219, %198, %161, %155, %138
  %237 = load i64, i64* %28, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %28, align 8
  br label %123

239:                                              ; preds = %123
  %240 = load %struct._gss_cred*, %struct._gss_cred** %23, align 8
  %241 = getelementptr inbounds %struct._gss_cred, %struct._gss_cred* %240, i32 0, i32 0
  %242 = call i32 @SLIST_FIRST(i32* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %257, label %244

244:                                              ; preds = %239
  %245 = load %struct._gss_cred*, %struct._gss_cred** %23, align 8
  %246 = bitcast %struct._gss_cred* %245 to %struct._gss_mechanism_cred*
  %247 = call i32 @free(%struct._gss_mechanism_cred* %246)
  %248 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %249 = icmp ne %struct.TYPE_13__** %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %244
  %251 = load i64*, i64** %10, align 8
  %252 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %16, align 8
  %253 = call i32 @gss_release_oid_set(i64* %251, %struct.TYPE_13__** %252)
  br label %254

254:                                              ; preds = %250, %244
  %255 = load i64*, i64** %10, align 8
  store i64 0, i64* %255, align 8
  %256 = load i64, i64* @GSS_S_NO_CRED, align 8
  store i64 %256, i64* %9, align 8
  br label %269

257:                                              ; preds = %239
  %258 = load i64*, i64** %17, align 8
  %259 = icmp ne i64* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i64, i64* %26, align 8
  %262 = load i64*, i64** %17, align 8
  store i64 %261, i64* %262, align 8
  br label %263

263:                                              ; preds = %260, %257
  %264 = load %struct._gss_cred*, %struct._gss_cred** %23, align 8
  %265 = ptrtoint %struct._gss_cred* %264 to i64
  %266 = load i64*, i64** %15, align 8
  store i64 %265, i64* %266, align 8
  %267 = load i64*, i64** %10, align 8
  store i64 0, i64* %267, align 8
  %268 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %268, i64* %9, align 8
  br label %269

269:                                              ; preds = %263, %254, %113, %98, %83
  %270 = load i64, i64* %9, align 8
  ret i64 %270
}

declare dso_local i32 @_gss_load_mech(...) #1

declare dso_local i32 @gss_test_oid_set_member(i64*, i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i64 @gss_create_empty_oid_set(i64*, %struct.TYPE_13__**) #1

declare dso_local %struct._gss_mechanism_cred* @malloc(i32) #1

declare dso_local i32 @gss_release_oid_set(i64*, %struct.TYPE_13__**) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local %struct._gss_mech_switch* @_gss_find_mech_switch(i32*) #1

declare dso_local i64 @_gss_find_mn(i64*, %struct._gss_name*, i32*, %struct._gss_mechanism_name**) #1

declare dso_local i32 @free(%struct._gss_mechanism_cred*) #1

declare dso_local i64 @gss_add_oid_set_member(i64*, i32*, %struct.TYPE_13__**) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct._gss_mechanism_cred*, i32) #1

declare dso_local i32 @SLIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
