; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c_kdc_check_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c_kdc_check_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64*, i64*, i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Client (%s) is locked out\00", align 1
@KRB5KDC_ERR_POLICY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Client (%s) has invalid bit set\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Principal may not act as client -- %s\00", align 1
@kdc_time = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Client not yet valid until %s -- %s\00", align 1
@KRB5KDC_ERR_CLIENT_NOTYET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Client expired at %s -- %s\00", align 1
@KRB5KDC_ERR_NAME_EXP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Client's key has expired at %s -- %s\00", align 1
@KRB5KDC_ERR_KEY_EXPIRED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Client server locked out -- %s\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Server has invalid flag set -- %s\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Principal may not act as server -- %s\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"AS-REQ is required for server -- %s\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Server not yet valid until %s -- %s\00", align 1
@KRB5KDC_ERR_SERVICE_NOTYET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Server expired at %s -- %s\00", align 1
@KRB5KDC_ERR_SERVICE_EXP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"Server's key has expired at -- %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdc_check_flags(i32 %0, i32* %1, %struct.TYPE_7__* %2, i8* %3, %struct.TYPE_7__* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca [100 x i8], align 16
  %18 = alloca [100 x i8], align 16
  %19 = alloca [100 x i8], align 16
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca [100 x i8], align 16
  %22 = alloca [100 x i8], align 16
  %23 = alloca [100 x i8], align 16
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %156

26:                                               ; preds = %7
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %16, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %35, i32* %36, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @KRB5KDC_ERR_POLICY, align 4
  store i32 %39, i32* %8, align 4
  br label %295

40:                                               ; preds = %26
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %47, i32* %48, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @KRB5KDC_ERR_POLICY, align 4
  store i32 %51, i32* %8, align 4
  br label %295

52:                                               ; preds = %40
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %59, i32* %60, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @KRB5KDC_ERR_POLICY, align 4
  store i32 %63, i32* %8, align 4
  br label %295

64:                                               ; preds = %52
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %64
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @kdc_time, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @krb5_format_time(i32 %77, i64 %81, i8* %82, i32 100, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %85, i32* %86, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %87, i8* %88)
  %90 = load i32, i32* @KRB5KDC_ERR_CLIENT_NOTYET, align 4
  store i32 %90, i32* %8, align 4
  br label %295

91:                                               ; preds = %69, %64
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = icmp ne i64* %94, null
  br i1 %95, label %96, label %118

96:                                               ; preds = %91
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @kdc_time, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %110 = load i32, i32* @TRUE, align 4
  %111 = call i32 @krb5_format_time(i32 %104, i64 %108, i8* %109, i32 100, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %112, i32* %113, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %114, i8* %115)
  %117 = load i32, i32* @KRB5KDC_ERR_NAME_EXP, align 4
  store i32 %117, i32* %8, align 4
  br label %295

118:                                              ; preds = %96, %91
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = icmp ne i64* %121, null
  br i1 %122, label %123, label %155

123:                                              ; preds = %118
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @kdc_time, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %123
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %132 = icmp eq %struct.TYPE_7__* %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %130
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %155, label %140

140:                                              ; preds = %133, %130
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %147 = load i32, i32* @TRUE, align 4
  %148 = call i32 @krb5_format_time(i32 %141, i64 %145, i8* %146, i32 100, i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %149, i32* %150, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %151, i8* %152)
  %154 = load i32, i32* @KRB5KDC_ERR_KEY_EXPIRED, align 4
  store i32 %154, i32* %8, align 4
  br label %295

155:                                              ; preds = %133, %123, %118
  br label %156

156:                                              ; preds = %155, %7
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %158 = icmp ne %struct.TYPE_7__* %157, null
  br i1 %158, label %159, label %294

159:                                              ; preds = %156
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  store %struct.TYPE_8__* %161, %struct.TYPE_8__** %20, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %159
  %168 = load i32, i32* %9, align 4
  %169 = load i32*, i32** %10, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %168, i32* %169, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %170)
  %172 = load i32, i32* @KRB5KDC_ERR_POLICY, align 4
  store i32 %172, i32* %8, align 4
  br label %295

173:                                              ; preds = %159
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load i32, i32* %9, align 4
  %181 = load i32*, i32** %10, align 8
  %182 = load i8*, i8** %14, align 8
  %183 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %180, i32* %181, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %182)
  %184 = load i32, i32* @KRB5KDC_ERR_POLICY, align 4
  store i32 %184, i32* %8, align 4
  br label %295

