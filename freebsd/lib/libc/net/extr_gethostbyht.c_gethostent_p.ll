; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostbyht.c_gethostent_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostbyht.c_gethostent_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8**, i32, i32, i8*, i8** }
%struct.hostent_data = type { i8**, i8*, i8**, i64, i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@_PATH_HOSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@NETDB_INTERNAL = common dso_local global i32 0, align 4
@HOST_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@IN6ADDRSZ = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDRSZ = common dso_local global i32 0, align 4
@NO_RECOVERY = common dso_local global i32 0, align 4
@_MAXALIASES = common dso_local global i32 0, align 4
@NETDB_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostent*, %struct.hostent_data*, i32, i32)* @gethostent_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gethostent_p(%struct.hostent* %0, %struct.hostent_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.hostent_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %6, align 8
  store %struct.hostent_data* %1, %struct.hostent_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* @BUFSIZ, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %26 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @_PATH_HOSTS, align 4
  %31 = call i32 @fopen(i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %33 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = icmp ne i32 %31, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @NETDB_INTERNAL, align 4
  %38 = call i32 @RES_SET_H_ERRNO(i32 %36, i32 %37)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %280

39:                                               ; preds = %29, %4
  br label %40

40:                                               ; preds = %109, %68, %56, %39
  %41 = trunc i64 %22 to i32
  %42 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %43 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @fgets(i8* %24, i32 %41, i32 %44)
  store i8* %45, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @HOST_NOT_FOUND, align 4
  %50 = call i32 @RES_SET_H_ERRNO(i32 %48, i32 %49)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %280

51:                                               ; preds = %40
  %52 = load i8*, i8** %10, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 35
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %40

57:                                               ; preds = %51
  %58 = load i8*, i8** %10, align 8
  %59 = call i8* @strpbrk(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i8*, i8** %13, align 8
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i8*, i8** %10, align 8
  %66 = call i8* @strpbrk(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %66, i8** %13, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %40

69:                                               ; preds = %64
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %13, align 8
  store i8 0, i8* %70, align 1
  %72 = load i32, i32* @AF_INET6, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %75 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @inet_pton(i32 %72, i8* %73, i64 %76)
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* @AF_INET6, align 4
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* @IN6ADDRSZ, align 4
  store i32 %81, i32* %16, align 4
  br label %111

82:                                               ; preds = %69
  %83 = load i32, i32* @AF_INET, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %86 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @inet_pton(i32 %83, i8* %84, i64 %87)
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %82
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %95 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %99 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @_map_v4v6_address(i8* %97, i8* %101)
  %103 = load i32, i32* @AF_INET6, align 4
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* @IN6ADDRSZ, align 4
  store i32 %104, i32* %16, align 4
  br label %108

105:                                              ; preds = %90
  %106 = load i32, i32* @AF_INET, align 4
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* @INADDRSZ, align 4
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %105, %93
  br label %110

109:                                              ; preds = %82
  br label %40

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %110, %79
  %112 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %113 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %117 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  store i8* %115, i8** %119, align 8
  %120 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %121 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %120, i32 0, i32 0
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  store i8* null, i8** %123, align 8
  %124 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %125 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  %127 = load %struct.hostent*, %struct.hostent** %6, align 8
  %128 = getelementptr inbounds %struct.hostent, %struct.hostent* %127, i32 0, i32 0
  store i8** %126, i8*** %128, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.hostent*, %struct.hostent** %6, align 8
  %131 = getelementptr inbounds %struct.hostent, %struct.hostent* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.hostent*, %struct.hostent** %6, align 8
  %134 = getelementptr inbounds %struct.hostent, %struct.hostent* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %147, %111
  %136 = load i8*, i8** %13, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load i8*, i8** %13, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 9
  br label %145

145:                                              ; preds = %140, %135
  %146 = phi i1 [ true, %135 ], [ %144, %140 ]
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = load i8*, i8** %13, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %13, align 8
  br label %135

150:                                              ; preds = %145
  %151 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %152 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %11, align 8
  %154 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %155 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 8
  store i8* %157, i8** %12, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = load %struct.hostent*, %struct.hostent** %6, align 8
  %160 = getelementptr inbounds %struct.hostent, %struct.hostent* %159, i32 0, i32 3
  store i8* %158, i8** %160, align 8
  %161 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %162 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %161, i32 0, i32 2
  %163 = load i8**, i8*** %162, align 8
  %164 = load %struct.hostent*, %struct.hostent** %6, align 8
  %165 = getelementptr inbounds %struct.hostent, %struct.hostent* %164, i32 0, i32 4
  store i8** %163, i8*** %165, align 8
  store i8** %163, i8*** %14, align 8
  %166 = load i8*, i8** %13, align 8
  %167 = call i8* @strpbrk(i8* %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %167, i8** %10, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %150
  %170 = load i8*, i8** %10, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %10, align 8
  store i8 0, i8* %170, align 1
  br label %172

172:                                              ; preds = %169, %150
  %173 = load i8*, i8** %13, align 8
  %174 = call i32 @strlen(i8* %173)
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  %176 = load i8*, i8** %12, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = ptrtoint i8* %176 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = icmp slt i64 %180, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %172
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @NO_RECOVERY, align 4
  %187 = call i32 @RES_SET_H_ERRNO(i32 %185, i32 %186)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %280

188:                                              ; preds = %172
  %189 = load i8*, i8** %11, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = load i8*, i8** %11, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = call i32 @strlcpy(i8* %189, i8* %190, i32 %196)
  %198 = load i32, i32* %16, align 4
  %199 = load i8*, i8** %11, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %11, align 8
  %202 = load i8*, i8** %10, align 8
  store i8* %202, i8** %13, align 8
  br label %203

203:                                              ; preds = %257, %223, %188
  %204 = load i8*, i8** %13, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load i8*, i8** %13, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %209, 0
  br label %211

211:                                              ; preds = %206, %203
  %212 = phi i1 [ false, %203 ], [ %210, %206 ]
  br i1 %212, label %213, label %275

213:                                              ; preds = %211
  %214 = load i8*, i8** %13, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 32
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load i8*, i8** %13, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 9
  br i1 %222, label %223, label %226

223:                                              ; preds = %218, %213
  %224 = load i8*, i8** %13, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %13, align 8
  br label %203

226:                                              ; preds = %218
  %227 = load i8**, i8*** %14, align 8
  %228 = load %struct.hostent_data*, %struct.hostent_data** %7, align 8
  %229 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %228, i32 0, i32 2
  %230 = load i8**, i8*** %229, align 8
  %231 = load i32, i32* @_MAXALIASES, align 4
  %232 = sub nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %230, i64 %233
  %235 = icmp uge i8** %227, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %226
  br label %275

237:                                              ; preds = %226
  %238 = load i8*, i8** %13, align 8
  %239 = call i8* @strpbrk(i8* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %239, i8** %10, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i8*, i8** %10, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %10, align 8
  store i8 0, i8* %242, align 1
  br label %244

244:                                              ; preds = %241, %237
  %245 = load i8*, i8** %13, align 8
  %246 = call i32 @strlen(i8* %245)
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %16, align 4
  %248 = load i8*, i8** %12, align 8
  %249 = load i8*, i8** %11, align 8
  %250 = ptrtoint i8* %248 to i64
  %251 = ptrtoint i8* %249 to i64
  %252 = sub i64 %250, %251
  %253 = load i32, i32* %16, align 4
  %254 = sext i32 %253 to i64
  %255 = icmp slt i64 %252, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %244
  br label %275

257:                                              ; preds = %244
  %258 = load i8*, i8** %11, align 8
  %259 = load i8*, i8** %13, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = load i8*, i8** %11, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = trunc i64 %264 to i32
  %266 = call i32 @strlcpy(i8* %258, i8* %259, i32 %265)
  %267 = load i8*, i8** %11, align 8
  %268 = load i8**, i8*** %14, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i32 1
  store i8** %269, i8*** %14, align 8
  store i8* %267, i8** %268, align 8
  %270 = load i32, i32* %16, align 4
  %271 = load i8*, i8** %11, align 8
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  store i8* %273, i8** %11, align 8
  %274 = load i8*, i8** %10, align 8
  store i8* %274, i8** %13, align 8
  br label %203

275:                                              ; preds = %256, %236, %211
  %276 = load i8**, i8*** %14, align 8
  store i8* null, i8** %276, align 8
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* @NETDB_SUCCESS, align 4
  %279 = call i32 @RES_SET_H_ERRNO(i32 %277, i32 %278)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %280

280:                                              ; preds = %275, %184, %47, %35
  %281 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %281)
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fopen(i32, i8*) #2

declare dso_local i32 @RES_SET_H_ERRNO(i32, i32) #2

declare dso_local i8* @fgets(i8*, i32, i32) #2

declare dso_local i8* @strpbrk(i8*, i8*) #2

declare dso_local i64 @inet_pton(i32, i8*, i64) #2

declare dso_local i32 @_map_v4v6_address(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
