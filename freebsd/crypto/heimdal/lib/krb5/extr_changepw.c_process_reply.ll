; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_changepw.c_process_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_changepw.c_process_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32* }

@rk_SOCK_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"recvfrom %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"recvfrom timeout %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Message too large from %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"server %s sent to too short message (%zu bytes)\00", align 1
@KRB5_KPASSWD_MALFORMED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"server %s sent too short e_data to print anything usable\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"server only sent error code\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"client: wrong len in reply\00", align 1
@KRB5_KPASSWD_VERS_CHANGEPW = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"client: wrong version number (%d)\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"client: wrong AP len in reply\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"client: bad length in result\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"too short e_data to print anything usable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i8*)* @process_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_reply(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.TYPE_16__* %5, %struct.TYPE_16__* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [3072 x i32], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_16__, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_17__, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_16__, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_17__, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %16, align 8
  store i8* %7, i8** %17, align 8
  store i64 0, i64* %20, align 8
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %106

37:                                               ; preds = %8
  br label %38

38:                                               ; preds = %85, %77, %37
  %39 = load i64, i64* %20, align 8
  %40 = icmp ult i64 %39, 12288
  br i1 %40, label %41, label %93

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  %43 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 0
  %44 = load i64, i64* %20, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i64, i64* %20, align 8
  %47 = sub i64 12288, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @recvfrom(i32 %42, i32* %45, i32 %48, i32 0, i32* null, i32* null)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i64 @rk_IS_SOCKET_ERROR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %41
  %54 = load i32, i32* @rk_SOCK_ERRNO, align 4
  store i32 %54, i32* %24, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %24, align 4
  %57 = load i8*, i8** %17, align 8
  %58 = load i32, i32* %24, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 (i32, i32, i8*, i8*, ...) @krb5_set_error_message(i32 %55, i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %59)
  %61 = load i32, i32* %24, align 4
  store i32 %61, i32* %9, align 4
  br label %379

62:                                               ; preds = %41
  %63 = load i32, i32* %18, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %17, align 8
  %68 = call i32 (i32, i32, i8*, i8*, ...) @krb5_set_error_message(i32 %66, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  store i32 1, i32* %9, align 4
  br label %379

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %20, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %20, align 8
  %75 = load i64, i64* %20, align 8
  %76 = icmp ult i64 %75, 4
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %38

78:                                               ; preds = %70
  %79 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 0
  %80 = call i32 @_krb5_get_int(i32* %79, i64* %25, i32 4)
  %81 = load i64, i64* %25, align 8
  %82 = add i64 %81, 4
  %83 = load i64, i64* %20, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %38

86:                                               ; preds = %78
  %87 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 0
  %88 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 0
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i64, i64* %25, align 8
  %91 = call i32 @memmove(i32* %87, i32* %89, i64 %90)
  %92 = load i64, i64* %25, align 8
  store i64 %92, i64* %20, align 8
  br label %93

93:                                               ; preds = %86, %38
  %94 = load i64, i64* %20, align 8
  %95 = icmp eq i64 %94, 12288
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = load i8*, i8** %17, align 8
  %103 = call i32 (i32, i32, i8*, i8*, ...) @krb5_set_error_message(i32 %97, i32 %98, i8* %101, i8* %102)
  %104 = load i32, i32* @ENOMEM, align 4
  store i32 %104, i32* %9, align 4
  br label %379

105:                                              ; preds = %93
  br label %125

106:                                              ; preds = %8
  %107 = load i32, i32* %13, align 4
  %108 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 0
  %109 = call i32 @recvfrom(i32 %107, i32* %108, i32 12288, i32 0, i32* null, i32* null)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = call i64 @rk_IS_SOCKET_ERROR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load i32, i32* @rk_SOCK_ERRNO, align 4
  store i32 %114, i32* %24, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i8*, i8** %17, align 8
  %118 = load i32, i32* %24, align 4
  %119 = call i32 @strerror(i32 %118)
  %120 = call i32 (i32, i32, i8*, i8*, ...) @krb5_set_error_message(i32 %115, i32 %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %117, i32 %119)
  %121 = load i32, i32* %24, align 4
  store i32 %121, i32* %9, align 4
  br label %379

122:                                              ; preds = %106
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %20, align 8
  br label %125

125:                                              ; preds = %122, %105
  %126 = load i64, i64* %20, align 8
  %127 = icmp ult i64 %126, 6
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %130 = load i8*, i8** %17, align 8
  %131 = load i64, i64* %20, align 8
  %132 = call i32 (%struct.TYPE_16__*, i8*, ...) @str2data(%struct.TYPE_16__* %129, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %130, i64 %131)
  %133 = load i32, i32* @KRB5_KPASSWD_MALFORMED, align 4
  %134 = load i32*, i32** %14, align 8
  store i32 %133, i32* %134, align 4
  store i32 0, i32* %9, align 4
  br label %379

135:                                              ; preds = %125
  %136 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 0
  %137 = load i32, i32* %136, align 16
  %138 = shl i32 %137, 8
  %139 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %138, %140
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %21, align 8
  %143 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 2
  %144 = load i32, i32* %143, align 8
  %145 = shl i32 %144, 8
  %146 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 3
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %145, %147
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %22, align 8
  %150 = load i64, i64* %21, align 8
  %151 = load i64, i64* %20, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %161, label %153

153:                                              ; preds = %135
  %154 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 126
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 94
  br i1 %160, label %161, label %217

161:                                              ; preds = %157, %153, %135
  %162 = call i32 @memset(%struct.TYPE_17__* %26, i32 0, i32 8)
  %163 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 0
  %164 = load i64, i64* %20, align 8
  %165 = call i32 @decode_KRB_ERROR(i32* %163, i64 %164, %struct.TYPE_17__* %26, i64* %27)
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* %18, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i32, i32* %18, align 4
  store i32 %169, i32* %9, align 4
  br label %379

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %174, 2
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %178 = load i8*, i8** %17, align 8
  %179 = call i32 (%struct.TYPE_16__*, i8*, ...) @str2data(%struct.TYPE_16__* %177, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %178)
  %180 = call i32 @free_KRB_ERROR(%struct.TYPE_17__* %26)
  %181 = load i32, i32* @KRB5_KPASSWD_MALFORMED, align 4
  %182 = load i32*, i32** %14, align 8
  store i32 %181, i32* %182, align 4
  store i32 0, i32* %9, align 4
  br label %379

183:                                              ; preds = %170
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  store i32* %187, i32** %28, align 8
  %188 = load i32*, i32** %28, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %190, 8
  %192 = load i32*, i32** %28, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %191, %194
  %196 = load i32*, i32** %14, align 8
  store i32 %195, i32* %196, align 4
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %205

202:                                              ; preds = %183
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %204 = call i32 (%struct.TYPE_16__*, i8*, ...) @str2data(%struct.TYPE_16__* %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %215

205:                                              ; preds = %183
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %207 = load i32*, i32** %28, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sub nsw i32 %212, 2
  %214 = call i32 (%struct.TYPE_16__*, ...) @krb5_data_copy(%struct.TYPE_16__* %206, i32* %208, i32 %213)
  br label %215

215:                                              ; preds = %205, %202
  %216 = call i32 @free_KRB_ERROR(%struct.TYPE_17__* %26)
  store i32 0, i32* %9, align 4
  br label %379

217:                                              ; preds = %157
  %218 = load i64, i64* %21, align 8
  %219 = load i64, i64* %20, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %223 = call i32 (%struct.TYPE_16__*, i8*, ...) @str2data(%struct.TYPE_16__* %222, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %224 = load i32, i32* @KRB5_KPASSWD_MALFORMED, align 4
  %225 = load i32*, i32** %14, align 8
  store i32 %224, i32* %225, align 4
  store i32 0, i32* %9, align 4
  br label %379

226:                                              ; preds = %217
  %227 = load i64, i64* %22, align 8
  %228 = load i64, i64* @KRB5_KPASSWD_VERS_CHANGEPW, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %232 = load i64, i64* %22, align 8
  %233 = call i32 (%struct.TYPE_16__*, i8*, ...) @str2data(%struct.TYPE_16__* %231, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %232)
  %234 = load i32, i32* @KRB5_KPASSWD_MALFORMED, align 4
  %235 = load i32*, i32** %14, align 8
  store i32 %234, i32* %235, align 4
  store i32 0, i32* %9, align 4
  br label %379

236:                                              ; preds = %226
  %237 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 0
  %238 = getelementptr inbounds i32, i32* %237, i64 6
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i32* %238, i32** %239, align 8
  %240 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 4
  %241 = load i32, i32* %240, align 16
  %242 = shl i32 %241, 8
  %243 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 5
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %242, %244
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  store i32 %245, i32* %246, align 8
  %247 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 0
  %248 = load i64, i64* %20, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  %256 = icmp ult i32* %249, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %236
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %259 = call i32 (%struct.TYPE_16__*, i8*, ...) @str2data(%struct.TYPE_16__* %258, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %260 = load i32, i32* @KRB5_KPASSWD_MALFORMED, align 4
  %261 = load i32*, i32** %14, align 8
  store i32 %260, i32* %261, align 4
  store i32 0, i32* %9, align 4
  br label %379

262:                                              ; preds = %236
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %337

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store i32* %272, i32** %273, align 8
  %274 = load i64, i64* %20, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = sub i64 %274, %277
  %279 = sub i64 %278, 6
  %280 = trunc i64 %279 to i32
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i32 %280, i32* %281, align 8
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %11, align 4
  %284 = call i32 @krb5_rd_rep(i32 %282, i32 %283, %struct.TYPE_16__* %23, i32** %29)
  store i32 %284, i32* %18, align 4
  %285 = load i32, i32* %18, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %266
  %288 = load i32, i32* %18, align 4
  store i32 %288, i32* %9, align 4
  br label %379

289:                                              ; preds = %266
  %290 = load i32, i32* %10, align 4
  %291 = load i32*, i32** %29, align 8
  %292 = call i32 @krb5_free_ap_rep_enc_part(i32 %290, i32* %291)
  %293 = load i32, i32* %10, align 4
  %294 = load i32, i32* %11, align 4
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %296 = call i32 @krb5_rd_priv(i32 %293, i32 %294, %struct.TYPE_16__* %30, %struct.TYPE_16__* %295, i32* null)
  store i32 %296, i32* %18, align 4
  %297 = load i32, i32* %18, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %289
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %301 = call i32 @krb5_data_free(%struct.TYPE_16__* %300)
  %302 = load i32, i32* %18, align 4
  store i32 %302, i32* %9, align 4
  br label %379

303:                                              ; preds = %289
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = icmp slt i32 %306, 2
  br i1 %307, label %308, label %313

308:                                              ; preds = %303
  %309 = load i32, i32* @KRB5_KPASSWD_MALFORMED, align 4
  %310 = load i32*, i32** %14, align 8
  store i32 %309, i32* %310, align 4
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %312 = call i32 (%struct.TYPE_16__*, i8*, ...) @str2data(%struct.TYPE_16__* %311, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %379

313:                                              ; preds = %303
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  store i32* %316, i32** %31, align 8
  %317 = load i32*, i32** %31, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  %319 = load i32, i32* %318, align 4
  %320 = shl i32 %319, 8
  %321 = load i32*, i32** %31, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %320, %323
  %325 = load i32*, i32** %14, align 8
  store i32 %324, i32* %325, align 4
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = bitcast i32* %329 to i8*
  %331 = getelementptr inbounds i8, i8* %330, i64 2
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = sub nsw i32 %334, 2
  %336 = call i32 (%struct.TYPE_16__*, ...) @krb5_data_copy(%struct.TYPE_16__* %326, i8* %331, i32 %335)
  store i32 0, i32* %9, align 4
  br label %379

337:                                              ; preds = %262
  %338 = getelementptr inbounds [3072 x i32], [3072 x i32]* %19, i64 0, i64 0
  %339 = getelementptr inbounds i32, i32* %338, i64 6
  %340 = load i64, i64* %20, align 8
  %341 = sub i64 %340, 6
  %342 = call i32 @decode_KRB_ERROR(i32* %339, i64 %341, %struct.TYPE_17__* %32, i64* %33)
  store i32 %342, i32* %18, align 4
  %343 = load i32, i32* %18, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %337
  %346 = load i32, i32* %18, align 4
  store i32 %346, i32* %9, align 4
  br label %379

347:                                              ; preds = %337
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp slt i32 %351, 2
  br i1 %352, label %353, label %356

353:                                              ; preds = %347
  %354 = load i32, i32* %10, align 4
  %355 = call i32 @krb5_warnx(i32 %354, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %379

356:                                              ; preds = %347
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 1
  %360 = load i32*, i32** %359, align 8
  store i32* %360, i32** %34, align 8
  %361 = load i32*, i32** %34, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 0
  %363 = load i32, i32* %362, align 4
  %364 = shl i32 %363, 8
  %365 = load i32*, i32** %34, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  %367 = load i32, i32* %366, align 4
  %368 = or i32 %364, %367
  %369 = load i32*, i32** %14, align 8
  store i32 %368, i32* %369, align 4
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %371 = load i32*, i32** %34, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 2
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = sub nsw i32 %376, 2
  %378 = call i32 (%struct.TYPE_16__*, ...) @krb5_data_copy(%struct.TYPE_16__* %370, i32* %372, i32 %377)
  store i32 0, i32* %9, align 4
  br label %379

379:                                              ; preds = %356, %353, %345, %313, %308, %299, %287, %257, %230, %221, %215, %176, %168, %128, %113, %96, %65, %53
  %380 = load i32, i32* %9, align 4
  ret i32 %380
}

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @rk_IS_SOCKET_ERROR(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @_krb5_get_int(i32*, i64*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @str2data(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @decode_KRB_ERROR(i32*, i64, %struct.TYPE_17__*, i64*) #1

declare dso_local i32 @free_KRB_ERROR(%struct.TYPE_17__*) #1

declare dso_local i32 @krb5_data_copy(%struct.TYPE_16__*, ...) #1

declare dso_local i32 @krb5_rd_rep(i32, i32, %struct.TYPE_16__*, i32**) #1

declare dso_local i32 @krb5_free_ap_rep_enc_part(i32, i32*) #1

declare dso_local i32 @krb5_rd_priv(i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_16__*) #1

declare dso_local i32 @krb5_warnx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
