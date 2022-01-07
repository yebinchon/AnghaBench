; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_socket.c_init_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_socket.c_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIO_LOOKUP_CLIENT = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@BIO_SOCK_REUSEADDR = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@BIO_SOCK_NODELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Can't bind %saddress for %s%s%s\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"IPv6 \00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"IPv4 \00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"unix \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_client(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %25 = call i32 (...) @BIO_sock_init()
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %267

28:                                               ; preds = %8
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* @BIO_LOOKUP_CLIENT, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @BIO_lookup_ex(i8* %29, i8* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32** %18)
  store i32 %35, i32* %23, align 4
  %36 = load i32, i32* %23, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @bio_err, align 4
  %40 = call i32 @ERR_print_errors(i32 %39)
  store i32 0, i32* %9, align 4
  br label %267

41:                                               ; preds = %28
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %14, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44, %41
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* @BIO_LOOKUP_CLIENT, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @BIO_lookup_ex(i8* %48, i8* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32** %19)
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %23, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @bio_err, align 4
  %59 = call i32 @ERR_print_errors(i32 %58)
  br label %257

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %44
  store i32 0, i32* %23, align 4
  %62 = load i32*, i32** %18, align 8
  store i32* %62, i32** %20, align 8
  br label %63

63:                                               ; preds = %193, %61
  %64 = load i32*, i32** %20, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %196

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @AF_UNSPEC, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %15, align 4
  %72 = load i32*, i32** %20, align 8
  %73 = call i32 @BIO_ADDRINFO_family(i32* %72)
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %70, %66
  %76 = load i32, i32* %16, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %20, align 8
  %81 = call i32 @BIO_ADDRINFO_socktype(i32* %80)
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %17, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %17, align 4
  %88 = load i32*, i32** %20, align 8
  %89 = call i32 @BIO_ADDRINFO_protocol(i32* %88)
  %90 = icmp eq i32 %87, %89
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i1 [ true, %83 ], [ %90, %86 ]
  br label %93

