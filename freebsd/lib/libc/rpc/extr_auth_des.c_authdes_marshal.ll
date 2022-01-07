; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_des.c_authdes_marshal.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_des.c_authdes_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.ad_private = type { i32, %struct.authdes_cred, %struct.authdes_verf, i32, i64, %struct.TYPE_18__, %struct.TYPE_11__ }
%struct.authdes_cred = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.authdes_verf = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64 }

@USEC_PER_SEC = common dso_local global i64 0, align 8
@ADN_FULLNAME = common dso_local global i64 0, align 8
@DES_ENCRYPT = common dso_local global i32 0, align 4
@DES_HW = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"authdes_marshal: DES encryption failure\00", align 1
@FALSE = common dso_local global i32 0, align 4
@BYTES_PER_XDR_UNIT = common dso_local global i32 0, align 4
@AUTH_DES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @authdes_marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authdes_marshal(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ad_private*, align 8
  %7 = alloca %struct.authdes_cred*, align 8
  %8 = alloca %struct.authdes_verf*, align 8
  %9 = alloca [2 x %struct.TYPE_16__], align 16
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = call %struct.ad_private* @AUTH_PRIVATE(%struct.TYPE_17__* %14)
  store %struct.ad_private* %15, %struct.ad_private** %6, align 8
  %16 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %17 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %16, i32 0, i32 1
  store %struct.authdes_cred* %17, %struct.authdes_cred** %7, align 8
  %18 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %19 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %18, i32 0, i32 2
  store %struct.authdes_verf* %19, %struct.authdes_verf** %8, align 8
  %20 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %21 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %20, i32 0, i32 5
  %22 = call i32 @gettimeofday(%struct.TYPE_18__* %21, i32* null)
  %23 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %24 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %28 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, %26
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %33 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %37 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %35
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %48, %2
  %42 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %43 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USEC_PER_SEC, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load i64, i64* @USEC_PER_SEC, align 8
  %50 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %51 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, %49
  store i64 %54, i64* %52, align 8
  %55 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %56 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %41

60:                                               ; preds = %41
  %61 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 0
  %62 = bitcast %struct.TYPE_16__* %61 to i32*
  store i32* %62, i32** %13, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %65 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @IXDR_PUT_INT32(i32* %63, i32 %67)
  %69 = load i32*, i32** %13, align 8
  %70 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %71 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @IXDR_PUT_INT32(i32* %69, i32 %74)
  %76 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %77 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ADN_FULLNAME, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %60
  %83 = load i32*, i32** %13, align 8
  %84 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %85 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @IXDR_PUT_U_INT32(i32* %83, i64 %86)
  %88 = load i32*, i32** %13, align 8
  %89 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %90 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 1
  %93 = call i32 @IXDR_PUT_U_INT32(i32* %88, i64 %92)
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = bitcast i32* %99 to i8*
  %101 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 0
  %102 = bitcast %struct.TYPE_16__* %101 to i8*
  %103 = load i32, i32* @DES_ENCRYPT, align 4
  %104 = load i32, i32* @DES_HW, align 4
  %105 = or i32 %103, %104
  %106 = bitcast %struct.TYPE_16__* %10 to i8*
  %107 = call i32 @cbc_crypt(i8* %100, i8* %102, i32 32, i32 %105, i8* %106)
  store i32 %107, i32* %11, align 4
  br label %118

108:                                              ; preds = %60
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = bitcast i32* %110 to i8*
  %112 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 0
  %113 = bitcast %struct.TYPE_16__* %112 to i8*
  %114 = load i32, i32* @DES_ENCRYPT, align 4
  %115 = load i32, i32* @DES_HW, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @ecb_crypt(i8* %111, i8* %113, i32 16, i32 %116)
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %108, %82
  %119 = load i32, i32* %11, align 4
  %120 = call i64 @DES_FAILED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @LOG_ERR, align 4
  %124 = call i32 @syslog(i32 %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %3, align 4
  br label %240

126:                                              ; preds = %118
  %127 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %128 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %128, i32 0, i32 1
  %130 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 0
  %131 = bitcast %struct.TYPE_16__* %129 to i8*
  %132 = bitcast %struct.TYPE_16__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 16 %132, i64 16, i1 false)
  %133 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %134 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ADN_FULLNAME, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %126
  %140 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 1
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %145 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store i64 %143, i64* %147, align 8
  %148 = getelementptr inbounds [2 x %struct.TYPE_16__], [2 x %struct.TYPE_16__]* %9, i64 0, i64 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 16
  %152 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %153 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %153, i32 0, i32 0
  store i64 %151, i64* %154, align 8
  br label %165

155:                                              ; preds = %126
  %156 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %157 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %160 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 8
  %162 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %163 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.authdes_verf, %struct.authdes_verf* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %155, %139
  %166 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %167 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.authdes_cred, %struct.authdes_cred* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @ADN_FULLNAME, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %174 = mul nsw i32 5, %173
  %175 = load %struct.ad_private*, %struct.ad_private** %6, align 8
  %176 = getelementptr inbounds %struct.ad_private, %struct.ad_private* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %174, %177
  store i32 %178, i32* %12, align 4
  br label %182

179:                                              ; preds = %165
  %180 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %181 = mul nsw i32 2, %180
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %179, %172
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %185 = mul nsw i32 2, %184
  %186 = call i32* @xdr_inline(i32* %183, i32 %185)
  store i32* %186, i32** %13, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %182
  %189 = load i32*, i32** %13, align 8
  %190 = load i32, i32* @AUTH_DES, align 4
  %191 = call i32 @IXDR_PUT_INT32(i32* %189, i32 %190)
  %192 = load i32*, i32** %13, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @IXDR_PUT_INT32(i32* %192, i32 %193)
  br label %205

195:                                              ; preds = %182
  %196 = load i32*, i32** %5, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = call i32 @xdr_putint32(i32* %196, i32* %199)
  %201 = call i32 @ATTEMPT(i32 %200)
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @xdr_putint32(i32* %202, i32* %12)
  %204 = call i32 @ATTEMPT(i32 %203)
  br label %205

205:                                              ; preds = %195, %188
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.authdes_cred*, %struct.authdes_cred** %7, align 8
  %208 = call i32 @xdr_authdes_cred(i32* %206, %struct.authdes_cred* %207)
  %209 = call i32 @ATTEMPT(i32 %208)
  %210 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %211 = mul nsw i32 3, %210
  store i32 %211, i32* %12, align 4
  %212 = load i32*, i32** %5, align 8
  %213 = load i32, i32* @BYTES_PER_XDR_UNIT, align 4
  %214 = mul nsw i32 2, %213
  %215 = call i32* @xdr_inline(i32* %212, i32 %214)
  store i32* %215, i32** %13, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %205
  %218 = load i32*, i32** %13, align 8
  %219 = load i32, i32* @AUTH_DES, align 4
  %220 = call i32 @IXDR_PUT_INT32(i32* %218, i32 %219)
  %221 = load i32*, i32** %13, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @IXDR_PUT_INT32(i32* %221, i32 %222)
  br label %234

224:                                              ; preds = %205
  %225 = load i32*, i32** %5, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = call i32 @xdr_putint32(i32* %225, i32* %228)
  %230 = call i32 @ATTEMPT(i32 %229)
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 @xdr_putint32(i32* %231, i32* %12)
  %233 = call i32 @ATTEMPT(i32 %232)
  br label %234

234:                                              ; preds = %224, %217
  %235 = load i32*, i32** %5, align 8
  %236 = load %struct.authdes_verf*, %struct.authdes_verf** %8, align 8
  %237 = call i32 @xdr_authdes_verf(i32* %235, %struct.authdes_verf* %236)
  %238 = call i32 @ATTEMPT(i32 %237)
  %239 = load i32, i32* @TRUE, align 4
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %234, %122
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local %struct.ad_private* @AUTH_PRIVATE(%struct.TYPE_17__*) #1

declare dso_local i32 @gettimeofday(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @IXDR_PUT_INT32(i32*, i32) #1

declare dso_local i32 @IXDR_PUT_U_INT32(i32*, i64) #1

declare dso_local i32 @cbc_crypt(i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @ecb_crypt(i8*, i8*, i32, i32) #1

declare dso_local i64 @DES_FAILED(i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @xdr_inline(i32*, i32) #1

declare dso_local i32 @ATTEMPT(i32) #1

declare dso_local i32 @xdr_putint32(i32*, i32*) #1

declare dso_local i32 @xdr_authdes_cred(i32*, %struct.authdes_cred*) #1

declare dso_local i32 @xdr_authdes_verf(i32*, %struct.authdes_verf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
