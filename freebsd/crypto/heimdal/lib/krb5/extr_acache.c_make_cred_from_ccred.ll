; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acache.c_make_cred_from_ccred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acache.c_make_cred_from_ccred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_28__**, %struct.TYPE_23__**, %struct.TYPE_36__, %struct.TYPE_35__, i32, i32, i32, i32, %struct.TYPE_33__, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_30__, %struct.TYPE_22__, %struct.TYPE_24__, i32, i32, %struct.TYPE_34__, %struct.TYPE_32__, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__, i32 }
%struct.TYPE_31__ = type { i32*, i32 }

@KRB5_CCAPI_TKT_FLG_FORWARDABLE = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_FORWARDED = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_PROXIABLE = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_PROXY = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_MAY_POSTDATE = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_POSTDATED = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_INVALID = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_RENEWABLE = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_INITIAL = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_PRE_AUTH = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_HW_AUTH = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_TRANSIT_POLICY_CHECKED = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_OK_AS_DELEGATE = common dso_local global i32 0, align 4
@KRB5_CCAPI_TKT_FLG_ANONYMOUS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_27__*, %struct.TYPE_26__*)* @make_cred_from_ccred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_cred_from_ccred(i32 %0, %struct.TYPE_27__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %11 = call i32 @memset(%struct.TYPE_26__* %10, i32 0, i32 152)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 8
  %18 = call i64 @krb5_parse_name(i32 %12, i32 %15, i32* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %527

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 7
  %29 = call i64 @krb5_parse_name(i32 %23, i32 %26, i32* %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %527

33:                                               ; preds = %22
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 8
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @malloc(i32 %52)
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 0
  store i32* %53, i32** %57, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %33
  br label %521

65:                                               ; preds = %33
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i32* %70, i32 %74, i32 %78)
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @krb5_data_copy(i32* %105, i32 %109, i32 %113)
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %65
  br label %521

118:                                              ; preds = %65
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @krb5_data_copy(i32* %120, i32 %124, i32 %128)
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* %8, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %118
  br label %521

133:                                              ; preds = %118
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %136, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %142, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %163, %133
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %148, align 8
  %150 = icmp ne %struct.TYPE_23__** %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %154, i64 %156
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %157, align 8
  %159 = icmp ne %struct.TYPE_23__* %158, null
  br label %160

160:                                              ; preds = %151, %146
  %161 = phi i1 [ false, %146 ], [ %159, %151 ]
  br i1 %161, label %162, label %166

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %146

166:                                              ; preds = %160
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %247

169:                                              ; preds = %166
  %170 = load i32, i32* %9, align 4
  %171 = call i8* @calloc(i32 %170, i32 8)
  %172 = bitcast i8* %171 to %struct.TYPE_25__*
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 1
  store %struct.TYPE_25__* %172, %struct.TYPE_25__** %175, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %178, align 8
  %180 = icmp eq %struct.TYPE_25__* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %169
  br label %521

182:                                              ; preds = %169
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %243, %182
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ult i32 %188, %192
  br i1 %193, label %194, label %246

194:                                              ; preds = %187
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %197, i64 %199
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 1
  store i32 %203, i32* %211, align 4
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %222, i64 %224
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %231, i64 %233
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i64 @krb5_data_copy(i32* %219, i32 %228, i32 %237)
  store i64 %238, i64* %8, align 8
  %239 = load i64, i64* %8, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %194
  br label %521

242:                                              ; preds = %194
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %9, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %9, align 4
  br label %187

246:                                              ; preds = %187
  br label %247

247:                                              ; preds = %246, %166
  store i32 0, i32* %9, align 4
  br label %248

248:                                              ; preds = %265, %247
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %250, align 8
  %252 = icmp ne %struct.TYPE_28__** %251, null
  br i1 %252, label %253, label %262

253:                                              ; preds = %248
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %255, align 8
  %257 = load i32, i32* %9, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %256, i64 %258
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %259, align 8
  %261 = icmp ne %struct.TYPE_28__* %260, null
  br label %262

262:                                              ; preds = %253, %248
  %263 = phi i1 [ false, %248 ], [ %261, %253 ]
  br i1 %263, label %264, label %268

264:                                              ; preds = %262
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %9, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %9, align 4
  br label %248

268:                                              ; preds = %262
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %349

271:                                              ; preds = %268
  %272 = load i32, i32* %9, align 4
  %273 = call i8* @calloc(i32 %272, i32 8)
  %274 = bitcast i8* %273 to %struct.TYPE_21__*
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 1
  store %struct.TYPE_21__* %274, %struct.TYPE_21__** %277, align 8
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %280, align 8
  %282 = icmp eq %struct.TYPE_21__* %281, null
  br i1 %282, label %283, label %284

283:                                              ; preds = %271
  br label %521

284:                                              ; preds = %271
  %285 = load i32, i32* %9, align 4
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 0
  store i32 %285, i32* %288, align 8
  store i32 0, i32* %9, align 4
  br label %289

289:                                              ; preds = %345, %284
  %290 = load i32, i32* %9, align 4
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp ult i32 %290, %294
  br i1 %295, label %296, label %348

296:                                              ; preds = %289
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %299, i64 %301
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %308, align 8
  %310 = load i32, i32* %9, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 1
  store i32 %305, i32* %313, align 4
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %316, align 8
  %318 = load i32, i32* %9, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %323, align 8
  %325 = load i32, i32* %9, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %324, i64 %326
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %332, align 8
  %334 = load i32, i32* %9, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %333, i64 %335
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i64 @krb5_data_copy(i32* %321, i32 %330, i32 %339)
  store i64 %340, i64* %8, align 8
  %341 = load i64, i64* %8, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %296
  br label %521

344:                                              ; preds = %296
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %9, align 4
  %347 = add i32 %346, 1
  store i32 %347, i32* %9, align 4
  br label %289

348:                                              ; preds = %289
  br label %349

349:                                              ; preds = %348, %268
  %350 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %351, i32 0, i32 1
  store i32 0, i32* %352, align 8
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @KRB5_CCAPI_TKT_FLG_FORWARDABLE, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %349
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %362, i32 0, i32 0
  store i32 1, i32* %363, align 8
  br label %364

364:                                              ; preds = %359, %349
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @KRB5_CCAPI_TKT_FLG_FORWARDED, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %364
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %374, i32 0, i32 1
  store i32 1, i32* %375, align 4
  br label %376

376:                                              ; preds = %371, %364
  %377 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @KRB5_CCAPI_TKT_FLG_PROXIABLE, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %376
  %384 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %386, i32 0, i32 2
  store i32 1, i32* %387, align 8
  br label %388

388:                                              ; preds = %383, %376
  %389 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @KRB5_CCAPI_TKT_FLG_PROXY, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %388
  %396 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %398, i32 0, i32 3
  store i32 1, i32* %399, align 4
  br label %400

400:                                              ; preds = %395, %388
  %401 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @KRB5_CCAPI_TKT_FLG_MAY_POSTDATE, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %412

407:                                              ; preds = %400
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %410, i32 0, i32 4
  store i32 1, i32* %411, align 8
  br label %412

412:                                              ; preds = %407, %400
  %413 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @KRB5_CCAPI_TKT_FLG_POSTDATED, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %412
  %420 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %421 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %422, i32 0, i32 5
  store i32 1, i32* %423, align 4
  br label %424

424:                                              ; preds = %419, %412
  %425 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* @KRB5_CCAPI_TKT_FLG_INVALID, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %424
  %432 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %433 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %434, i32 0, i32 6
  store i32 1, i32* %435, align 8
  br label %436

436:                                              ; preds = %431, %424
  %437 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %438 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @KRB5_CCAPI_TKT_FLG_RENEWABLE, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %448

443:                                              ; preds = %436
  %444 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %445 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %446, i32 0, i32 7
  store i32 1, i32* %447, align 4
  br label %448

448:                                              ; preds = %443, %436
  %449 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %450 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @KRB5_CCAPI_TKT_FLG_INITIAL, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %460

455:                                              ; preds = %448
  %456 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %458, i32 0, i32 8
  store i32 1, i32* %459, align 8
  br label %460

460:                                              ; preds = %455, %448
  %461 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @KRB5_CCAPI_TKT_FLG_PRE_AUTH, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %460
  %468 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %470, i32 0, i32 9
  store i32 1, i32* %471, align 4
  br label %472

472:                                              ; preds = %467, %460
  %473 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @KRB5_CCAPI_TKT_FLG_HW_AUTH, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %484

479:                                              ; preds = %472
  %480 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %482, i32 0, i32 10
  store i32 1, i32* %483, align 8
  br label %484

484:                                              ; preds = %479, %472
  %485 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @KRB5_CCAPI_TKT_FLG_TRANSIT_POLICY_CHECKED, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %496

491:                                              ; preds = %484
  %492 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %493 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %494, i32 0, i32 11
  store i32 1, i32* %495, align 4
  br label %496

496:                                              ; preds = %491, %484
  %497 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* @KRB5_CCAPI_TKT_FLG_OK_AS_DELEGATE, align 4
  %501 = and i32 %499, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %508

503:                                              ; preds = %496
  %504 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %505 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %506, i32 0, i32 12
  store i32 1, i32* %507, align 8
  br label %508

508:                                              ; preds = %503, %496
  %509 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %510 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @KRB5_CCAPI_TKT_FLG_ANONYMOUS, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %508
  %516 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %517 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %518, i32 0, i32 13
  store i32 1, i32* %519, align 4
  br label %520

520:                                              ; preds = %515, %508
  store i64 0, i64* %4, align 8
  br label %532

521:                                              ; preds = %343, %283, %241, %181, %132, %117, %64
  %522 = load i64, i64* @ENOMEM, align 8
  store i64 %522, i64* %8, align 8
  %523 = load i32, i32* %5, align 4
  %524 = load i64, i64* %8, align 8
  %525 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %526 = call i32 @krb5_set_error_message(i32 %523, i64 %524, i32 %525)
  br label %527

527:                                              ; preds = %521, %32, %21
  %528 = load i32, i32* %5, align 4
  %529 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %530 = call i32 @krb5_free_cred_contents(i32 %528, %struct.TYPE_26__* %529)
  %531 = load i64, i64* %8, align 8
  store i64 %531, i64* %4, align 8
  br label %532

532:                                              ; preds = %527, %520
  %533 = load i64, i64* %4, align 8
  ret i64 %533
}

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @krb5_parse_name(i32, i32, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @krb5_data_copy(i32*, i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
