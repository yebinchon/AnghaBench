; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_Ipv4TtlOrIpv6HopLimitCheckParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_Ipv4TtlOrIpv6HopLimitCheckParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_24__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__, i32, i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_19__ = type { i32*, i32*, i8*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [87 x i8] c"For node of the type IPV4_TTL or IPV6_HOP_LIMIT the maximal supported 'numOfKeys' is 1\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"For node of the type IPV4_TTL or IPV6_HOP_LIMIT the maximal supported 'maxNumOfKeys' is 1\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid statistics parameters\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"For this node MissNextEngineParams are not valid\00", align 1
@NO_MSG = common dso_local global i8* null, align 8
@e_FM_PCD_CC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [78 x i8] c"For node of the type IPV4_TTL or IPV6_HOP_LIMIT p_Mask can not be initialized\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"For node of the type IPV4_TTL or IPV6_HOP_LIMIT p_Key has to be 1\00", align 1
@FALSE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_20__*, %struct.TYPE_21__*, i32*)* @Ipv4TtlOrIpv6HopLimitCheckParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Ipv4TtlOrIpv6HopLimitCheckParams(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @MAJOR, align 4
  %20 = load i64, i64* @E_INVALID_VALUE, align 8
  %21 = call i32 @RETURN_ERROR(i32 %19, i64 %20, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @MAJOR, align 4
  %36 = load i64, i64* @E_INVALID_VALUE, align 8
  %37 = call i32 @RETURN_ERROR(i32 %35, i64 %36, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %28, %22
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = call i64 @ValidateAndCalcStatsParams(%struct.TYPE_21__* %39, %struct.TYPE_20__* %40, i32* %42, i32* %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @MAJOR, align 4
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @RETURN_ERROR(i32 %49, i64 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %38
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ValidateNextEngineParams(i32 %53, %struct.TYPE_24__* %56, i32 %60)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load i32, i32* @MAJOR, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @RETURN_ERROR(i32 %65, i64 %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %52
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = call i64 @FmPcdManipCheckParamsForCcNextEngine(%struct.TYPE_24__* %78, i8** %13)
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* @MAJOR, align 4
  %84 = load i64, i64* %11, align 8
  %85 = load i8*, i8** @NO_MSG, align 8
  %86 = call i32 @RETURN_ERROR(i32 %83, i64 %84, i8* %85)
  br label %87

87:                                               ; preds = %82, %75
  br label %88

88:                                               ; preds = %87, %68
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = call i32 @memcpy(%struct.TYPE_23__* %97, %struct.TYPE_24__* %100, i32 4)
  %102 = load i8*, i8** %13, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  store i8* %102, i8** %111, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @e_FM_PCD_CC, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %161

125:                                              ; preds = %88
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %125
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @AllocAndFillAdForContLookupManip(i32 %151)
  store i64 %152, i64* %11, align 8
  %153 = load i64, i64* %11, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %138
  %156 = load i32, i32* @MAJOR, align 4
  %157 = load i64, i64* %11, align 8
  %158 = load i8*, i8** @NO_MSG, align 8
  %159 = call i32 @RETURN_ERROR(i32 %156, i64 %157, i8* %158)
  br label %160

160:                                              ; preds = %155, %138
  br label %161

161:                                              ; preds = %160, %125, %88
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %309, %161
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %312

168:                                              ; preds = %162
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i64 %174
  store %struct.TYPE_22__* %175, %struct.TYPE_22__** %10, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %168
  %181 = load i32, i32* @MAJOR, align 4
  %182 = load i64, i64* @E_INVALID_VALUE, align 8
  %183 = call i32 @RETURN_ERROR(i32 %181, i64 %182, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  br label %184

184:                                              ; preds = %180, %168
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @memcmp(i32 %187, i32* %12, i32 1)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load i32, i32* @MAJOR, align 4
  %192 = load i64, i64* @E_INVALID_VALUE, align 8
  %193 = call i32 @RETURN_ERROR(i32 %191, i64 %192, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  br label %194

194:                                              ; preds = %190, %184
  %195 = load i32, i32* %5, align 4
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i64 @ValidateNextEngineParams(i32 %195, %struct.TYPE_24__* %197, i32 %200)
  store i64 %201, i64* %11, align 8
  %202 = load i64, i64* %11, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %194
  %205 = load i32, i32* @MAJOR, align 4
  %206 = load i64, i64* %11, align 8
  %207 = load i8*, i8** @NO_MSG, align 8
  %208 = call i32 @RETURN_ERROR(i32 %205, i64 %206, i8* %207)
  br label %209

209:                                              ; preds = %204, %194
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %209
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  %218 = call i64 @FmPcdManipCheckParamsForCcNextEngine(%struct.TYPE_24__* %217, i8** %13)
  store i64 %218, i64* %11, align 8
  %219 = load i64, i64* %11, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %215
  %222 = load i32, i32* @MAJOR, align 4
  %223 = load i64, i64* %11, align 8
  %224 = load i8*, i8** @NO_MSG, align 8
  %225 = call i32 @RETURN_ERROR(i32 %222, i64 %223, i8* %224)
  br label %226

226:                                              ; preds = %221, %215
  br label %227

227:                                              ; preds = %226, %209
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  store i32 %228, i32* %237, align 4
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  store i32 255, i32* %246, align 4
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 0
  %256 = call i32 @memcpy(%struct.TYPE_23__* %253, %struct.TYPE_24__* %255, i32 4)
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @e_FM_PCD_CC, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %300

268:                                              ; preds = %227
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %300

279:                                              ; preds = %268
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %281, align 8
  %283 = load i32, i32* %9, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i64 @AllocAndFillAdForContLookupManip(i32 %290)
  store i64 %291, i64* %11, align 8
  %292 = load i64, i64* %11, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %279
  %295 = load i32, i32* @MAJOR, align 4
  %296 = load i64, i64* %11, align 8
  %297 = load i8*, i8** @NO_MSG, align 8
  %298 = call i32 @RETURN_ERROR(i32 %295, i64 %296, i8* %297)
  br label %299

299:                                              ; preds = %294, %279
  br label %300

300:                                              ; preds = %299, %268, %227
  %301 = load i8*, i8** %13, align 8
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %303, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 2
  store i8* %301, i8** %308, align 8
  br label %309

309:                                              ; preds = %300
  %310 = load i32, i32* %9, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %9, align 4
  br label %162

312:                                              ; preds = %162
  %313 = load i32, i32* @FALSE, align 4
  %314 = load i32*, i32** %8, align 8
  store i32 %313, i32* %314, align 4
  %315 = load i64, i64* @E_OK, align 8
  ret i64 %315
}

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i64 @ValidateAndCalcStatsParams(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i64 @ValidateNextEngineParams(i32, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @FmPcdManipCheckParamsForCcNextEngine(%struct.TYPE_24__*, i8**) #1

declare dso_local i32 @memcpy(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @AllocAndFillAdForContLookupManip(i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
