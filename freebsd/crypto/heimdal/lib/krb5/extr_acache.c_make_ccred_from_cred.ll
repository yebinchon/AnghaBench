; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acache.c_make_ccred_from_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_acache.c_make_ccred_from_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_37__, %struct.TYPE_35__, %struct.TYPE_33__, %struct.TYPE_32__, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_38__, i32 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__**, i32*, %struct.TYPE_36__, %struct.TYPE_34__, i32, i32, i32, i32, %struct.TYPE_30__, i32, i32 }
%struct.TYPE_28__ = type { i32, i32*, i32 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i64 0, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_27__*, %struct.TYPE_29__*)* @make_ccred_from_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_ccred_from_cred(i32 %0, %struct.TYPE_27__* %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %7, align 8
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %12 = call i32 @memset(%struct.TYPE_29__* %11, i32 0, i32 80)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 11
  %19 = call i64 @krb5_unparse_name(i32 %13, i32 %16, i32* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %395

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 10
  %30 = call i64 @krb5_unparse_name(i32 %24, i32 %27, i32* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %395

34:                                               ; preds = %23
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  %117 = call %struct.TYPE_28__** @calloc(i32 %116, i32 8)
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 1
  store %struct.TYPE_28__** %117, %struct.TYPE_28__*** %119, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %121, align 8
  %123 = icmp eq %struct.TYPE_28__** %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %34
  %125 = load i64, i64* @ENOMEM, align 8
  store i64 %125, i64* %8, align 8
  br label %395

126:                                              ; preds = %34
  store i64 0, i64* %9, align 8
  br label %127

127:                                              ; preds = %202, %126
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = icmp ult i64 %128, %133
  br i1 %134, label %135, label %205

135:                                              ; preds = %127
  %136 = call i8* @malloc(i32 24)
  %137 = bitcast i8* %136 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %137, %struct.TYPE_28__** %10, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %139 = icmp eq %struct.TYPE_28__* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i64, i64* @ENOMEM, align 8
  store i64 %141, i64* %8, align 8
  br label %395

142:                                              ; preds = %135
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %145, align 8
  %147 = load i64, i64* %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @malloc(i32 %166)
  %168 = bitcast i8* %167 to i32*
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 1
  store i32* %168, i32** %170, align 8
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %142
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %177 = call i32 @free(%struct.TYPE_28__* %176)
  %178 = load i64, i64* @ENOMEM, align 8
  store i64 %178, i64* %8, align 8
  br label %395

179:                                              ; preds = %142
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @memcpy(i32* %182, i32 %191, i32 %194)
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %198, align 8
  %200 = load i64, i64* %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %199, i64 %200
  store %struct.TYPE_28__* %196, %struct.TYPE_28__** %201, align 8
  br label %202

202:                                              ; preds = %179
  %203 = load i64, i64* %9, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %9, align 8
  br label %127

205:                                              ; preds = %127
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %207, align 8
  %209 = load i64, i64* %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %208, i64 %209
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %210, align 8
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 0
  store i32 0, i32* %212, align 8
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 13
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %205
  %220 = load i32, i32* @KRB5_CCAPI_TKT_FLG_FORWARDABLE, align 4
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %219, %205
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 12
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load i32, i32* @KRB5_CCAPI_TKT_FLG_FORWARDED, align 4
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %232, %225
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 11
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %238
  %246 = load i32, i32* @KRB5_CCAPI_TKT_FLG_PROXIABLE, align 4
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %245, %238
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 10
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %251
  %259 = load i32, i32* @KRB5_CCAPI_TKT_FLG_PROXY, align 4
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %258, %251
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 9
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %264
  %272 = load i32, i32* @KRB5_CCAPI_TKT_FLG_MAY_POSTDATE, align 4
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %271, %264
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 8
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %277
  %285 = load i32, i32* @KRB5_CCAPI_TKT_FLG_POSTDATED, align 4
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %284, %277
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %293, i32 0, i32 7
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %290
  %298 = load i32, i32* @KRB5_CCAPI_TKT_FLG_INVALID, align 4
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %297, %290
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 6
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %303
  %311 = load i32, i32* @KRB5_CCAPI_TKT_FLG_RENEWABLE, align 4
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %310, %303
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %319, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %316
  %324 = load i32, i32* @KRB5_CCAPI_TKT_FLG_INITIAL, align 4
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = or i32 %327, %324
  store i32 %328, i32* %326, align 8
  br label %329

329:                                              ; preds = %323, %316
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 4
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %329
  %337 = load i32, i32* @KRB5_CCAPI_TKT_FLG_PRE_AUTH, align 4
  %338 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 8
  br label %342

342:                                              ; preds = %336, %329
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i32 0, i32 3
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %342
  %350 = load i32, i32* @KRB5_CCAPI_TKT_FLG_HW_AUTH, align 4
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 8
  br label %355

355:                                              ; preds = %349, %342
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %355
  %363 = load i32, i32* @KRB5_CCAPI_TKT_FLG_TRANSIT_POLICY_CHECKED, align 4
  %364 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 8
  br label %368

368:                                              ; preds = %362, %355
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %368
  %376 = load i32, i32* @KRB5_CCAPI_TKT_FLG_OK_AS_DELEGATE, align 4
  %377 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = or i32 %379, %376
  store i32 %380, i32* %378, align 8
  br label %381

381:                                              ; preds = %375, %368
  %382 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %381
  %389 = load i32, i32* @KRB5_CCAPI_TKT_FLG_ANONYMOUS, align 4
  %390 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = or i32 %392, %389
  store i32 %393, i32* %391, align 8
  br label %394

394:                                              ; preds = %388, %381
  store i64 0, i64* %4, align 8
  br label %401

395:                                              ; preds = %175, %140, %124, %33, %22
  %396 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %397 = call i32 @free_ccred(%struct.TYPE_29__* %396)
  %398 = load i32, i32* %5, align 4
  %399 = call i32 @krb5_clear_error_message(i32 %398)
  %400 = load i64, i64* %8, align 8
  store i64 %400, i64* %4, align 8
  br label %401

401:                                              ; preds = %395, %394
  %402 = load i64, i64* %4, align 8
  ret i64 %402
}

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i32*) #1

declare dso_local %struct.TYPE_28__** @calloc(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_28__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @free_ccred(%struct.TYPE_29__*) #1

declare dso_local i32 @krb5_clear_error_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
