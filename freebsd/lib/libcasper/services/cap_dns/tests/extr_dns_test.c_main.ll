; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/tests/extr_dns_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_dns/tests/extr_dns_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1..91\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"system.dns\00", align 1
@GETHOSTBYNAME = common dso_local global i32 0, align 4
@GETHOSTBYNAME2_AF_INET = common dso_local global i32 0, align 4
@GETHOSTBYNAME2_AF_INET6 = common dso_local global i32 0, align 4
@GETHOSTBYADDR_AF_INET = common dso_local global i32 0, align 4
@GETHOSTBYADDR_AF_INET6 = common dso_local global i32 0, align 4
@GETADDRINFO_AF_UNSPEC = common dso_local global i32 0, align 4
@GETADDRINFO_AF_INET = common dso_local global i32 0, align 4
@GETADDRINFO_AF_INET6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"NAME2ADDR\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ADDR2NAME\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTCAPABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca [2 x i32], align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fflush(i32 %8)
  %10 = call i32* (...) @cap_init()
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @CHECKX(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @cap_service_open(i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %3, align 8
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @CHECKX(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @cap_close(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @runtest(i32* %23)
  %25 = load i32, i32* @GETHOSTBYNAME, align 4
  %26 = load i32, i32* @GETHOSTBYNAME2_AF_INET, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @GETHOSTBYNAME2_AF_INET6, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @GETHOSTBYADDR_AF_INET, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @GETHOSTBYADDR_AF_INET6, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @GETADDRINFO_AF_UNSPEC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @GETADDRINFO_AF_INET, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @GETADDRINFO_AF_INET6, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %24, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @CHECK(i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @cap_clone(i32* %43)
  store i32* %44, i32** %3, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @CHECK(i32 %47)
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %50, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %53 = call i32 @cap_dns_type_limit(i32* %51, i8** %52, i32 2)
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @CHECK(i32 %55)
  %57 = load i32, i32* @AF_INET, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @AF_INET6, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %63 = call i32 @cap_dns_family_limit(i32* %61, i32* %62, i32 2)
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @CHECK(i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @runtest(i32* %67)
  %69 = load i32, i32* @GETHOSTBYNAME, align 4
  %70 = load i32, i32* @GETHOSTBYNAME2_AF_INET, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @GETHOSTBYNAME2_AF_INET6, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @GETHOSTBYADDR_AF_INET, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @GETHOSTBYADDR_AF_INET6, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @GETADDRINFO_AF_INET, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @GETADDRINFO_AF_INET6, align 4
  %81 = or i32 %79, %80
  %82 = icmp eq i32 %68, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @CHECK(i32 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @cap_close(i32* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32* @cap_clone(i32* %87)
  store i32* %88, i32** %3, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @CHECK(i32 %91)
  %93 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %93, align 16
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %96 = call i32 @cap_dns_type_limit(i32* %94, i8** %95, i32 1)
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @CHECK(i32 %98)
  %100 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %100, align 8
  %101 = load i32*, i32** %3, align 8
  %102 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %103 = call i32 @cap_dns_type_limit(i32* %101, i8** %102, i32 2)
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %109

105:                                              ; preds = %0
  %106 = load i64, i64* @errno, align 8
  %107 = load i64, i64* @ENOTCAPABLE, align 8
  %108 = icmp eq i64 %106, %107
  br label %109

109:                                              ; preds = %105, %0
  %110 = phi i1 [ false, %0 ], [ %108, %105 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @CHECK(i32 %111)
  %113 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %113, align 16
  %114 = load i32*, i32** %3, align 8
  %115 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %116 = call i32 @cap_dns_type_limit(i32* %114, i8** %115, i32 1)
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @ENOTCAPABLE, align 8
  %121 = icmp eq i64 %119, %120
  br label %122

122:                                              ; preds = %118, %109
  %123 = phi i1 [ false, %109 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @CHECK(i32 %124)
  %126 = load i32, i32* @AF_INET, align 4
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* @AF_INET6, align 4
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %3, align 8
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %132 = call i32 @cap_dns_family_limit(i32* %130, i32* %131, i32 2)
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @CHECK(i32 %134)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @runtest(i32* %136)
  %138 = load i32, i32* @GETHOSTBYNAME, align 4
  %139 = load i32, i32* @GETHOSTBYNAME2_AF_INET, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @GETHOSTBYNAME2_AF_INET6, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @GETADDRINFO_AF_INET, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @GETADDRINFO_AF_INET6, align 4
  %146 = or i32 %144, %145
  %147 = icmp eq i32 %137, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @CHECK(i32 %148)
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 @cap_close(i32* %150)
  %152 = load i32*, i32** %4, align 8
  %153 = call i32* @cap_clone(i32* %152)
  store i32* %153, i32** %3, align 8
  %154 = load i32*, i32** %3, align 8
  %155 = icmp ne i32* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 @CHECK(i32 %156)
  %158 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %158, align 16
  %159 = load i32*, i32** %3, align 8
  %160 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %161 = call i32 @cap_dns_type_limit(i32* %159, i8** %160, i32 1)
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @CHECK(i32 %163)
  %165 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %165, align 8
  %166 = load i32*, i32** %3, align 8
  %167 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %168 = call i32 @cap_dns_type_limit(i32* %166, i8** %167, i32 2)
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %174

170:                                              ; preds = %122
  %171 = load i64, i64* @errno, align 8
  %172 = load i64, i64* @ENOTCAPABLE, align 8
  %173 = icmp eq i64 %171, %172
  br label %174

174:                                              ; preds = %170, %122
  %175 = phi i1 [ false, %122 ], [ %173, %170 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @CHECK(i32 %176)
  %178 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %178, align 16
  %179 = load i32*, i32** %3, align 8
  %180 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %181 = call i32 @cap_dns_type_limit(i32* %179, i8** %180, i32 1)
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %187

183:                                              ; preds = %174
  %184 = load i64, i64* @errno, align 8
  %185 = load i64, i64* @ENOTCAPABLE, align 8
  %186 = icmp eq i64 %184, %185
  br label %187

187:                                              ; preds = %183, %174
  %188 = phi i1 [ false, %174 ], [ %186, %183 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @CHECK(i32 %189)
  %191 = load i32, i32* @AF_INET, align 4
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* @AF_INET6, align 4
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %193, i32* %194, align 4
  %195 = load i32*, i32** %3, align 8
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %197 = call i32 @cap_dns_family_limit(i32* %195, i32* %196, i32 2)
  %198 = icmp eq i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = call i32 @CHECK(i32 %199)
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @runtest(i32* %201)
  %203 = load i32, i32* @GETHOSTBYADDR_AF_INET, align 4
  %204 = load i32, i32* @GETHOSTBYADDR_AF_INET6, align 4
  %205 = or i32 %203, %204
  %206 = icmp eq i32 %202, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 @CHECK(i32 %207)
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @cap_close(i32* %209)
  %211 = load i32*, i32** %4, align 8
  %212 = call i32* @cap_clone(i32* %211)
  store i32* %212, i32** %3, align 8
  %213 = load i32*, i32** %3, align 8
  %214 = icmp ne i32* %213, null
  %215 = zext i1 %214 to i32
  %216 = call i32 @CHECK(i32 %215)
  %217 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %217, align 16
  %218 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %218, align 8
  %219 = load i32*, i32** %3, align 8
  %220 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %221 = call i32 @cap_dns_type_limit(i32* %219, i8** %220, i32 2)
  %222 = icmp eq i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = call i32 @CHECK(i32 %223)
  %225 = load i32, i32* @AF_INET, align 4
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %225, i32* %226, align 4
  %227 = load i32*, i32** %3, align 8
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %229 = call i32 @cap_dns_family_limit(i32* %227, i32* %228, i32 1)
  %230 = icmp eq i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = call i32 @CHECK(i32 %231)
  %233 = load i32, i32* @AF_INET6, align 4
  %234 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %233, i32* %234, align 4
  %235 = load i32*, i32** %3, align 8
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %237 = call i32 @cap_dns_family_limit(i32* %235, i32* %236, i32 2)
  %238 = icmp eq i32 %237, -1
  br i1 %238, label %239, label %243

239:                                              ; preds = %187
  %240 = load i64, i64* @errno, align 8
  %241 = load i64, i64* @ENOTCAPABLE, align 8
  %242 = icmp eq i64 %240, %241
  br label %243

243:                                              ; preds = %239, %187
  %244 = phi i1 [ false, %187 ], [ %242, %239 ]
  %245 = zext i1 %244 to i32
  %246 = call i32 @CHECK(i32 %245)
  %247 = load i32, i32* @AF_INET6, align 4
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %247, i32* %248, align 4
  %249 = load i32*, i32** %3, align 8
  %250 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %251 = call i32 @cap_dns_family_limit(i32* %249, i32* %250, i32 1)
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %257

253:                                              ; preds = %243
  %254 = load i64, i64* @errno, align 8
  %255 = load i64, i64* @ENOTCAPABLE, align 8
  %256 = icmp eq i64 %254, %255
  br label %257

257:                                              ; preds = %253, %243
  %258 = phi i1 [ false, %243 ], [ %256, %253 ]
  %259 = zext i1 %258 to i32
  %260 = call i32 @CHECK(i32 %259)
  %261 = load i32*, i32** %3, align 8
  %262 = call i32 @runtest(i32* %261)
  %263 = load i32, i32* @GETHOSTBYNAME, align 4
  %264 = load i32, i32* @GETHOSTBYNAME2_AF_INET, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* @GETHOSTBYADDR_AF_INET, align 4
  %267 = or i32 %265, %266
  %268 = load i32, i32* @GETADDRINFO_AF_INET, align 4
  %269 = or i32 %267, %268
  %270 = icmp eq i32 %262, %269
  %271 = zext i1 %270 to i32
  %272 = call i32 @CHECK(i32 %271)
  %273 = load i32*, i32** %3, align 8
  %274 = call i32 @cap_close(i32* %273)
  %275 = load i32*, i32** %4, align 8
  %276 = call i32* @cap_clone(i32* %275)
  store i32* %276, i32** %3, align 8
  %277 = load i32*, i32** %3, align 8
  %278 = icmp ne i32* %277, null
  %279 = zext i1 %278 to i32
  %280 = call i32 @CHECK(i32 %279)
  %281 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %281, align 16
  %282 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %282, align 8
  %283 = load i32*, i32** %3, align 8
  %284 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %285 = call i32 @cap_dns_type_limit(i32* %283, i8** %284, i32 2)
  %286 = icmp eq i32 %285, 0
  %287 = zext i1 %286 to i32
  %288 = call i32 @CHECK(i32 %287)
  %289 = load i32, i32* @AF_INET6, align 4
  %290 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %289, i32* %290, align 4
  %291 = load i32*, i32** %3, align 8
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %293 = call i32 @cap_dns_family_limit(i32* %291, i32* %292, i32 1)
  %294 = icmp eq i32 %293, 0
  %295 = zext i1 %294 to i32
  %296 = call i32 @CHECK(i32 %295)
  %297 = load i32, i32* @AF_INET, align 4
  %298 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %297, i32* %298, align 4
  %299 = load i32*, i32** %3, align 8
  %300 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %301 = call i32 @cap_dns_family_limit(i32* %299, i32* %300, i32 2)
  %302 = icmp eq i32 %301, -1
  br i1 %302, label %303, label %307

303:                                              ; preds = %257
  %304 = load i64, i64* @errno, align 8
  %305 = load i64, i64* @ENOTCAPABLE, align 8
  %306 = icmp eq i64 %304, %305
  br label %307

307:                                              ; preds = %303, %257
  %308 = phi i1 [ false, %257 ], [ %306, %303 ]
  %309 = zext i1 %308 to i32
  %310 = call i32 @CHECK(i32 %309)
  %311 = load i32, i32* @AF_INET, align 4
  %312 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %311, i32* %312, align 4
  %313 = load i32*, i32** %3, align 8
  %314 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %315 = call i32 @cap_dns_family_limit(i32* %313, i32* %314, i32 1)
  %316 = icmp eq i32 %315, -1
  br i1 %316, label %317, label %321

317:                                              ; preds = %307
  %318 = load i64, i64* @errno, align 8
  %319 = load i64, i64* @ENOTCAPABLE, align 8
  %320 = icmp eq i64 %318, %319
  br label %321

321:                                              ; preds = %317, %307
  %322 = phi i1 [ false, %307 ], [ %320, %317 ]
  %323 = zext i1 %322 to i32
  %324 = call i32 @CHECK(i32 %323)
  %325 = load i32*, i32** %3, align 8
  %326 = call i32 @runtest(i32* %325)
  %327 = load i32, i32* @GETHOSTBYNAME2_AF_INET6, align 4
  %328 = load i32, i32* @GETHOSTBYADDR_AF_INET6, align 4
  %329 = or i32 %327, %328
  %330 = load i32, i32* @GETADDRINFO_AF_INET6, align 4
  %331 = or i32 %329, %330
  %332 = icmp eq i32 %326, %331
  %333 = zext i1 %332 to i32
  %334 = call i32 @CHECK(i32 %333)
  %335 = load i32*, i32** %3, align 8
  %336 = call i32 @cap_close(i32* %335)
  %337 = load i32*, i32** %4, align 8
  %338 = call i32* @cap_clone(i32* %337)
  store i32* %338, i32** %3, align 8
  %339 = load i32*, i32** %3, align 8
  %340 = icmp ne i32* %339, null
  %341 = zext i1 %340 to i32
  %342 = call i32 @CHECK(i32 %341)
  %343 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %343, align 16
  %344 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %344, align 8
  %345 = load i32*, i32** %3, align 8
  %346 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %347 = call i32 @cap_dns_type_limit(i32* %345, i8** %346, i32 2)
  %348 = icmp eq i32 %347, 0
  %349 = zext i1 %348 to i32
  %350 = call i32 @CHECK(i32 %349)
  %351 = load i32, i32* @AF_INET, align 4
  %352 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %351, i32* %352, align 4
  %353 = load i32, i32* @AF_INET6, align 4
  %354 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %353, i32* %354, align 4
  %355 = load i32*, i32** %3, align 8
  %356 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %357 = call i32 @cap_dns_family_limit(i32* %355, i32* %356, i32 2)
  %358 = icmp eq i32 %357, 0
  %359 = zext i1 %358 to i32
  %360 = call i32 @CHECK(i32 %359)
  %361 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %361, align 16
  %362 = load i32*, i32** %3, align 8
  %363 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %364 = call i32 @cap_dns_type_limit(i32* %362, i8** %363, i32 1)
  %365 = icmp eq i32 %364, 0
  %366 = zext i1 %365 to i32
  %367 = call i32 @CHECK(i32 %366)
  %368 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %368, align 8
  %369 = load i32*, i32** %3, align 8
  %370 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %371 = call i32 @cap_dns_type_limit(i32* %369, i8** %370, i32 2)
  %372 = icmp eq i32 %371, -1
  br i1 %372, label %373, label %377

373:                                              ; preds = %321
  %374 = load i64, i64* @errno, align 8
  %375 = load i64, i64* @ENOTCAPABLE, align 8
  %376 = icmp eq i64 %374, %375
  br label %377

377:                                              ; preds = %373, %321
  %378 = phi i1 [ false, %321 ], [ %376, %373 ]
  %379 = zext i1 %378 to i32
  %380 = call i32 @CHECK(i32 %379)
  %381 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %381, align 16
  %382 = load i32*, i32** %3, align 8
  %383 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %384 = call i32 @cap_dns_type_limit(i32* %382, i8** %383, i32 1)
  %385 = icmp eq i32 %384, -1
  br i1 %385, label %386, label %390

386:                                              ; preds = %377
  %387 = load i64, i64* @errno, align 8
  %388 = load i64, i64* @ENOTCAPABLE, align 8
  %389 = icmp eq i64 %387, %388
  br label %390

390:                                              ; preds = %386, %377
  %391 = phi i1 [ false, %377 ], [ %389, %386 ]
  %392 = zext i1 %391 to i32
  %393 = call i32 @CHECK(i32 %392)
  %394 = load i32, i32* @AF_INET, align 4
  %395 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %394, i32* %395, align 4
  %396 = load i32*, i32** %3, align 8
  %397 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %398 = call i32 @cap_dns_family_limit(i32* %396, i32* %397, i32 1)
  %399 = icmp eq i32 %398, 0
  %400 = zext i1 %399 to i32
  %401 = call i32 @CHECK(i32 %400)
  %402 = load i32, i32* @AF_INET6, align 4
  %403 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %402, i32* %403, align 4
  %404 = load i32*, i32** %3, align 8
  %405 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %406 = call i32 @cap_dns_family_limit(i32* %404, i32* %405, i32 2)
  %407 = icmp eq i32 %406, -1
  br i1 %407, label %408, label %412

408:                                              ; preds = %390
  %409 = load i64, i64* @errno, align 8
  %410 = load i64, i64* @ENOTCAPABLE, align 8
  %411 = icmp eq i64 %409, %410
  br label %412

412:                                              ; preds = %408, %390
  %413 = phi i1 [ false, %390 ], [ %411, %408 ]
  %414 = zext i1 %413 to i32
  %415 = call i32 @CHECK(i32 %414)
  %416 = load i32, i32* @AF_INET6, align 4
  %417 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %416, i32* %417, align 4
  %418 = load i32*, i32** %3, align 8
  %419 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %420 = call i32 @cap_dns_family_limit(i32* %418, i32* %419, i32 1)
  %421 = icmp eq i32 %420, -1
  br i1 %421, label %422, label %426

422:                                              ; preds = %412
  %423 = load i64, i64* @errno, align 8
  %424 = load i64, i64* @ENOTCAPABLE, align 8
  %425 = icmp eq i64 %423, %424
  br label %426

426:                                              ; preds = %422, %412
  %427 = phi i1 [ false, %412 ], [ %425, %422 ]
  %428 = zext i1 %427 to i32
  %429 = call i32 @CHECK(i32 %428)
  %430 = load i32*, i32** %3, align 8
  %431 = call i32 @runtest(i32* %430)
  %432 = load i32, i32* @GETHOSTBYNAME, align 4
  %433 = load i32, i32* @GETHOSTBYNAME2_AF_INET, align 4
  %434 = or i32 %432, %433
  %435 = load i32, i32* @GETADDRINFO_AF_INET, align 4
  %436 = or i32 %434, %435
  %437 = icmp eq i32 %431, %436
  %438 = zext i1 %437 to i32
  %439 = call i32 @CHECK(i32 %438)
  %440 = load i32*, i32** %3, align 8
  %441 = call i32 @cap_close(i32* %440)
  %442 = load i32*, i32** %4, align 8
  %443 = call i32* @cap_clone(i32* %442)
  store i32* %443, i32** %3, align 8
  %444 = load i32*, i32** %3, align 8
  %445 = icmp ne i32* %444, null
  %446 = zext i1 %445 to i32
  %447 = call i32 @CHECK(i32 %446)
  %448 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %448, align 16
  %449 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %449, align 8
  %450 = load i32*, i32** %3, align 8
  %451 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %452 = call i32 @cap_dns_type_limit(i32* %450, i8** %451, i32 2)
  %453 = icmp eq i32 %452, 0
  %454 = zext i1 %453 to i32
  %455 = call i32 @CHECK(i32 %454)
  %456 = load i32, i32* @AF_INET, align 4
  %457 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %456, i32* %457, align 4
  %458 = load i32, i32* @AF_INET6, align 4
  %459 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %458, i32* %459, align 4
  %460 = load i32*, i32** %3, align 8
  %461 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %462 = call i32 @cap_dns_family_limit(i32* %460, i32* %461, i32 2)
  %463 = icmp eq i32 %462, 0
  %464 = zext i1 %463 to i32
  %465 = call i32 @CHECK(i32 %464)
  %466 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %466, align 16
  %467 = load i32*, i32** %3, align 8
  %468 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %469 = call i32 @cap_dns_type_limit(i32* %467, i8** %468, i32 1)
  %470 = icmp eq i32 %469, 0
  %471 = zext i1 %470 to i32
  %472 = call i32 @CHECK(i32 %471)
  %473 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %473, align 8
  %474 = load i32*, i32** %3, align 8
  %475 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %476 = call i32 @cap_dns_type_limit(i32* %474, i8** %475, i32 2)
  %477 = icmp eq i32 %476, -1
  br i1 %477, label %478, label %482

478:                                              ; preds = %426
  %479 = load i64, i64* @errno, align 8
  %480 = load i64, i64* @ENOTCAPABLE, align 8
  %481 = icmp eq i64 %479, %480
  br label %482

482:                                              ; preds = %478, %426
  %483 = phi i1 [ false, %426 ], [ %481, %478 ]
  %484 = zext i1 %483 to i32
  %485 = call i32 @CHECK(i32 %484)
  %486 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %486, align 16
  %487 = load i32*, i32** %3, align 8
  %488 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %489 = call i32 @cap_dns_type_limit(i32* %487, i8** %488, i32 1)
  %490 = icmp eq i32 %489, -1
  br i1 %490, label %491, label %495

491:                                              ; preds = %482
  %492 = load i64, i64* @errno, align 8
  %493 = load i64, i64* @ENOTCAPABLE, align 8
  %494 = icmp eq i64 %492, %493
  br label %495

495:                                              ; preds = %491, %482
  %496 = phi i1 [ false, %482 ], [ %494, %491 ]
  %497 = zext i1 %496 to i32
  %498 = call i32 @CHECK(i32 %497)
  %499 = load i32, i32* @AF_INET6, align 4
  %500 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %499, i32* %500, align 4
  %501 = load i32*, i32** %3, align 8
  %502 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %503 = call i32 @cap_dns_family_limit(i32* %501, i32* %502, i32 1)
  %504 = icmp eq i32 %503, 0
  %505 = zext i1 %504 to i32
  %506 = call i32 @CHECK(i32 %505)
  %507 = load i32, i32* @AF_INET, align 4
  %508 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %507, i32* %508, align 4
  %509 = load i32*, i32** %3, align 8
  %510 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %511 = call i32 @cap_dns_family_limit(i32* %509, i32* %510, i32 2)
  %512 = icmp eq i32 %511, -1
  br i1 %512, label %513, label %517

513:                                              ; preds = %495
  %514 = load i64, i64* @errno, align 8
  %515 = load i64, i64* @ENOTCAPABLE, align 8
  %516 = icmp eq i64 %514, %515
  br label %517

517:                                              ; preds = %513, %495
  %518 = phi i1 [ false, %495 ], [ %516, %513 ]
  %519 = zext i1 %518 to i32
  %520 = call i32 @CHECK(i32 %519)
  %521 = load i32, i32* @AF_INET, align 4
  %522 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %521, i32* %522, align 4
  %523 = load i32*, i32** %3, align 8
  %524 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %525 = call i32 @cap_dns_family_limit(i32* %523, i32* %524, i32 1)
  %526 = icmp eq i32 %525, -1
  br i1 %526, label %527, label %531

527:                                              ; preds = %517
  %528 = load i64, i64* @errno, align 8
  %529 = load i64, i64* @ENOTCAPABLE, align 8
  %530 = icmp eq i64 %528, %529
  br label %531

531:                                              ; preds = %527, %517
  %532 = phi i1 [ false, %517 ], [ %530, %527 ]
  %533 = zext i1 %532 to i32
  %534 = call i32 @CHECK(i32 %533)
  %535 = load i32*, i32** %3, align 8
  %536 = call i32 @runtest(i32* %535)
  %537 = load i32, i32* @GETHOSTBYNAME2_AF_INET6, align 4
  %538 = load i32, i32* @GETADDRINFO_AF_INET6, align 4
  %539 = or i32 %537, %538
  %540 = icmp eq i32 %536, %539
  %541 = zext i1 %540 to i32
  %542 = call i32 @CHECK(i32 %541)
  %543 = load i32*, i32** %3, align 8
  %544 = call i32 @cap_close(i32* %543)
  %545 = load i32*, i32** %4, align 8
  %546 = call i32* @cap_clone(i32* %545)
  store i32* %546, i32** %3, align 8
  %547 = load i32*, i32** %3, align 8
  %548 = icmp ne i32* %547, null
  %549 = zext i1 %548 to i32
  %550 = call i32 @CHECK(i32 %549)
  %551 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %551, align 16
  %552 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %552, align 8
  %553 = load i32*, i32** %3, align 8
  %554 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %555 = call i32 @cap_dns_type_limit(i32* %553, i8** %554, i32 2)
  %556 = icmp eq i32 %555, 0
  %557 = zext i1 %556 to i32
  %558 = call i32 @CHECK(i32 %557)
  %559 = load i32, i32* @AF_INET, align 4
  %560 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %559, i32* %560, align 4
  %561 = load i32, i32* @AF_INET6, align 4
  %562 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %561, i32* %562, align 4
  %563 = load i32*, i32** %3, align 8
  %564 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %565 = call i32 @cap_dns_family_limit(i32* %563, i32* %564, i32 2)
  %566 = icmp eq i32 %565, 0
  %567 = zext i1 %566 to i32
  %568 = call i32 @CHECK(i32 %567)
  %569 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %569, align 16
  %570 = load i32*, i32** %3, align 8
  %571 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %572 = call i32 @cap_dns_type_limit(i32* %570, i8** %571, i32 1)
  %573 = icmp eq i32 %572, 0
  %574 = zext i1 %573 to i32
  %575 = call i32 @CHECK(i32 %574)
  %576 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %576, align 8
  %577 = load i32*, i32** %3, align 8
  %578 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %579 = call i32 @cap_dns_type_limit(i32* %577, i8** %578, i32 2)
  %580 = icmp eq i32 %579, -1
  br i1 %580, label %581, label %585

581:                                              ; preds = %531
  %582 = load i64, i64* @errno, align 8
  %583 = load i64, i64* @ENOTCAPABLE, align 8
  %584 = icmp eq i64 %582, %583
  br label %585

585:                                              ; preds = %581, %531
  %586 = phi i1 [ false, %531 ], [ %584, %581 ]
  %587 = zext i1 %586 to i32
  %588 = call i32 @CHECK(i32 %587)
  %589 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %589, align 16
  %590 = load i32*, i32** %3, align 8
  %591 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %592 = call i32 @cap_dns_type_limit(i32* %590, i8** %591, i32 1)
  %593 = icmp eq i32 %592, -1
  br i1 %593, label %594, label %598

594:                                              ; preds = %585
  %595 = load i64, i64* @errno, align 8
  %596 = load i64, i64* @ENOTCAPABLE, align 8
  %597 = icmp eq i64 %595, %596
  br label %598

598:                                              ; preds = %594, %585
  %599 = phi i1 [ false, %585 ], [ %597, %594 ]
  %600 = zext i1 %599 to i32
  %601 = call i32 @CHECK(i32 %600)
  %602 = load i32, i32* @AF_INET, align 4
  %603 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %602, i32* %603, align 4
  %604 = load i32*, i32** %3, align 8
  %605 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %606 = call i32 @cap_dns_family_limit(i32* %604, i32* %605, i32 1)
  %607 = icmp eq i32 %606, 0
  %608 = zext i1 %607 to i32
  %609 = call i32 @CHECK(i32 %608)
  %610 = load i32, i32* @AF_INET6, align 4
  %611 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %610, i32* %611, align 4
  %612 = load i32*, i32** %3, align 8
  %613 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %614 = call i32 @cap_dns_family_limit(i32* %612, i32* %613, i32 2)
  %615 = icmp eq i32 %614, -1
  br i1 %615, label %616, label %620

616:                                              ; preds = %598
  %617 = load i64, i64* @errno, align 8
  %618 = load i64, i64* @ENOTCAPABLE, align 8
  %619 = icmp eq i64 %617, %618
  br label %620

620:                                              ; preds = %616, %598
  %621 = phi i1 [ false, %598 ], [ %619, %616 ]
  %622 = zext i1 %621 to i32
  %623 = call i32 @CHECK(i32 %622)
  %624 = load i32, i32* @AF_INET6, align 4
  %625 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %624, i32* %625, align 4
  %626 = load i32*, i32** %3, align 8
  %627 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %628 = call i32 @cap_dns_family_limit(i32* %626, i32* %627, i32 1)
  %629 = icmp eq i32 %628, -1
  br i1 %629, label %630, label %634

630:                                              ; preds = %620
  %631 = load i64, i64* @errno, align 8
  %632 = load i64, i64* @ENOTCAPABLE, align 8
  %633 = icmp eq i64 %631, %632
  br label %634

634:                                              ; preds = %630, %620
  %635 = phi i1 [ false, %620 ], [ %633, %630 ]
  %636 = zext i1 %635 to i32
  %637 = call i32 @CHECK(i32 %636)
  %638 = load i32*, i32** %3, align 8
  %639 = call i32 @runtest(i32* %638)
  %640 = load i32, i32* @GETHOSTBYADDR_AF_INET, align 4
  %641 = icmp eq i32 %639, %640
  %642 = zext i1 %641 to i32
  %643 = call i32 @CHECK(i32 %642)
  %644 = load i32*, i32** %3, align 8
  %645 = call i32 @cap_close(i32* %644)
  %646 = load i32*, i32** %4, align 8
  %647 = call i32* @cap_clone(i32* %646)
  store i32* %647, i32** %3, align 8
  %648 = load i32*, i32** %3, align 8
  %649 = icmp ne i32* %648, null
  %650 = zext i1 %649 to i32
  %651 = call i32 @CHECK(i32 %650)
  %652 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %652, align 16
  %653 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %653, align 8
  %654 = load i32*, i32** %3, align 8
  %655 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %656 = call i32 @cap_dns_type_limit(i32* %654, i8** %655, i32 2)
  %657 = icmp eq i32 %656, 0
  %658 = zext i1 %657 to i32
  %659 = call i32 @CHECK(i32 %658)
  %660 = load i32, i32* @AF_INET, align 4
  %661 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %660, i32* %661, align 4
  %662 = load i32, i32* @AF_INET6, align 4
  %663 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %662, i32* %663, align 4
  %664 = load i32*, i32** %3, align 8
  %665 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %666 = call i32 @cap_dns_family_limit(i32* %664, i32* %665, i32 2)
  %667 = icmp eq i32 %666, 0
  %668 = zext i1 %667 to i32
  %669 = call i32 @CHECK(i32 %668)
  %670 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %670, align 16
  %671 = load i32*, i32** %3, align 8
  %672 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %673 = call i32 @cap_dns_type_limit(i32* %671, i8** %672, i32 1)
  %674 = icmp eq i32 %673, 0
  %675 = zext i1 %674 to i32
  %676 = call i32 @CHECK(i32 %675)
  %677 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %677, align 8
  %678 = load i32*, i32** %3, align 8
  %679 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %680 = call i32 @cap_dns_type_limit(i32* %678, i8** %679, i32 2)
  %681 = icmp eq i32 %680, -1
  br i1 %681, label %682, label %686

682:                                              ; preds = %634
  %683 = load i64, i64* @errno, align 8
  %684 = load i64, i64* @ENOTCAPABLE, align 8
  %685 = icmp eq i64 %683, %684
  br label %686

686:                                              ; preds = %682, %634
  %687 = phi i1 [ false, %634 ], [ %685, %682 ]
  %688 = zext i1 %687 to i32
  %689 = call i32 @CHECK(i32 %688)
  %690 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %690, align 16
  %691 = load i32*, i32** %3, align 8
  %692 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %693 = call i32 @cap_dns_type_limit(i32* %691, i8** %692, i32 1)
  %694 = icmp eq i32 %693, -1
  br i1 %694, label %695, label %699

695:                                              ; preds = %686
  %696 = load i64, i64* @errno, align 8
  %697 = load i64, i64* @ENOTCAPABLE, align 8
  %698 = icmp eq i64 %696, %697
  br label %699

699:                                              ; preds = %695, %686
  %700 = phi i1 [ false, %686 ], [ %698, %695 ]
  %701 = zext i1 %700 to i32
  %702 = call i32 @CHECK(i32 %701)
  %703 = load i32, i32* @AF_INET6, align 4
  %704 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %703, i32* %704, align 4
  %705 = load i32*, i32** %3, align 8
  %706 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %707 = call i32 @cap_dns_family_limit(i32* %705, i32* %706, i32 1)
  %708 = icmp eq i32 %707, 0
  %709 = zext i1 %708 to i32
  %710 = call i32 @CHECK(i32 %709)
  %711 = load i32, i32* @AF_INET, align 4
  %712 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %711, i32* %712, align 4
  %713 = load i32*, i32** %3, align 8
  %714 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %715 = call i32 @cap_dns_family_limit(i32* %713, i32* %714, i32 2)
  %716 = icmp eq i32 %715, -1
  br i1 %716, label %717, label %721

717:                                              ; preds = %699
  %718 = load i64, i64* @errno, align 8
  %719 = load i64, i64* @ENOTCAPABLE, align 8
  %720 = icmp eq i64 %718, %719
  br label %721

721:                                              ; preds = %717, %699
  %722 = phi i1 [ false, %699 ], [ %720, %717 ]
  %723 = zext i1 %722 to i32
  %724 = call i32 @CHECK(i32 %723)
  %725 = load i32, i32* @AF_INET, align 4
  %726 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %725, i32* %726, align 4
  %727 = load i32*, i32** %3, align 8
  %728 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %729 = call i32 @cap_dns_family_limit(i32* %727, i32* %728, i32 1)
  %730 = icmp eq i32 %729, -1
  br i1 %730, label %731, label %735

731:                                              ; preds = %721
  %732 = load i64, i64* @errno, align 8
  %733 = load i64, i64* @ENOTCAPABLE, align 8
  %734 = icmp eq i64 %732, %733
  br label %735

735:                                              ; preds = %731, %721
  %736 = phi i1 [ false, %721 ], [ %734, %731 ]
  %737 = zext i1 %736 to i32
  %738 = call i32 @CHECK(i32 %737)
  %739 = load i32*, i32** %3, align 8
  %740 = call i32 @runtest(i32* %739)
  %741 = load i32, i32* @GETHOSTBYADDR_AF_INET6, align 4
  %742 = icmp eq i32 %740, %741
  %743 = zext i1 %742 to i32
  %744 = call i32 @CHECK(i32 %743)
  %745 = load i32*, i32** %3, align 8
  %746 = call i32 @cap_close(i32* %745)
  %747 = load i32*, i32** %4, align 8
  %748 = call i32* @cap_clone(i32* %747)
  store i32* %748, i32** %3, align 8
  %749 = load i32*, i32** %3, align 8
  %750 = icmp ne i32* %749, null
  %751 = zext i1 %750 to i32
  %752 = call i32 @CHECK(i32 %751)
  %753 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %753, align 16
  %754 = load i32*, i32** %3, align 8
  %755 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %756 = call i32 @cap_dns_type_limit(i32* %754, i8** %755, i32 1)
  %757 = icmp eq i32 %756, 0
  %758 = zext i1 %757 to i32
  %759 = call i32 @CHECK(i32 %758)
  %760 = load i32, i32* @AF_INET, align 4
  %761 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %760, i32* %761, align 4
  %762 = load i32*, i32** %3, align 8
  %763 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %764 = call i32 @cap_dns_family_limit(i32* %762, i32* %763, i32 1)
  %765 = icmp eq i32 %764, 0
  %766 = zext i1 %765 to i32
  %767 = call i32 @CHECK(i32 %766)
  %768 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %768, align 16
  %769 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %769, align 8
  %770 = load i32*, i32** %3, align 8
  %771 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %772 = call i32 @cap_dns_type_limit(i32* %770, i8** %771, i32 2)
  %773 = icmp eq i32 %772, -1
  br i1 %773, label %774, label %778

774:                                              ; preds = %735
  %775 = load i64, i64* @errno, align 8
  %776 = load i64, i64* @ENOTCAPABLE, align 8
  %777 = icmp eq i64 %775, %776
  br label %778

778:                                              ; preds = %774, %735
  %779 = phi i1 [ false, %735 ], [ %777, %774 ]
  %780 = zext i1 %779 to i32
  %781 = call i32 @CHECK(i32 %780)
  %782 = load i32, i32* @AF_INET, align 4
  %783 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %782, i32* %783, align 4
  %784 = load i32, i32* @AF_INET6, align 4
  %785 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %784, i32* %785, align 4
  %786 = load i32*, i32** %3, align 8
  %787 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %788 = call i32 @cap_dns_family_limit(i32* %786, i32* %787, i32 2)
  %789 = icmp eq i32 %788, -1
  br i1 %789, label %790, label %794

790:                                              ; preds = %778
  %791 = load i64, i64* @errno, align 8
  %792 = load i64, i64* @ENOTCAPABLE, align 8
  %793 = icmp eq i64 %791, %792
  br label %794

794:                                              ; preds = %790, %778
  %795 = phi i1 [ false, %778 ], [ %793, %790 ]
  %796 = zext i1 %795 to i32
  %797 = call i32 @CHECK(i32 %796)
  %798 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %798, align 16
  %799 = load i32*, i32** %3, align 8
  %800 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %801 = call i32 @cap_dns_type_limit(i32* %799, i8** %800, i32 1)
  %802 = icmp eq i32 %801, -1
  br i1 %802, label %803, label %807

803:                                              ; preds = %794
  %804 = load i64, i64* @errno, align 8
  %805 = load i64, i64* @ENOTCAPABLE, align 8
  %806 = icmp eq i64 %804, %805
  br label %807

807:                                              ; preds = %803, %794
  %808 = phi i1 [ false, %794 ], [ %806, %803 ]
  %809 = zext i1 %808 to i32
  %810 = call i32 @CHECK(i32 %809)
  %811 = load i32, i32* @AF_INET6, align 4
  %812 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %811, i32* %812, align 4
  %813 = load i32*, i32** %3, align 8
  %814 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %815 = call i32 @cap_dns_family_limit(i32* %813, i32* %814, i32 1)
  %816 = icmp eq i32 %815, -1
  br i1 %816, label %817, label %821

817:                                              ; preds = %807
  %818 = load i64, i64* @errno, align 8
  %819 = load i64, i64* @ENOTCAPABLE, align 8
  %820 = icmp eq i64 %818, %819
  br label %821

821:                                              ; preds = %817, %807
  %822 = phi i1 [ false, %807 ], [ %820, %817 ]
  %823 = zext i1 %822 to i32
  %824 = call i32 @CHECK(i32 %823)
  %825 = load i32*, i32** %3, align 8
  %826 = call i32 @cap_dns_type_limit(i32* %825, i8** null, i32 0)
  %827 = icmp eq i32 %826, -1
  br i1 %827, label %828, label %832

828:                                              ; preds = %821
  %829 = load i64, i64* @errno, align 8
  %830 = load i64, i64* @ENOTCAPABLE, align 8
  %831 = icmp eq i64 %829, %830
  br label %832

832:                                              ; preds = %828, %821
  %833 = phi i1 [ false, %821 ], [ %831, %828 ]
  %834 = zext i1 %833 to i32
  %835 = call i32 @CHECK(i32 %834)
  %836 = load i32*, i32** %3, align 8
  %837 = call i32 @cap_dns_family_limit(i32* %836, i32* null, i32 0)
  %838 = icmp eq i32 %837, -1
  br i1 %838, label %839, label %843

839:                                              ; preds = %832
  %840 = load i64, i64* @errno, align 8
  %841 = load i64, i64* @ENOTCAPABLE, align 8
  %842 = icmp eq i64 %840, %841
  br label %843

843:                                              ; preds = %839, %832
  %844 = phi i1 [ false, %832 ], [ %842, %839 ]
  %845 = zext i1 %844 to i32
  %846 = call i32 @CHECK(i32 %845)
  %847 = load i32*, i32** %3, align 8
  %848 = call i32 @runtest(i32* %847)
  %849 = load i32, i32* @GETHOSTBYNAME, align 4
  %850 = load i32, i32* @GETHOSTBYNAME2_AF_INET, align 4
  %851 = or i32 %849, %850
  %852 = load i32, i32* @GETADDRINFO_AF_INET, align 4
  %853 = or i32 %851, %852
  %854 = icmp eq i32 %848, %853
  %855 = zext i1 %854 to i32
  %856 = call i32 @CHECK(i32 %855)
  %857 = load i32*, i32** %3, align 8
  %858 = call i32 @cap_close(i32* %857)
  %859 = load i32*, i32** %4, align 8
  %860 = call i32* @cap_clone(i32* %859)
  store i32* %860, i32** %3, align 8
  %861 = load i32*, i32** %3, align 8
  %862 = icmp ne i32* %861, null
  %863 = zext i1 %862 to i32
  %864 = call i32 @CHECK(i32 %863)
  %865 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %865, align 16
  %866 = load i32*, i32** %3, align 8
  %867 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %868 = call i32 @cap_dns_type_limit(i32* %866, i8** %867, i32 1)
  %869 = icmp eq i32 %868, 0
  %870 = zext i1 %869 to i32
  %871 = call i32 @CHECK(i32 %870)
  %872 = load i32, i32* @AF_INET6, align 4
  %873 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %872, i32* %873, align 4
  %874 = load i32*, i32** %3, align 8
  %875 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %876 = call i32 @cap_dns_family_limit(i32* %874, i32* %875, i32 1)
  %877 = icmp eq i32 %876, 0
  %878 = zext i1 %877 to i32
  %879 = call i32 @CHECK(i32 %878)
  %880 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %880, align 16
  %881 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %881, align 8
  %882 = load i32*, i32** %3, align 8
  %883 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %884 = call i32 @cap_dns_type_limit(i32* %882, i8** %883, i32 2)
  %885 = icmp eq i32 %884, -1
  br i1 %885, label %886, label %890

886:                                              ; preds = %843
  %887 = load i64, i64* @errno, align 8
  %888 = load i64, i64* @ENOTCAPABLE, align 8
  %889 = icmp eq i64 %887, %888
  br label %890

890:                                              ; preds = %886, %843
  %891 = phi i1 [ false, %843 ], [ %889, %886 ]
  %892 = zext i1 %891 to i32
  %893 = call i32 @CHECK(i32 %892)
  %894 = load i32, i32* @AF_INET, align 4
  %895 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %894, i32* %895, align 4
  %896 = load i32, i32* @AF_INET6, align 4
  %897 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %896, i32* %897, align 4
  %898 = load i32*, i32** %3, align 8
  %899 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %900 = call i32 @cap_dns_family_limit(i32* %898, i32* %899, i32 2)
  %901 = icmp eq i32 %900, -1
  br i1 %901, label %902, label %906

902:                                              ; preds = %890
  %903 = load i64, i64* @errno, align 8
  %904 = load i64, i64* @ENOTCAPABLE, align 8
  %905 = icmp eq i64 %903, %904
  br label %906

906:                                              ; preds = %902, %890
  %907 = phi i1 [ false, %890 ], [ %905, %902 ]
  %908 = zext i1 %907 to i32
  %909 = call i32 @CHECK(i32 %908)
  %910 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %910, align 16
  %911 = load i32*, i32** %3, align 8
  %912 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %913 = call i32 @cap_dns_type_limit(i32* %911, i8** %912, i32 1)
  %914 = icmp eq i32 %913, -1
  br i1 %914, label %915, label %919

915:                                              ; preds = %906
  %916 = load i64, i64* @errno, align 8
  %917 = load i64, i64* @ENOTCAPABLE, align 8
  %918 = icmp eq i64 %916, %917
  br label %919

919:                                              ; preds = %915, %906
  %920 = phi i1 [ false, %906 ], [ %918, %915 ]
  %921 = zext i1 %920 to i32
  %922 = call i32 @CHECK(i32 %921)
  %923 = load i32, i32* @AF_INET, align 4
  %924 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %923, i32* %924, align 4
  %925 = load i32*, i32** %3, align 8
  %926 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %927 = call i32 @cap_dns_family_limit(i32* %925, i32* %926, i32 1)
  %928 = icmp eq i32 %927, -1
  br i1 %928, label %929, label %933

929:                                              ; preds = %919
  %930 = load i64, i64* @errno, align 8
  %931 = load i64, i64* @ENOTCAPABLE, align 8
  %932 = icmp eq i64 %930, %931
  br label %933

933:                                              ; preds = %929, %919
  %934 = phi i1 [ false, %919 ], [ %932, %929 ]
  %935 = zext i1 %934 to i32
  %936 = call i32 @CHECK(i32 %935)
  %937 = load i32*, i32** %3, align 8
  %938 = call i32 @cap_dns_type_limit(i32* %937, i8** null, i32 0)
  %939 = icmp eq i32 %938, -1
  br i1 %939, label %940, label %944

940:                                              ; preds = %933
  %941 = load i64, i64* @errno, align 8
  %942 = load i64, i64* @ENOTCAPABLE, align 8
  %943 = icmp eq i64 %941, %942
  br label %944

944:                                              ; preds = %940, %933
  %945 = phi i1 [ false, %933 ], [ %943, %940 ]
  %946 = zext i1 %945 to i32
  %947 = call i32 @CHECK(i32 %946)
  %948 = load i32*, i32** %3, align 8
  %949 = call i32 @cap_dns_family_limit(i32* %948, i32* null, i32 0)
  %950 = icmp eq i32 %949, -1
  br i1 %950, label %951, label %955

951:                                              ; preds = %944
  %952 = load i64, i64* @errno, align 8
  %953 = load i64, i64* @ENOTCAPABLE, align 8
  %954 = icmp eq i64 %952, %953
  br label %955

955:                                              ; preds = %951, %944
  %956 = phi i1 [ false, %944 ], [ %954, %951 ]
  %957 = zext i1 %956 to i32
  %958 = call i32 @CHECK(i32 %957)
  %959 = load i32*, i32** %3, align 8
  %960 = call i32 @runtest(i32* %959)
  %961 = load i32, i32* @GETHOSTBYADDR_AF_INET6, align 4
  %962 = icmp eq i32 %960, %961
  %963 = zext i1 %962 to i32
  %964 = call i32 @CHECK(i32 %963)
  %965 = load i32*, i32** %3, align 8
  %966 = call i32 @cap_close(i32* %965)
  %967 = load i32*, i32** %4, align 8
  %968 = call i32 @cap_close(i32* %967)
  %969 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @cap_init(...) #1

declare dso_local i32 @CHECKX(i32) #1

declare dso_local i32* @cap_service_open(i32*, i8*) #1

declare dso_local i32 @cap_close(i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @runtest(i32*) #1

declare dso_local i32* @cap_clone(i32*) #1

declare dso_local i32 @cap_dns_type_limit(i32*, i8**, i32) #1

declare dso_local i32 @cap_dns_family_limit(i32*, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
