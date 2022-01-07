; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c_check_tgs_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_krb5tgs.c_check_tgs_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64*, i32*, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64*, i64, i64, i32*, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Bad request to validate ticket\00", align 1
@KRB5KDC_ERR_BADOPTION = common dso_local global i32 0, align 4
@kdc_time = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Early request to validate ticket\00", align 1
@KRB5KRB_AP_ERR_TKT_NYV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Ticket-granting ticket has INVALID flag set\00", align 1
@KRB5KRB_AP_ERR_TKT_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Bad request for forwardable ticket\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Request to forward non-forwardable ticket\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Bad request for proxiable ticket\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Request to proxy non-proxiable ticket\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Bad request for post-datable ticket\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bad request for postdated ticket\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Ticket cannot be postdated\00", align 1
@KRB5KDC_ERR_CANNOT_POSTDATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Bad request for renewable ticket\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Request to renew non-renewable ticket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_19__*)* @check_tgs_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tgs_flags(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2, %struct.TYPE_19__* %3, %struct.TYPE_19__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %11, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %16 = bitcast %struct.TYPE_18__* %12 to i8*
  %17 = bitcast %struct.TYPE_18__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 80, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %5
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = icmp eq i64* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %21
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = call i32 @kdc_log(%struct.TYPE_16__* %33, %struct.TYPE_15__* %34, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @KRB5KDC_ERR_BADOPTION, align 4
  store i32 %36, i32* %6, align 4
  br label %352

37:                                               ; preds = %27
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @kdc_time, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = call i32 @kdc_log(%struct.TYPE_16__* %45, %struct.TYPE_15__* %46, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @KRB5KRB_AP_ERR_TKT_NYV, align 4
  store i32 %48, i32* %6, align 4
  br label %352

49:                                               ; preds = %37
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %65

53:                                               ; preds = %5
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %62 = call i32 @kdc_log(%struct.TYPE_16__* %60, %struct.TYPE_15__* %61, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @KRB5KRB_AP_ERR_TKT_INVALID, align 4
  store i32 %63, i32* %6, align 4
  br label %352

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %49
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %78 = call i32 @kdc_log(%struct.TYPE_16__* %76, %struct.TYPE_15__* %77, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @KRB5KDC_ERR_BADOPTION, align 4
  store i32 %79, i32* %6, align 4
  br label %352

80:                                               ; preds = %69
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %65
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = call i32 @kdc_log(%struct.TYPE_16__* %95, %struct.TYPE_15__* %96, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* @KRB5KDC_ERR_BADOPTION, align 4
  store i32 %98, i32* %6, align 4
  br label %352

99:                                               ; preds = %88
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  store i32 1, i32* %102, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %99, %84
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %114, %108
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = call i32 @kdc_log(%struct.TYPE_16__* %129, %struct.TYPE_15__* %130, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %132 = load i32, i32* @KRB5KDC_ERR_BADOPTION, align 4
  store i32 %132, i32* %6, align 4
  br label %352

133:                                              ; preds = %122
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %118
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %137
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %141
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %150 = call i32 @kdc_log(%struct.TYPE_16__* %148, %struct.TYPE_15__* %149, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %151 = load i32, i32* @KRB5KDC_ERR_BADOPTION, align 4
  store i32 %151, i32* %6, align 4
  br label %352

152:                                              ; preds = %141
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 4
  store i32 1, i32* %155, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %152, %137
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 4
  store i32 1, i32* %170, align 8
  br label %171

171:                                              ; preds = %167, %161
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %171
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %175
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %184 = call i32 @kdc_log(%struct.TYPE_16__* %182, %struct.TYPE_15__* %183, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %185 = load i32, i32* @KRB5KDC_ERR_BADOPTION, align 4
  store i32 %185, i32* %6, align 4
  br label %352

186:                                              ; preds = %175
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 5
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %186, %171
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %225

194:                                              ; preds = %190
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %194
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %203 = call i32 @kdc_log(%struct.TYPE_16__* %201, %struct.TYPE_15__* %202, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %204 = load i32, i32* @KRB5KDC_ERR_BADOPTION, align 4
  store i32 %204, i32* %6, align 4
  br label %352

205:                                              ; preds = %194
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load i64*, i64** %207, align 8
  %209 = icmp ne i64* %208, null
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  store i64 %214, i64* %217, align 8
  br label %218

218:                                              ; preds = %210, %205
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 6
  store i32 1, i32* %221, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  store i32 1, i32* %224, align 8
  br label %247

225:                                              ; preds = %190
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i64*, i64** %227, align 8
  %229 = icmp ne i64* %228, null
  br i1 %229, label %230, label %246

230:                                              ; preds = %225
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 0
  %233 = load i64*, i64** %232, align 8
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @kdc_time, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %235, %238
  %240 = icmp sgt i64 %234, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %230
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %244 = call i32 @kdc_log(%struct.TYPE_16__* %242, %struct.TYPE_15__* %243, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %245 = load i32, i32* @KRB5KDC_ERR_CANNOT_POSTDATE, align 4
  store i32 %245, i32* %6, align 4
  br label %352

246:                                              ; preds = %230, %225
  br label %247

247:                                              ; preds = %246, %218
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %285

251:                                              ; preds = %247
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = icmp eq i32* %260, null
  br i1 %261, label %262, label %267

262:                                              ; preds = %257, %251
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %265 = call i32 @kdc_log(%struct.TYPE_16__* %263, %struct.TYPE_15__* %264, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %266 = load i32, i32* @KRB5KDC_ERR_BADOPTION, align 4
  store i32 %266, i32* %6, align 4
  br label %352

267:                                              ; preds = %257
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 7
  store i32 1, i32* %270, align 4
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @ALLOC(i32* %273)
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 1
  %277 = call i32 @_kdc_fix_time(i32** %276)
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 3
  %284 = load i32*, i32** %283, align 8
  store i32 %281, i32* %284, align 4
  br label %285

285:                                              ; preds = %267, %247
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %351

289:                                              ; preds = %285
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %289
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = icmp eq i32* %298, null
  br i1 %299, label %300, label %305

300:                                              ; preds = %295, %289
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %303 = call i32 @kdc_log(%struct.TYPE_16__* %301, %struct.TYPE_15__* %302, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %304 = load i32, i32* @KRB5KDC_ERR_BADOPTION, align 4
  store i32 %304, i32* %6, align 4
  br label %352

305:                                              ; preds = %295
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %13, align 8
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  %311 = load i64*, i64** %310, align 8
  %312 = icmp ne i64* %311, null
  br i1 %312, label %313, label %320

313:                                              ; preds = %305
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 0
  %316 = load i64*, i64** %315, align 8
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %13, align 8
  %319 = sub nsw i64 %318, %317
  store i64 %319, i64* %13, align 8
  br label %326

320:                                              ; preds = %305
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* %13, align 8
  %325 = sub nsw i64 %324, %323
  store i64 %325, i64* %13, align 8
  br label %326

326:                                              ; preds = %320, %313
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 0
  %329 = load i64*, i64** %328, align 8
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* %13, align 8
  %332 = add nsw i64 %330, %331
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 1
  store i64 %332, i64* %334, align 8
  %335 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 3
  %337 = load i32*, i32** %336, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %339, label %350

339:                                              ; preds = %326
  %340 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %340, i32 0, i32 3
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = call i64 @min(i32 %343, i64 %346)
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 1
  store i64 %347, i64* %349, align 8
  br label %350

350:                                              ; preds = %339, %326
  br label %351

351:                                              ; preds = %350, %285
  store i32 0, i32* %6, align 4
  br label %352

352:                                              ; preds = %351, %300, %262, %241, %200, %181, %147, %128, %94, %75, %59, %44, %32
  %353 = load i32, i32* %6, align 4
  ret i32 %353
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @kdc_log(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i8*) #2

declare dso_local i32 @ALLOC(i32*) #2

declare dso_local i32 @_kdc_fix_time(i32**) #2

declare dso_local i64 @min(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
