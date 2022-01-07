; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_mad.c_mad_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_mad.c_mad_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@IB_MAD_RESPONSE = common dso_local global i32 0, align 4
@IB_MAD_METHOD_F = common dso_local global i32 0, align 4
@IB_MAD_RESPONSE_F = common dso_local global i32 0, align 4
@IB_SA_CLASS = common dso_local global i32 0, align 4
@IB_CC_CLASS = common dso_local global i32 0, align 4
@IB_MAD_CLASSVER_F = common dso_local global i32 0, align 4
@IB_MAD_MGMTCLASS_F = common dso_local global i32 0, align 4
@IB_MAD_BASEVER_F = common dso_local global i32 0, align 4
@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"encoding dr mad without drpath (null)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IB_SUBNET_PATH_HOPS_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"dr path with hop count %d\00", align 1
@IB_DRSMP_HOPCNT_F = common dso_local global i32 0, align 4
@IB_DRSMP_HOPPTR_F = common dso_local global i32 0, align 4
@IB_DRSMP_STATUS_F = common dso_local global i32 0, align 4
@IB_DRSMP_DIRECTION_F = common dso_local global i32 0, align 4
@IB_MAD_STATUS_F = common dso_local global i32 0, align 4
@IB_MAD_TRID_F = common dso_local global i32 0, align 4
@IB_MAD_ATTRID_F = common dso_local global i32 0, align 4
@IB_MAD_ATTRMOD_F = common dso_local global i32 0, align 4
@IB_MAD_MKEY_F = common dso_local global i32 0, align 4
@IB_DRSMP_DRDLID_F = common dso_local global i32 0, align 4
@IB_DRSMP_DRSLID_F = common dso_local global i32 0, align 4
@IB_DRSMP_RPATH_F = common dso_local global i32 0, align 4
@IB_DRSMP_PATH_F = common dso_local global i32 0, align 4
@IB_SA_COMPMASK_F = common dso_local global i32 0, align 4
@IB_CC_CCKEY_F = common dso_local global i32 0, align 4
@IB_VEND2_OUI_F = common dso_local global i32 0, align 4
@IB_MAD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mad_encode(i8* %0, %struct.TYPE_8__* %1, %struct.TYPE_10__* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IB_MAD_RESPONSE, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @IB_MAD_METHOD_F, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mad_set_field(i8* %18, i32 0, i32 %19, i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @IB_MAD_RESPONSE_F, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = call i32 @mad_set_field(i8* %24, i32 0, i32 %25, i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 255
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @IB_SA_CLASS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @IB_CC_CLASS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @IB_MAD_CLASSVER_F, align 4
  %45 = call i32 @mad_set_field(i8* %43, i32 0, i32 %44, i32 2)
  br label %50

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @IB_MAD_CLASSVER_F, align 4
  %49 = call i32 @mad_set_field(i8* %47, i32 0, i32 %48, i32 1)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @IB_MAD_MGMTCLASS_F, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 255
  %57 = call i32 @mad_set_field(i8* %51, i32 0, i32 %52, i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* @IB_MAD_BASEVER_F, align 4
  %60 = call i32 @mad_set_field(i8* %58, i32 0, i32 %59, i32 1)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 255
  %65 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %120

67:                                               ; preds = %50
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @IBWARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %279

73:                                               ; preds = %67
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IB_SUBNET_PATH_HOPS_MAX, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i8*, ...) @IBWARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %279

85:                                               ; preds = %73
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* @IB_DRSMP_HOPCNT_F, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @mad_set_field(i8* %86, i32 0, i32 %87, i32 %91)
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* @IB_DRSMP_HOPPTR_F, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  br label %103

102:                                              ; preds = %85
  br label %103

103:                                              ; preds = %102, %97
  %104 = phi i64 [ %101, %97 ], [ 0, %102 ]
  %105 = trunc i64 %104 to i32
  %106 = call i32 @mad_set_field(i8* %93, i32 0, i32 %94, i32 %105)
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* @IB_DRSMP_STATUS_F, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @mad_set_field(i8* %107, i32 0, i32 %108, i32 %111)
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* @IB_DRSMP_DIRECTION_F, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  %119 = call i32 @mad_set_field(i8* %113, i32 0, i32 %114, i32 %118)
  br label %127

120:                                              ; preds = %50
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* @IB_MAD_STATUS_F, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @mad_set_field(i8* %121, i32 0, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %120, %103
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 9
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = call i64 (...) @mad_trid()
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 9
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* @IB_MAD_TRID_F, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 9
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @mad_set_field64(i8* %137, i32 0, i32 %138, i64 %141)
  %143 = load i8*, i8** %6, align 8
  %144 = load i32, i32* @IB_MAD_ATTRID_F, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @mad_set_field(i8* %143, i32 0, i32 %144, i32 %148)
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* @IB_MAD_ATTRMOD_F, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @mad_set_field(i8* %150, i32 0, i32 %151, i32 %155)
  %157 = load i8*, i8** %6, align 8
  %158 = load i32, i32* @IB_MAD_MKEY_F, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @mad_set_field64(i8* %157, i32 0, i32 %158, i64 %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 255
  %167 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %215

169:                                              ; preds = %136
  %170 = load i8*, i8** %6, align 8
  %171 = load i32, i32* @IB_DRSMP_DRDLID_F, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  br label %181

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %176
  %182 = phi i32 [ %179, %176 ], [ 65535, %180 ]
  %183 = call i32 @mad_set_field(i8* %170, i32 0, i32 %171, i32 %182)
  %184 = load i8*, i8** %6, align 8
  %185 = load i32, i32* @IB_DRSMP_DRSLID_F, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %181
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  br label %195

194:                                              ; preds = %181
  br label %195

195:                                              ; preds = %194, %190
  %196 = phi i32 [ %193, %190 ], [ 65535, %194 ]
  %197 = call i32 @mad_set_field(i8* %184, i32 0, i32 %185, i32 %196)
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load i8*, i8** %6, align 8
  %202 = load i32, i32* @IB_DRSMP_RPATH_F, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @mad_set_array(i8* %201, i32 0, i32 %202, i32 %205)
  br label %214

207:                                              ; preds = %195
  %208 = load i8*, i8** %6, align 8
  %209 = load i32, i32* @IB_DRSMP_PATH_F, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @mad_set_array(i8* %208, i32 0, i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %207, %200
  br label %215

215:                                              ; preds = %214, %136
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, 255
  %220 = load i32, i32* @IB_SA_CLASS, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %215
  %223 = load i8*, i8** %6, align 8
  %224 = load i32, i32* @IB_SA_COMPMASK_F, align 4
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @mad_set_field64(i8* %223, i32 0, i32 %224, i64 %227)
  br label %229

229:                                              ; preds = %222, %215
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 255
  %234 = load i32, i32* @IB_CC_CLASS, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %229
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %238 = bitcast %struct.TYPE_8__* %237 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %238, %struct.TYPE_9__** %12, align 8
  %239 = load i8*, i8** %6, align 8
  %240 = load i32, i32* @IB_CC_CCKEY_F, align 4
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @mad_set_field64(i8* %239, i32 0, i32 %240, i64 %243)
  br label %245

245:                                              ; preds = %236, %229
  %246 = load i8*, i8** %9, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %260

248:                                              ; preds = %245
  %249 = load i8*, i8** %6, align 8
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %249, i64 %253
  %255 = load i8*, i8** %9, align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @memcpy(i8* %254, i8* %255, i32 %258)
  br label %260

260:                                              ; preds = %248, %245
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, 255
  %265 = call i64 @mad_is_vendor_range2(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %260
  %268 = load i8*, i8** %6, align 8
  %269 = load i32, i32* @IB_VEND2_OUI_F, align 4
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @mad_set_field(i8* %268, i32 0, i32 %269, i32 %272)
  br label %274

274:                                              ; preds = %267, %260
  %275 = load i8*, i8** %6, align 8
  %276 = load i32, i32* @IB_MAD_SIZE, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr i8, i8* %275, i64 %277
  store i8* %278, i8** %5, align 8
  br label %279

279:                                              ; preds = %274, %79, %70
  %280 = load i8*, i8** %5, align 8
  ret i8* %280
}

declare dso_local i32 @mad_set_field(i8*, i32, i32, i32) #1

declare dso_local i32 @IBWARN(i8*, ...) #1

declare dso_local i64 @mad_trid(...) #1

declare dso_local i32 @mad_set_field64(i8*, i32, i32, i64) #1

declare dso_local i32 @mad_set_array(i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @mad_is_vendor_range2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