185:                                              ; preds = %173
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %185
  %192 = load i32, i32* %9, align 4
  %193 = load i32*, i32** %10, align 8
  %194 = load i8*, i8** %14, align 8
  %195 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %192, i32* %193, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %194)
  %196 = load i32, i32* @KRB5KDC_ERR_POLICY, align 4
  store i32 %196, i32* %8, align 4
  br label %295

197:                                              ; preds = %185
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %197
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %200
  %207 = load i32, i32* %9, align 4
  %208 = load i32*, i32** %10, align 8
  %209 = load i8*, i8** %14, align 8
  %210 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %207, i32* %208, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %209)
  %211 = load i32, i32* @KRB5KDC_ERR_POLICY, align 4
  store i32 %211, i32* %8, align 4
  br label %295

212:                                              ; preds = %200, %197
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = icmp ne i64* %215, null
  br i1 %216, label %217, label %239

217:                                              ; preds = %212
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @kdc_time, align 8
  %223 = icmp sgt i64 %221, %222
  br i1 %223, label %224, label %239

224:                                              ; preds = %217
  %225 = load i32, i32* %9, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i64*, i64** %227, align 8
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %231 = load i32, i32* @TRUE, align 4
  %232 = call i32 @krb5_format_time(i32 %225, i64 %229, i8* %230, i32 100, i32 %231)
  %233 = load i32, i32* %9, align 4
  %234 = load i32*, i32** %10, align 8
  %235 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %236 = load i8*, i8** %14, align 8
  %237 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %233, i32* %234, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %235, i8* %236)
  %238 = load i32, i32* @KRB5KDC_ERR_SERVICE_NOTYET, align 4
  store i32 %238, i32* %8, align 4
  br label %295

239:                                              ; preds = %217, %212
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load i64*, i64** %241, align 8
  %243 = icmp ne i64* %242, null
  br i1 %243, label %244, label %266

244:                                              ; preds = %239
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  %247 = load i64*, i64** %246, align 8
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @kdc_time, align 8
  %250 = icmp slt i64 %248, %249
  br i1 %250, label %251, label %266

251:                                              ; preds = %244
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  %255 = load i64*, i64** %254, align 8
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %258 = load i32, i32* @TRUE, align 4
  %259 = call i32 @krb5_format_time(i32 %252, i64 %256, i8* %257, i32 100, i32 %258)
  %260 = load i32, i32* %9, align 4
  %261 = load i32*, i32** %10, align 8
  %262 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %263 = load i8*, i8** %14, align 8
  %264 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %260, i32* %261, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* %262, i8* %263)
  %265 = load i32, i32* @KRB5KDC_ERR_SERVICE_EXP, align 4
  store i32 %265, i32* %8, align 4
  br label %295

266:                                              ; preds = %244, %239
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 2
  %269 = load i64*, i64** %268, align 8
  %270 = icmp ne i64* %269, null
  br i1 %270, label %271, label %293

271:                                              ; preds = %266
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 2
  %274 = load i64*, i64** %273, align 8
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @kdc_time, align 8
  %277 = icmp slt i64 %275, %276
  br i1 %277, label %278, label %293

278:                                              ; preds = %271
  %279 = load i32, i32* %9, align 4
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 2
  %282 = load i64*, i64** %281, align 8
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds [100 x i8], [100 x i8]* %23, i64 0, i64 0
  %285 = load i32, i32* @TRUE, align 4
  %286 = call i32 @krb5_format_time(i32 %279, i64 %283, i8* %284, i32 100, i32 %285)
  %287 = load i32, i32* %9, align 4
  %288 = load i32*, i32** %10, align 8
  %289 = getelementptr inbounds [100 x i8], [100 x i8]* %23, i64 0, i64 0
  %290 = load i8*, i8** %14, align 8
  %291 = call i32 (i32, i32*, i32, i8*, i8*, ...) @kdc_log(i32 %287, i32* %288, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %289, i8* %290)
  %292 = load i32, i32* @KRB5KDC_ERR_KEY_EXPIRED, align 4
  store i32 %292, i32* %8, align 4
  br label %295

293:                                              ; preds = %271, %266
  br label %294

294:                                              ; preds = %293, %156
  store i32 0, i32* %8, align 4
  br label %295

295:                                              ; preds = %294, %278, %251, %224, %206, %191, %179, %167, %140, %103, %76, %58, %46, %34
  %296 = load i32, i32* %8, align 4
  ret i32 %296
}

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @krb5_format_time(i32, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
