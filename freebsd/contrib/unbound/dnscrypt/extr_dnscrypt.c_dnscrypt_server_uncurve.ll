; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnscrypt_server_uncurve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnscrypt_server_uncurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnsc_env = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sldns_buffer = type { i32 }
%struct.dnscrypt_query_header = type { i32*, i32 }
%struct.lruhash_entry = type { i32, i32* }

@crypto_box_HALF_NONCEBYTES = common dso_local global i32 0, align 4
@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@crypto_box_NONCEBYTES = common dso_local global i32 0, align 4
@DNSCRYPT_SHARED_SECRET_KEY_LENGTH = common dso_local global i32 0, align 4
@DNSCRYPT_QUERY_HEADER_SIZE = common dso_local global i64 0, align 8
@DNSCRYPT_QUERY_BOX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnsc_env*, %struct.TYPE_5__*, i32*, i32*, %struct.sldns_buffer*)* @dnscrypt_server_uncurve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnscrypt_server_uncurve(%struct.dnsc_env* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, %struct.sldns_buffer* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dnsc_env*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sldns_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.dnscrypt_query_header*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.lruhash_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.dnsc_env* %0, %struct.dnsc_env** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.sldns_buffer* %4, %struct.sldns_buffer** %11, align 8
  %22 = load i32, i32* @crypto_box_HALF_NONCEBYTES, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %25 = zext i32 %24 to i64
  %26 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %27 = call i64 @sldns_buffer_limit(%struct.sldns_buffer* %26)
  store i64 %27, i64* %12, align 8
  %28 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %29 = call i32* @sldns_buffer_begin(%struct.sldns_buffer* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* @crypto_box_NONCEBYTES, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %14, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %15, align 8
  %34 = load i32, i32* @DNSCRYPT_SHARED_SECRET_KEY_LENGTH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %17, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @DNSCRYPT_QUERY_HEADER_SIZE, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %234

41:                                               ; preds = %5
  %42 = load i32*, i32** %13, align 8
  %43 = bitcast i32* %42 to %struct.dnscrypt_query_header*
  store %struct.dnscrypt_query_header* %43, %struct.dnscrypt_query_header** %16, align 8
  %44 = load %struct.dnscrypt_query_header*, %struct.dnscrypt_query_header** %16, align 8
  %45 = getelementptr inbounds %struct.dnscrypt_query_header, %struct.dnscrypt_query_header* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dnscrypt_query_header*, %struct.dnscrypt_query_header** %16, align 8
  %51 = getelementptr inbounds %struct.dnscrypt_query_header, %struct.dnscrypt_query_header* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dnsc_nonce_cache_key_hash(i32* %46, i32 %49, i32 %52)
  store i32 %53, i32* %20, align 4
  %54 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %55 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %54, i32 0, i32 3
  %56 = call i32 @lock_basic_lock(i32* %55)
  %57 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %58 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dnscrypt_query_header*, %struct.dnscrypt_query_header** %16, align 8
  %61 = getelementptr inbounds %struct.dnscrypt_query_header, %struct.dnscrypt_query_header* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.dnscrypt_query_header*, %struct.dnscrypt_query_header** %16, align 8
  %67 = getelementptr inbounds %struct.dnscrypt_query_header, %struct.dnscrypt_query_header* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %20, align 4
  %70 = call %struct.lruhash_entry* @dnsc_nonces_lookup(i32 %59, i32* %62, i32 %65, i32 %68, i32 %69)
  store %struct.lruhash_entry* %70, %struct.lruhash_entry** %18, align 8
  %71 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %72 = icmp ne %struct.lruhash_entry* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %41
  %74 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %75 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %74, i32 0, i32 0
  %76 = call i32 @lock_rw_unlock(i32* %75)
  %77 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %78 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %82 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %81, i32 0, i32 3
  %83 = call i32 @lock_basic_unlock(i32* %82)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %234

84:                                               ; preds = %41
  %85 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %86 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dnscrypt_query_header*, %struct.dnscrypt_query_header** %16, align 8
  %89 = getelementptr inbounds %struct.dnscrypt_query_header, %struct.dnscrypt_query_header* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.dnscrypt_query_header*, %struct.dnscrypt_query_header** %16, align 8
  %95 = getelementptr inbounds %struct.dnscrypt_query_header, %struct.dnscrypt_query_header* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %20, align 4
  %98 = call i32 @dnsc_nonce_cache_insert(i32 %87, i32* %90, i32 %93, i32 %96, i32 %97)
  %99 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %100 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %99, i32 0, i32 3
  %101 = call i32 @lock_basic_unlock(i32* %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dnscrypt_query_header*, %struct.dnscrypt_query_header** %16, align 8
  %108 = getelementptr inbounds %struct.dnscrypt_query_header, %struct.dnscrypt_query_header* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dnsc_shared_secrets_cache_key(i32* %36, i32 %106, i32 %109, i32 %114)
  store i32 %115, i32* %19, align 4
  %116 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %117 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %19, align 4
  %120 = call %struct.lruhash_entry* @dnsc_shared_secrets_lookup(i32 %118, i32* %36, i32 %119)
  store %struct.lruhash_entry* %120, %struct.lruhash_entry** %18, align 8
  %121 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %122 = icmp ne %struct.lruhash_entry* %121, null
  br i1 %122, label %162, label %123

123:                                              ; preds = %84
  %124 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %125 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %124, i32 0, i32 1
  %126 = call i32 @lock_basic_lock(i32* %125)
  %127 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %128 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %132 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %131, i32 0, i32 1
  %133 = call i32 @lock_basic_unlock(i32* %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %141

140:                                              ; preds = %123
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %234

141:                                              ; preds = %123
  %142 = load i32*, i32** %10, align 8
  %143 = load %struct.dnscrypt_query_header*, %struct.dnscrypt_query_header** %16, align 8
  %144 = getelementptr inbounds %struct.dnscrypt_query_header, %struct.dnscrypt_query_header* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @crypto_box_beforenm(i32* %142, i32 %145, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %234

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.dnsc_env*, %struct.dnsc_env** %7, align 8
  %157 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %19, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @dnsc_shared_secret_cache_insert(i32 %158, i32* %36, i32 %159, i32* %160)
  br label %172

162:                                              ; preds = %84
  %163 = load i32*, i32** %10, align 8
  %164 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %165 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %168 = call i32 @memcpy(i32* %163, i32* %166, i32 %167)
  %169 = load %struct.lruhash_entry*, %struct.lruhash_entry** %18, align 8
  %170 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %169, i32 0, i32 0
  %171 = call i32 @lock_rw_unlock(i32* %170)
  br label %172

172:                                              ; preds = %162, %155
  %173 = load %struct.dnscrypt_query_header*, %struct.dnscrypt_query_header** %16, align 8
  %174 = getelementptr inbounds %struct.dnscrypt_query_header, %struct.dnscrypt_query_header* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* @crypto_box_HALF_NONCEBYTES, align 4
  %177 = call i32 @memcpy(i32* %33, i32* %175, i32 %176)
  %178 = load i32, i32* @crypto_box_HALF_NONCEBYTES, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %33, i64 %179
  %181 = load i32, i32* @crypto_box_HALF_NONCEBYTES, align 4
  %182 = call i32 @memset(i32* %180, i32 0, i32 %181)
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %190

189:                                              ; preds = %172
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %234

190:                                              ; preds = %172
  %191 = load i32*, i32** %13, align 8
  %192 = load i32*, i32** %13, align 8
  %193 = load i32, i32* @DNSCRYPT_QUERY_BOX_OFFSET, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i64, i64* %12, align 8
  %197 = load i32, i32* @DNSCRYPT_QUERY_BOX_OFFSET, align 4
  %198 = sext i32 %197 to i64
  %199 = sub i64 %196, %198
  %200 = trunc i64 %199 to i32
  %201 = load i32*, i32** %10, align 8
  %202 = call i64 @crypto_box_open_easy_afternm(i32* %191, i32* %195, i32 %200, i32* %33, i32* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %190
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %234

205:                                              ; preds = %190
  br label %206

206:                                              ; preds = %205
  %207 = load i64, i64* @DNSCRYPT_QUERY_HEADER_SIZE, align 8
  %208 = load i64, i64* %12, align 8
  %209 = sub i64 %208, %207
  store i64 %209, i64* %12, align 8
  br label %210

210:                                              ; preds = %217, %206
  %211 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %212 = load i64, i64* %12, align 8
  %213 = add i64 %212, -1
  store i64 %213, i64* %12, align 8
  %214 = call i32* @sldns_buffer_at(%struct.sldns_buffer* %211, i64 %213)
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  br label %210

218:                                              ; preds = %210
  %219 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %220 = load i64, i64* %12, align 8
  %221 = call i32* @sldns_buffer_at(%struct.sldns_buffer* %219, i64 %220)
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 128
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %234

225:                                              ; preds = %218
  %226 = load i32*, i32** %9, align 8
  %227 = load i32, i32* @crypto_box_HALF_NONCEBYTES, align 4
  %228 = call i32 @memcpy(i32* %226, i32* %33, i32 %227)
  %229 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %230 = call i32 @sldns_buffer_set_position(%struct.sldns_buffer* %229, i32 0)
  %231 = load %struct.sldns_buffer*, %struct.sldns_buffer** %11, align 8
  %232 = load i64, i64* %12, align 8
  %233 = call i32 @sldns_buffer_set_limit(%struct.sldns_buffer* %231, i64 %232)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %234

234:                                              ; preds = %225, %224, %204, %189, %153, %140, %73, %40
  %235 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %235)
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local i64 @sldns_buffer_limit(%struct.sldns_buffer*) #1

declare dso_local i32* @sldns_buffer_begin(%struct.sldns_buffer*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dnsc_nonce_cache_key_hash(i32*, i32, i32) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local %struct.lruhash_entry* @dnsc_nonces_lookup(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @dnsc_nonce_cache_insert(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dnsc_shared_secrets_cache_key(i32*, i32, i32, i32) #1

declare dso_local %struct.lruhash_entry* @dnsc_shared_secrets_lookup(i32, i32*, i32) #1

declare dso_local i64 @crypto_box_beforenm(i32*, i32, i32) #1

declare dso_local i32 @dnsc_shared_secret_cache_insert(i32, i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @crypto_box_open_easy_afternm(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32* @sldns_buffer_at(%struct.sldns_buffer*, i64) #1

declare dso_local i32 @sldns_buffer_set_position(%struct.sldns_buffer*, i32) #1

declare dso_local i32 @sldns_buffer_set_limit(%struct.sldns_buffer*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
