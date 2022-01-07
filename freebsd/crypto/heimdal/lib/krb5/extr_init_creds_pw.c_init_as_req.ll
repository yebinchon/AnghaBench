; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_init_as_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_init_creds_pw.c_init_as_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32*, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32*, i32*, %struct.TYPE_24__*, %struct.TYPE_19__, i64, i64*, i64*, i64*, i32*, i32, i32*, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }

@krb_as_req = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KRB5_PDU_AS_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.TYPE_21__*, %struct.TYPE_22__*, i32*, %struct.TYPE_23__*)* @init_as_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_as_req(i32 %0, i32 %1, %struct.TYPE_21__* %2, %struct.TYPE_22__* %3, i32* %4, %struct.TYPE_23__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %13, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %16 = call i32 @memset(%struct.TYPE_23__* %15, i32 0, i32 120)
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  store i32 5, i32* %18, align 8
  %19 = load i32, i32* @krb_as_req, align 4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 11
  store i32 %22, i32* %25, align 8
  %26 = call i8* @malloc(i32 4)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 10
  store i32* %27, i32** %30, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 10
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %6
  %37 = load i64, i64* @ENOMEM, align 8
  store i64 %37, i64* %14, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @krb5_set_error_message(i32 %38, i64 %39, i32 %40)
  br label %279

42:                                               ; preds = %6
  %43 = call i8* @malloc(i32 4)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 8
  store i32* %44, i32** %47, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load i64, i64* @ENOMEM, align 8
  store i64 %54, i64* %14, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @krb5_set_error_message(i32 %55, i64 %56, i32 %57)
  br label %279

59:                                               ; preds = %42
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 10
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = call i64 @_krb5_principal2principalname(i32* %63, %struct.TYPE_17__* %66)
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %14, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %279

71:                                               ; preds = %59
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 9
  %79 = call i64 @copy_Realm(i32* %75, i32* %78)
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %279

83:                                               ; preds = %71
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 8
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = call i64 @_krb5_principal2principalname(i32* %87, %struct.TYPE_17__* %90)
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %279

95:                                               ; preds = %83
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = call i8* @malloc(i32 8)
  %103 = bitcast i8* %102 to i64*
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 7
  store i64* %103, i64** %106, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 7
  %110 = load i64*, i64** %109, align 8
  %111 = icmp eq i64* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %101
  %113 = load i64, i64* @ENOMEM, align 8
  store i64 %113, i64* %14, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %117 = call i32 @krb5_set_error_message(i32 %114, i64 %115, i32 %116)
  br label %279

118:                                              ; preds = %101
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 7
  %126 = load i64*, i64** %125, align 8
  store i64 %122, i64* %126, align 8
  br label %127

127:                                              ; preds = %118, %95
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 6
  %137 = load i64*, i64** %136, align 8
  %138 = call i32 @ALLOC(i64* %137, i32 1)
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 6
  %146 = load i64*, i64** %145, align 8
  store i64 %142, i64* %146, align 8
  br label %147

147:                                              ; preds = %133, %127
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %179

153:                                              ; preds = %147
  %154 = call i8* @malloc(i32 8)
  %155 = bitcast i8* %154 to i64*
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 5
  store i64* %155, i64** %158, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 5
  %162 = load i64*, i64** %161, align 8
  %163 = icmp eq i64* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %153
  %165 = load i64, i64* @ENOMEM, align 8
  store i64 %165, i64* %14, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i64, i64* %14, align 8
  %168 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %169 = call i32 @krb5_set_error_message(i32 %166, i64 %167, i32 %168)
  br label %279

170:                                              ; preds = %153
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 5
  %178 = load i64*, i64** %177, align 8
  store i64 %174, i64* %178, align 8
  br label %179

179:                                              ; preds = %170, %147
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 4
  store i64 0, i64* %182, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @KRB5_PDU_AS_REQUEST, align 4
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = load i32*, i32** %12, align 8
  %194 = call i64 @_krb5_init_etype(i32 %183, i32 %184, i32* %188, i32* %192, i32* %193)
  store i64 %194, i64* %14, align 8
  %195 = load i64, i64* %14, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %179
  br label %279

198:                                              ; preds = %179
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %200 = icmp ne %struct.TYPE_22__* %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %209, align 8
  br label %270

210:                                              ; preds = %201, %198
  %211 = call i8* @malloc(i32 8)
  %212 = bitcast i8* %211 to %struct.TYPE_24__*
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 2
  store %struct.TYPE_24__* %212, %struct.TYPE_24__** %215, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %218, align 8
  %220 = icmp eq %struct.TYPE_24__* %219, null
  br i1 %220, label %221, label %227

221:                                              ; preds = %210
  %222 = load i64, i64* @ENOMEM, align 8
  store i64 %222, i64* %14, align 8
  %223 = load i32, i32* %8, align 4
  %224 = load i64, i64* %14, align 8
  %225 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %226 = call i32 @krb5_set_error_message(i32 %223, i64 %224, i32 %225)
  br label %279

227:                                              ; preds = %210
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %229 = icmp ne %struct.TYPE_22__* %228, null
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %235, align 8
  %237 = call i64 @krb5_copy_addresses(i32 %231, %struct.TYPE_22__* %232, %struct.TYPE_24__* %236)
  store i64 %237, i64* %14, align 8
  br label %265

238:                                              ; preds = %227
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %242, align 8
  %244 = call i64 @krb5_get_all_client_addrs(i32 %239, %struct.TYPE_24__* %243)
  store i64 %244, i64* %14, align 8
  %245 = load i64, i64* %14, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %264

247:                                              ; preds = %238
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %247
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %258, align 8
  %260 = call i32 @free(%struct.TYPE_24__* %259)
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %263, align 8
  br label %264

264:                                              ; preds = %255, %247, %238
  br label %265

265:                                              ; preds = %264, %230
  %266 = load i64, i64* %14, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  br label %279

269:                                              ; preds = %265
  br label %270

270:                                              ; preds = %269, %206
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 1
  store i32* null, i32** %273, align 8
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  store i32* null, i32** %276, align 8
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 1
  store i32* null, i32** %278, align 8
  store i64 0, i64* %7, align 8
  br label %285

279:                                              ; preds = %268, %221, %197, %164, %112, %94, %82, %70, %53, %36
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %281 = call i32 @free_AS_REQ(%struct.TYPE_23__* %280)
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %283 = call i32 @memset(%struct.TYPE_23__* %282, i32 0, i32 120)
  %284 = load i64, i64* %14, align 8
  store i64 %284, i64* %7, align 8
  br label %285

285:                                              ; preds = %279, %270
  %286 = load i64, i64* %7, align 8
  ret i64 %286
}

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @_krb5_principal2principalname(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @copy_Realm(i32*, i32*) #1

declare dso_local i32 @ALLOC(i64*, i32) #1

declare dso_local i64 @_krb5_init_etype(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @krb5_copy_addresses(i32, %struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i64 @krb5_get_all_client_addrs(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @free(%struct.TYPE_24__*) #1

declare dso_local i32 @free_AS_REQ(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
