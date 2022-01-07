; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_loader_file.c_file_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_loader_file.c_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64, i32, i32*, i32, i32* }
%struct.stat = type { i32 }
%struct.anon = type { i8*, i8 }

@.str = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"localhost/\00", align 1
@OSSL_STORE_F_FILE_OPEN = common dso_local global i32 0, align 4
@OSSL_STORE_R_URI_AUTHORITY_UNSUPPORTED = common dso_local global i32 0, align 4
@OSSL_STORE_R_PATH_MUST_BE_ABSOLUTE = common dso_local global i32 0, align 4
@SYS_F_STAT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@is_dir = common dso_local global i32 0, align 4
@ERR_R_SYS_LIB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@is_pem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i8*, i32*, i8*)* @file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @file_open(i32* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca [2 x %struct.anon], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [256 x i8], align 16
  %18 = alloca i32*, align 8
  %19 = alloca [4096 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store i64 0, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %23 = load i8, i8* %22, align 8
  %24 = and i8 %23, -2
  store i8 %24, i8* %22, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %13, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %13, align 8
  %28 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %26
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  store i8* %25, i8** %29, align 16
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strncasecmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %4
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 5
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %33
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %13, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 7
  %45 = call i64 @strncasecmp(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 16
  store i8* %49, i8** %16, align 8
  br label %64

50:                                               ; preds = %40
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 7
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 47
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 7
  store i8* %58, i8** %16, align 8
  br label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @OSSL_STORE_F_FILE_OPEN, align 4
  %61 = load i32, i32* @OSSL_STORE_R_URI_AUTHORITY_UNSUPPORTED, align 4
  %62 = call i32 @OSSL_STOREerr(i32 %60, i32 %61)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %277

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %47
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 1
  %69 = load i8, i8* %68, align 8
  %70 = and i8 %69, -2
  %71 = or i8 %70, 1
  store i8 %71, i8* %68, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %13, align 8
  %75 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %73
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  store i8* %72, i8** %76, align 16
  br label %77

77:                                               ; preds = %65, %4
  store i64 0, i64* %14, align 8
  store i8* null, i8** %15, align 8
  br label %78

78:                                               ; preds = %135, %77
  %79 = load i8*, i8** %15, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %13, align 8
  %84 = icmp ult i64 %82, %83
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i1 [ false, %78 ], [ %84, %81 ]
  br i1 %86, label %87, label %138

87:                                               ; preds = %85
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 1
  %91 = load i8, i8* %90, align 8
  %92 = and i8 %91, 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %87
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 16
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 47
  br i1 %103, label %104, label %113

104:                                              ; preds = %95
  %105 = load i32, i32* @OSSL_STORE_F_FILE_OPEN, align 4
  %106 = load i32, i32* @OSSL_STORE_R_PATH_MUST_BE_ABSOLUTE, align 4
  %107 = call i32 @OSSL_STOREerr(i32 %105, i32 %106)
  %108 = load i64, i64* %14, align 8
  %109 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 16
  %112 = call i32 @ERR_add_error_data(i32 1, i8* %111)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %277

113:                                              ; preds = %95, %87
  %114 = load i64, i64* %14, align 8
  %115 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 16
  %118 = call i64 @stat(i8* %117, %struct.stat* %11)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load i32, i32* @SYS_F_STAT, align 4
  %122 = load i64, i64* @errno, align 8
  %123 = call i32 @SYSerr(i32 %121, i64 %122)
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 16
  %128 = call i32 @ERR_add_error_data(i32 1, i8* %127)
  br label %134

129:                                              ; preds = %113
  %130 = load i64, i64* %14, align 8
  %131 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %12, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 16
  store i8* %133, i8** %15, align 8
  br label %134

134:                                              ; preds = %129, %120
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %14, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %14, align 8
  br label %78

138:                                              ; preds = %85
  %139 = load i8*, i8** %15, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %277

142:                                              ; preds = %138
  %143 = call i32 (...) @ERR_clear_error()
  %144 = call %struct.TYPE_11__* @OPENSSL_zalloc(i32 56)
  store %struct.TYPE_11__* %144, %struct.TYPE_11__** %10, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %146 = icmp eq %struct.TYPE_11__* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* @OSSL_STORE_F_FILE_OPEN, align 4
  %149 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %150 = call i32 @OSSL_STOREerr(i32 %148, i32 %149)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %277

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @S_ISDIR(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %225

156:                                              ; preds = %151
  %157 = load i8*, i8** %7, align 8
  %158 = call i32* @OPENSSL_strdup(i8* %157)
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 4
  store i32* %158, i32** %162, align 8
  %163 = load i32, i32* @is_dir, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %156
  br label %274

173:                                              ; preds = %156
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  %178 = load i8*, i8** %15, align 8
  %179 = call i32* @OPENSSL_DIR_read(i32* %177, i8* %178)
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  store i32* %179, i32** %183, align 8
  %184 = load i64, i64* @errno, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i64 %184, i64* %188, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = icmp eq i32* %193, null
  br i1 %194, label %195, label %224

195:                                              ; preds = %173
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %195
  %203 = load i32, i32* @OSSL_STORE_F_FILE_OPEN, align 4
  %204 = load i32, i32* @ERR_R_SYS_LIB, align 4
  %205 = call i32 @OSSL_STOREerr(i32 %203, i32 %204)
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* @errno, align 8
  %211 = load i64, i64* @errno, align 8
  %212 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %213 = call i64 @openssl_strerror_r(i64 %211, i8* %212, i32 256)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %202
  %216 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %217 = call i32 @ERR_add_error_data(i32 1, i8* %216)
  br label %218

218:                                              ; preds = %215, %202
  br label %274

219:                                              ; preds = %195
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  store i32 1, i32* %223, align 8
  br label %224

224:                                              ; preds = %219, %173
  br label %272

225:                                              ; preds = %151
  store i32* null, i32** %18, align 8
  %226 = bitcast [4096 x i8]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %226, i8 0, i64 4096, i1 false)
  %227 = call i32 (...) @BIO_f_buffer()
  %228 = call i32* @BIO_new(i32 %227)
  store i32* %228, i32** %18, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %238, label %230

230:                                              ; preds = %225
  %231 = load i8*, i8** %15, align 8
  %232 = call i32* @BIO_new_file(i8* %231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  store i32* %232, i32** %236, align 8
  %237 = icmp eq i32* %232, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %230, %225
  %239 = load i32*, i32** %18, align 8
  %240 = call i32 @BIO_free_all(i32* %239)
  br label %274

241:                                              ; preds = %230
  %242 = load i32*, i32** %18, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = call i32* @BIO_push(i32* %242, i32* %247)
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  store i32* %248, i32** %252, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %259 = call i64 @BIO_buffer_peek(i32* %257, i8* %258, i32 4095)
  %260 = icmp sgt i64 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %241
  %262 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 4095
  store i8 0, i8* %262, align 1
  %263 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 0
  %264 = call i32* @strstr(i8* %263, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  %267 = load i32, i32* @is_pem, align 4
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %266, %261
  br label %271

271:                                              ; preds = %270, %241
  br label %272

272:                                              ; preds = %271, %224
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %273, %struct.TYPE_11__** %5, align 8
  br label %277

274:                                              ; preds = %238, %218, %172
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %276 = call i32 @OSSL_STORE_LOADER_CTX_free(%struct.TYPE_11__* %275)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %277

277:                                              ; preds = %274, %272, %147, %141, %104, %59
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %278
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @SYSerr(i32, i64) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local %struct.TYPE_11__* @OPENSSL_zalloc(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32* @OPENSSL_strdup(i8*) #1

declare dso_local i32* @OPENSSL_DIR_read(i32*, i8*) #1

declare dso_local i64 @openssl_strerror_r(i64, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_buffer(...) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32* @BIO_push(i32*, i32*) #1

declare dso_local i64 @BIO_buffer_peek(i32*, i8*, i32) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @OSSL_STORE_LOADER_CTX_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