93:                                               ; preds = %91, %78, %70
  %94 = phi i1 [ false, %78 ], [ false, %70 ], [ %92, %91 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @OPENSSL_assert(i32 %95)
  %97 = load i32*, i32** %19, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %93
  %100 = load i32*, i32** %19, align 8
  store i32* %100, i32** %21, align 8
  br label %101

101:                                              ; preds = %112, %99
  %102 = load i32*, i32** %21, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i32*, i32** %21, align 8
  %106 = call i32 @BIO_ADDRINFO_family(i32* %105)
  %107 = load i32*, i32** %20, align 8
  %108 = call i32 @BIO_ADDRINFO_family(i32* %107)
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %115

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111
  %113 = load i32*, i32** %21, align 8
  %114 = call i32* @BIO_ADDRINFO_next(i32* %113)
  store i32* %114, i32** %21, align 8
  br label %101

115:                                              ; preds = %110, %101
  %116 = load i32*, i32** %21, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %193

119:                                              ; preds = %115
  %120 = load i32, i32* %22, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %22, align 4
  br label %122

122:                                              ; preds = %119, %93
  %123 = load i32*, i32** %20, align 8
  %124 = call i32 @BIO_ADDRINFO_family(i32* %123)
  %125 = load i32*, i32** %20, align 8
  %126 = call i32 @BIO_ADDRINFO_socktype(i32* %125)
  %127 = load i32*, i32** %20, align 8
  %128 = call i32 @BIO_ADDRINFO_protocol(i32* %127)
  %129 = call i32 @BIO_socket(i32 %124, i32 %126, i32 %128, i32 0)
  %130 = load i32*, i32** %10, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @INVALID_SOCKET, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %193

136:                                              ; preds = %122
  %137 = load i32*, i32** %21, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %21, align 8
  %143 = call i32 @BIO_ADDRINFO_address(i32* %142)
  %144 = load i32, i32* @BIO_SOCK_REUSEADDR, align 4
  %145 = call i32 @BIO_bind(i32 %141, i32 %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %139
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @BIO_closesocket(i32 %149)
  %151 = load i32, i32* @INVALID_SOCKET, align 4
  %152 = load i32*, i32** %10, align 8
  store i32 %151, i32* %152, align 4
  br label %196

153:                                              ; preds = %139
  br label %154

154:                                              ; preds = %153, %136
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* @IPPROTO_SCTP, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @BIO_NOCLOSE, align 4
  %162 = call i32* @BIO_new_dgram_sctp(i32 %160, i32 %161)
  store i32* %162, i32** %24, align 8
  %163 = load i32*, i32** %24, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load i32, i32* @bio_err, align 4
  %167 = call i32 @ERR_print_errors(i32 %166)
  store i32 0, i32* %9, align 4
  br label %267

168:                                              ; preds = %158
  %169 = load i32*, i32** %24, align 8
  %170 = call i32 @BIO_free(i32* %169)
  br label %171

171:                                              ; preds = %168, %154
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %20, align 8
  %175 = call i32 @BIO_ADDRINFO_address(i32* %174)
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* @IPPROTO_TCP, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = load i32, i32* @BIO_SOCK_NODELAY, align 4
  br label %182

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i32 [ %180, %179 ], [ 0, %181 ]
  %184 = call i32 @BIO_connect(i32 %173, i32 %175, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %182
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @BIO_closesocket(i32 %188)
  %190 = load i32, i32* @INVALID_SOCKET, align 4
  %191 = load i32*, i32** %10, align 8
  store i32 %190, i32* %191, align 4
  br label %193

192:                                              ; preds = %182
  br label %196

193:                                              ; preds = %186, %135, %118
  %194 = load i32*, i32** %20, align 8
  %195 = call i32* @BIO_ADDRINFO_next(i32* %194)
  store i32* %195, i32** %20, align 8
  br label %63

196:                                              ; preds = %192, %147, %63
  %197 = load i32*, i32** %10, align 8
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @INVALID_SOCKET, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %254

201:                                              ; preds = %196
  %202 = load i32*, i32** %19, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %251

204:                                              ; preds = %201
  %205 = load i32, i32* %22, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %251, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* @bio_err, align 4
  %209 = load i32*, i32** %18, align 8
  %210 = call i32 @BIO_ADDRINFO_family(i32* %209)
  %211 = load i32, i32* @AF_INET6, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  br label %229

214:                                              ; preds = %207
  %215 = load i32*, i32** %18, align 8
  %216 = call i32 @BIO_ADDRINFO_family(i32* %215)
  %217 = load i32, i32* @AF_INET, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %227

220:                                              ; preds = %214
  %221 = load i32*, i32** %18, align 8
  %222 = call i32 @BIO_ADDRINFO_family(i32* %221)
  %223 = load i32, i32* @AF_UNIX, align 4
  %224 = icmp eq i32 %222, %223
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  br label %227

227:                                              ; preds = %220, %219
  %228 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %219 ], [ %226, %220 ]
  br label %229

229:                                              ; preds = %227, %213
  %230 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %213 ], [ %228, %227 ]
  %231 = load i8*, i8** %13, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i8*, i8** %13, align 8
  br label %236

235:                                              ; preds = %229
  br label %236

236:                                              ; preds = %235, %233
  %237 = phi i8* [ %234, %233 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %235 ]
  %238 = load i8*, i8** %14, align 8
  %239 = icmp ne i8* %238, null
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %242 = load i8*, i8** %14, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %236
  %245 = load i8*, i8** %14, align 8
  br label %247

246:                                              ; preds = %236
  br label %247

247:                                              ; preds = %246, %244
  %248 = phi i8* [ %245, %244 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %246 ]
  %249 = call i32 @BIO_printf(i32 %208, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %230, i8* %237, i8* %241, i8* %248)
  %250 = call i32 (...) @ERR_clear_error()
  store i32 0, i32* %23, align 4
  br label %251

251:                                              ; preds = %247, %204, %201
  %252 = load i32, i32* @bio_err, align 4
  %253 = call i32 @ERR_print_errors(i32 %252)
  br label %256

254:                                              ; preds = %196
  %255 = call i32 (...) @ERR_clear_error()
  store i32 1, i32* %23, align 4
  br label %256

256:                                              ; preds = %254, %251
  br label %257

257:                                              ; preds = %256, %57
  %258 = load i32*, i32** %19, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i32*, i32** %19, align 8
  %262 = call i32 @BIO_ADDRINFO_free(i32* %261)
  br label %263

263:                                              ; preds = %260, %257
  %264 = load i32*, i32** %18, align 8
  %265 = call i32 @BIO_ADDRINFO_free(i32* %264)
  %266 = load i32, i32* %23, align 4
  store i32 %266, i32* %9, align 4
  br label %267

267:                                              ; preds = %263, %165, %38, %27
  %268 = load i32, i32* %9, align 4
  ret i32 %268
}

declare dso_local i32 @BIO_sock_init(...) #1

declare dso_local i32 @BIO_lookup_ex(i8*, i8*, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @BIO_ADDRINFO_family(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_socktype(i32*) #1

declare dso_local i32 @BIO_ADDRINFO_protocol(i32*) #1

declare dso_local i32* @BIO_ADDRINFO_next(i32*) #1

declare dso_local i32 @BIO_socket(i32, i32, i32, i32) #1

declare dso_local i32 @BIO_bind(i32, i32, i32) #1

declare dso_local i32 @BIO_ADDRINFO_address(i32*) #1

declare dso_local i32 @BIO_closesocket(i32) #1

declare dso_local i32* @BIO_new_dgram_sctp(i32, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32 @BIO_connect(i32, i32, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @BIO_ADDRINFO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
