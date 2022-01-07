; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_argon2id.c_xmain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/test/default/extr_pwhash_argon2id.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"argon2i\00", align 1
@crypto_pwhash_BYTES_MIN = common dso_local global i32 0, align 4
@crypto_pwhash_BYTES_MAX = common dso_local global i32 0, align 4
@crypto_pwhash_PASSWD_MIN = common dso_local global i64 0, align 8
@crypto_pwhash_PASSWD_MAX = common dso_local global i64 0, align 8
@crypto_pwhash_SALTBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_STRBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_OPSLIMIT_MIN = common dso_local global i32 0, align 4
@crypto_pwhash_OPSLIMIT_MAX = common dso_local global i32 0, align 4
@crypto_pwhash_MEMLIMIT_MIN = common dso_local global i32 0, align 4
@crypto_pwhash_MEMLIMIT_MAX = common dso_local global i32 0, align 4
@crypto_pwhash_OPSLIMIT_INTERACTIVE = common dso_local global i32 0, align 4
@crypto_pwhash_MEMLIMIT_INTERACTIVE = common dso_local global i32 0, align 4
@crypto_pwhash_OPSLIMIT_MODERATE = common dso_local global i32 0, align 4
@crypto_pwhash_MEMLIMIT_MODERATE = common dso_local global i32 0, align 4
@crypto_pwhash_OPSLIMIT_SENSITIVE = common dso_local global i32 0, align 4
@crypto_pwhash_MEMLIMIT_SENSITIVE = common dso_local global i32 0, align 4
@crypto_pwhash_ALG_ARGON2I13 = common dso_local global i64 0, align 8
@crypto_pwhash_ALG_ARGON2ID13 = common dso_local global i64 0, align 8
@crypto_pwhash_argon2id_OPSLIMIT_INTERACTIVE = common dso_local global i32 0, align 4
@crypto_pwhash_argon2id_MEMLIMIT_INTERACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @tv()
  %3 = call i32 (...) @tv2()
  %4 = call i32 (...) @tv3()
  %5 = call i32 (...) @str_tests()
  %6 = call i32 (...) @crypto_pwhash_bytes_min()
  %7 = icmp ugt i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = call i32 (...) @crypto_pwhash_bytes_max()
  %11 = call i32 (...) @crypto_pwhash_bytes_min()
  %12 = icmp ugt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i64 (...) @crypto_pwhash_passwd_max()
  %16 = call i64 (...) @crypto_pwhash_passwd_min()
  %17 = icmp sgt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i32 (...) @crypto_pwhash_saltbytes()
  %21 = icmp ugt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call i32 (...) @crypto_pwhash_strbytes()
  %25 = icmp ugt i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = call i32 (...) @crypto_pwhash_strbytes()
  %29 = call i8* (...) @crypto_pwhash_strprefix()
  %30 = call i32 @strlen(i8* %29)
  %31 = icmp ugt i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = call i32 (...) @crypto_pwhash_opslimit_min()
  %35 = icmp ugt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = call i32 (...) @crypto_pwhash_opslimit_max()
  %39 = icmp ugt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = call i32 (...) @crypto_pwhash_memlimit_min()
  %43 = icmp ugt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = call i32 (...) @crypto_pwhash_memlimit_max()
  %47 = icmp ugt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = call i32 (...) @crypto_pwhash_opslimit_interactive()
  %51 = icmp ugt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = call i32 (...) @crypto_pwhash_memlimit_interactive()
  %55 = icmp ugt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = call i32 (...) @crypto_pwhash_opslimit_moderate()
  %59 = icmp ugt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = call i32 (...) @crypto_pwhash_memlimit_moderate()
  %63 = icmp ugt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = call i32 (...) @crypto_pwhash_opslimit_sensitive()
  %67 = icmp ugt i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = call i32 (...) @crypto_pwhash_memlimit_sensitive()
  %71 = icmp ugt i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = call i32 (...) @crypto_pwhash_primitive()
  %75 = call i64 @strcmp(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = call i32 (...) @crypto_pwhash_bytes_min()
  %80 = load i32, i32* @crypto_pwhash_BYTES_MIN, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = call i32 (...) @crypto_pwhash_bytes_max()
  %85 = load i32, i32* @crypto_pwhash_BYTES_MAX, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = call i64 (...) @crypto_pwhash_passwd_min()
  %90 = load i64, i64* @crypto_pwhash_PASSWD_MIN, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = call i64 (...) @crypto_pwhash_passwd_max()
  %95 = load i64, i64* @crypto_pwhash_PASSWD_MAX, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = call i32 (...) @crypto_pwhash_saltbytes()
  %100 = load i32, i32* @crypto_pwhash_SALTBYTES, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = call i32 (...) @crypto_pwhash_strbytes()
  %105 = load i32, i32* @crypto_pwhash_STRBYTES, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = call i32 (...) @crypto_pwhash_opslimit_min()
  %110 = load i32, i32* @crypto_pwhash_OPSLIMIT_MIN, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = call i32 (...) @crypto_pwhash_opslimit_max()
  %115 = load i32, i32* @crypto_pwhash_OPSLIMIT_MAX, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = call i32 (...) @crypto_pwhash_memlimit_min()
  %120 = load i32, i32* @crypto_pwhash_MEMLIMIT_MIN, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = call i32 (...) @crypto_pwhash_memlimit_max()
  %125 = load i32, i32* @crypto_pwhash_MEMLIMIT_MAX, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = call i32 (...) @crypto_pwhash_opslimit_interactive()
  %130 = load i32, i32* @crypto_pwhash_OPSLIMIT_INTERACTIVE, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = call i32 (...) @crypto_pwhash_memlimit_interactive()
  %135 = load i32, i32* @crypto_pwhash_MEMLIMIT_INTERACTIVE, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = call i32 (...) @crypto_pwhash_opslimit_moderate()
  %140 = load i32, i32* @crypto_pwhash_OPSLIMIT_MODERATE, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = call i32 (...) @crypto_pwhash_memlimit_moderate()
  %145 = load i32, i32* @crypto_pwhash_MEMLIMIT_MODERATE, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = call i32 (...) @crypto_pwhash_opslimit_sensitive()
  %150 = load i32, i32* @crypto_pwhash_OPSLIMIT_SENSITIVE, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = call i32 (...) @crypto_pwhash_memlimit_sensitive()
  %155 = load i32, i32* @crypto_pwhash_MEMLIMIT_SENSITIVE, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = call i32 (...) @crypto_pwhash_argon2id_bytes_min()
  %160 = call i32 (...) @crypto_pwhash_bytes_min()
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = call i32 (...) @crypto_pwhash_argon2id_bytes_max()
  %165 = call i32 (...) @crypto_pwhash_bytes_max()
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = call i64 (...) @crypto_pwhash_argon2id_passwd_min()
  %170 = call i64 (...) @crypto_pwhash_passwd_min()
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = call i64 (...) @crypto_pwhash_argon2id_passwd_max()
  %175 = call i64 (...) @crypto_pwhash_passwd_max()
  %176 = icmp eq i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = call i32 (...) @crypto_pwhash_argon2id_saltbytes()
  %180 = call i32 (...) @crypto_pwhash_saltbytes()
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = call i32 (...) @crypto_pwhash_argon2id_strbytes()
  %185 = call i32 (...) @crypto_pwhash_strbytes()
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = call i32 (...) @crypto_pwhash_argon2id_strprefix()
  %190 = call i8* (...) @crypto_pwhash_strprefix()
  %191 = call i64 @strcmp(i32 %189, i8* %190)
  %192 = icmp eq i64 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = call i32 (...) @crypto_pwhash_argon2id_opslimit_min()
  %196 = call i32 (...) @crypto_pwhash_opslimit_min()
  %197 = icmp eq i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = call i32 (...) @crypto_pwhash_argon2id_opslimit_max()
  %201 = call i32 (...) @crypto_pwhash_opslimit_max()
  %202 = icmp eq i32 %200, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = call i32 (...) @crypto_pwhash_argon2id_memlimit_min()
  %206 = call i32 (...) @crypto_pwhash_memlimit_min()
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert(i32 %208)
  %210 = call i32 (...) @crypto_pwhash_argon2id_memlimit_max()
  %211 = call i32 (...) @crypto_pwhash_memlimit_max()
  %212 = icmp eq i32 %210, %211
  %213 = zext i1 %212 to i32
  %214 = call i32 @assert(i32 %213)
  %215 = call i32 (...) @crypto_pwhash_argon2id_opslimit_interactive()
  %216 = call i32 (...) @crypto_pwhash_opslimit_interactive()
  %217 = icmp eq i32 %215, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  %220 = call i32 (...) @crypto_pwhash_argon2id_opslimit_moderate()
  %221 = call i32 (...) @crypto_pwhash_opslimit_moderate()
  %222 = icmp eq i32 %220, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  %225 = call i32 (...) @crypto_pwhash_argon2id_opslimit_sensitive()
  %226 = call i32 (...) @crypto_pwhash_opslimit_sensitive()
  %227 = icmp eq i32 %225, %226
  %228 = zext i1 %227 to i32
  %229 = call i32 @assert(i32 %228)
  %230 = call i32 (...) @crypto_pwhash_argon2id_memlimit_interactive()
  %231 = call i32 (...) @crypto_pwhash_memlimit_interactive()
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = call i32 (...) @crypto_pwhash_argon2id_memlimit_moderate()
  %236 = call i32 (...) @crypto_pwhash_memlimit_moderate()
  %237 = icmp eq i32 %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = call i32 (...) @crypto_pwhash_argon2id_memlimit_sensitive()
  %241 = call i32 (...) @crypto_pwhash_memlimit_sensitive()
  %242 = icmp eq i32 %240, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  %245 = call i64 (...) @crypto_pwhash_alg_argon2id13()
  %246 = call i64 (...) @crypto_pwhash_argon2id_alg_argon2id13()
  %247 = icmp eq i64 %245, %246
  %248 = zext i1 %247 to i32
  %249 = call i32 @assert(i32 %248)
  %250 = call i64 (...) @crypto_pwhash_alg_argon2i13()
  %251 = load i64, i64* @crypto_pwhash_ALG_ARGON2I13, align 8
  %252 = icmp eq i64 %250, %251
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert(i32 %253)
  %255 = call i64 (...) @crypto_pwhash_alg_argon2i13()
  %256 = call i64 (...) @crypto_pwhash_alg_default()
  %257 = icmp ne i64 %255, %256
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = call i64 (...) @crypto_pwhash_alg_argon2id13()
  %261 = load i64, i64* @crypto_pwhash_ALG_ARGON2ID13, align 8
  %262 = icmp eq i64 %260, %261
  %263 = zext i1 %262 to i32
  %264 = call i32 @assert(i32 %263)
  %265 = call i64 (...) @crypto_pwhash_alg_argon2id13()
  %266 = call i64 (...) @crypto_pwhash_alg_argon2i13()
  %267 = icmp ne i64 %265, %266
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  %270 = call i64 (...) @crypto_pwhash_alg_argon2id13()
  %271 = call i64 (...) @crypto_pwhash_alg_default()
  %272 = icmp eq i64 %270, %271
  %273 = zext i1 %272 to i32
  %274 = call i32 @assert(i32 %273)
  %275 = load i32, i32* @crypto_pwhash_argon2id_OPSLIMIT_INTERACTIVE, align 4
  %276 = load i32, i32* @crypto_pwhash_argon2id_MEMLIMIT_INTERACTIVE, align 4
  %277 = call i32 @crypto_pwhash_argon2id(i32* null, i32 0, i32* null, i32 0, i32* null, i32 %275, i32 %276, i64 0)
  %278 = icmp eq i32 %277, -1
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load i32, i32* @crypto_pwhash_argon2id_OPSLIMIT_INTERACTIVE, align 4
  %282 = load i32, i32* @crypto_pwhash_argon2id_MEMLIMIT_INTERACTIVE, align 4
  %283 = load i64, i64* @crypto_pwhash_ALG_ARGON2I13, align 8
  %284 = call i32 @crypto_pwhash_argon2id(i32* null, i32 0, i32* null, i32 0, i32* null, i32 %281, i32 %282, i64 %283)
  %285 = icmp eq i32 %284, -1
  %286 = zext i1 %285 to i32
  %287 = call i32 @assert(i32 %286)
  %288 = load i32, i32* @crypto_pwhash_argon2id_OPSLIMIT_INTERACTIVE, align 4
  %289 = load i32, i32* @crypto_pwhash_argon2id_MEMLIMIT_INTERACTIVE, align 4
  %290 = call i32 @crypto_pwhash_argon2i(i32* null, i32 0, i32* null, i32 0, i32* null, i32 %288, i32 %289, i64 0)
  %291 = icmp eq i32 %290, -1
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  %294 = load i32, i32* @crypto_pwhash_argon2id_OPSLIMIT_INTERACTIVE, align 4
  %295 = load i32, i32* @crypto_pwhash_argon2id_MEMLIMIT_INTERACTIVE, align 4
  %296 = load i64, i64* @crypto_pwhash_ALG_ARGON2ID13, align 8
  %297 = call i32 @crypto_pwhash_argon2i(i32* null, i32 0, i32* null, i32 0, i32* null, i32 %294, i32 %295, i64 %296)
  %298 = icmp eq i32 %297, -1
  %299 = zext i1 %298 to i32
  %300 = call i32 @assert(i32 %299)
  %301 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @tv(...) #1

declare dso_local i32 @tv2(...) #1

declare dso_local i32 @tv3(...) #1

declare dso_local i32 @str_tests(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_pwhash_bytes_min(...) #1

declare dso_local i32 @crypto_pwhash_bytes_max(...) #1

declare dso_local i64 @crypto_pwhash_passwd_max(...) #1

declare dso_local i64 @crypto_pwhash_passwd_min(...) #1

declare dso_local i32 @crypto_pwhash_saltbytes(...) #1

declare dso_local i32 @crypto_pwhash_strbytes(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @crypto_pwhash_strprefix(...) #1

declare dso_local i32 @crypto_pwhash_opslimit_min(...) #1

declare dso_local i32 @crypto_pwhash_opslimit_max(...) #1

declare dso_local i32 @crypto_pwhash_memlimit_min(...) #1

declare dso_local i32 @crypto_pwhash_memlimit_max(...) #1

declare dso_local i32 @crypto_pwhash_opslimit_interactive(...) #1

declare dso_local i32 @crypto_pwhash_memlimit_interactive(...) #1

declare dso_local i32 @crypto_pwhash_opslimit_moderate(...) #1

declare dso_local i32 @crypto_pwhash_memlimit_moderate(...) #1

declare dso_local i32 @crypto_pwhash_opslimit_sensitive(...) #1

declare dso_local i32 @crypto_pwhash_memlimit_sensitive(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @crypto_pwhash_primitive(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_bytes_min(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_bytes_max(...) #1

declare dso_local i64 @crypto_pwhash_argon2id_passwd_min(...) #1

declare dso_local i64 @crypto_pwhash_argon2id_passwd_max(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_saltbytes(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_strbytes(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_strprefix(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_opslimit_min(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_opslimit_max(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_memlimit_min(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_memlimit_max(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_opslimit_interactive(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_opslimit_moderate(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_opslimit_sensitive(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_memlimit_interactive(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_memlimit_moderate(...) #1

declare dso_local i32 @crypto_pwhash_argon2id_memlimit_sensitive(...) #1

declare dso_local i64 @crypto_pwhash_alg_argon2id13(...) #1

declare dso_local i64 @crypto_pwhash_argon2id_alg_argon2id13(...) #1

declare dso_local i64 @crypto_pwhash_alg_argon2i13(...) #1

declare dso_local i64 @crypto_pwhash_alg_default(...) #1

declare dso_local i32 @crypto_pwhash_argon2id(i32*, i32, i32*, i32, i32*, i32, i32, i64) #1

declare dso_local i32 @crypto_pwhash_argon2i(i32*, i32, i32*, i32, i32*, i32, i32, i64) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
