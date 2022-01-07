; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostbydns.c_gethostanswer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostbydns.c_gethostanswer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.hostent = type { i8*, i8**, i8**, i32 }
%struct.hostent_data = type { i8*, i8**, i8** }
%struct.TYPE_9__ = type { i32, i64 }

@MAXDNAME = common dso_local global i32 0, align 4
@NO_RECOVERY = common dso_local global i32 0, align 4
@HFIXEDSZ = common dso_local global i64 0, align 8
@QFIXEDSZ = common dso_local global i64 0, align 8
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@_dns_ttl_ = common dso_local global i32 0, align 4
@INT16SZ = common dso_local global i32 0, align 4
@INT32SZ = common dso_local global i32 0, align 4
@C_IN = common dso_local global i32 0, align 4
@T_CNAME = common dso_local global i32 0, align 4
@_MAXALIASES = common dso_local global i32 0, align 4
@T_SIG = common dso_local global i32 0, align 4
@ns_t_dname = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@LOG_AUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"gethostby*.gethostanswer: asked for \22%s %s %s\22, got type \22%s\22\00", align 1
@AskedForGot = common dso_local global i32 0, align 4
@RES_USE_INET6 = common dso_local global i32 0, align 4
@NETDB_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"size (%d) too big\0A\00", align 1
@_MAXADDRS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Too many addresses (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Impossible condition (type=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i8*, i32, %struct.hostent*, %struct.hostent_data*, %struct.TYPE_9__*)* @gethostanswer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gethostanswer(%struct.TYPE_10__* %0, i32 %1, i8* %2, i32 %3, %struct.hostent* %4, %struct.hostent_data* %5, %struct.TYPE_9__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hostent*, align 8
  %14 = alloca %struct.hostent_data*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32 (i8*)*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.hostent* %4, %struct.hostent** %13, align 8
  store %struct.hostent_data* %5, %struct.hostent_data** %14, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %15, align 8
  store i32 0, i32* %31, align 4
  %38 = load i32, i32* @MAXDNAME, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %32, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %33, align 8
  %42 = load i8*, i8** %11, align 8
  store i8* %42, i8** %34, align 8
  %43 = load %struct.hostent*, %struct.hostent** %13, align 8
  %44 = getelementptr inbounds %struct.hostent, %struct.hostent* %43, i32 0, i32 0
  store i8* null, i8** %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %19, align 8
  %51 = load i32, i32* %12, align 4
  switch i32 %51, label %54 [
    i32 130, label %52
    i32 129, label %52
    i32 128, label %53
  ]

52:                                               ; preds = %7, %7
  store i32 (i8*)* @res_hnok, i32 (i8*)** %35, align 8
  br label %58

53:                                               ; preds = %7
  store i32 (i8*)* @res_dnok, i32 (i8*)** %35, align 8
  br label %58

54:                                               ; preds = %7
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %56 = load i32, i32* @NO_RECOVERY, align 4
  %57 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %55, i32 %56)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

58:                                               ; preds = %53, %52
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %16, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohs(i32 %63)
  store i32 %64, i32* %27, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  store i32 %68, i32* %28, align 4
  %69 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %70 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %21, align 8
  %72 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %73 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 8
  store i8* %75, i8** %22, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %17, align 8
  %79 = load i64, i64* @HFIXEDSZ, align 8
  %80 = call i32 @BOUNDED_INCR(i64 %79)
  %81 = load i32, i32* %28, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %58
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %85 = load i32, i32* @NO_RECOVERY, align 4
  %86 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %84, i32 %85)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

87:                                               ; preds = %58
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32*, i32** %19, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = load i8*, i8** %21, align 8
  %94 = load i8*, i8** %22, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @dn_expand(i32* %90, i32* %91, i32* %92, i8* %93, i32 %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %87
  %104 = load i32 (i8*)*, i32 (i8*)** %35, align 8
  %105 = load i8*, i8** %21, align 8
  %106 = call i32 %104(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103, %87
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %110 = load i32, i32* @NO_RECOVERY, align 4
  %111 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %109, i32 %110)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

112:                                              ; preds = %103
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* @QFIXEDSZ, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @BOUNDED_INCR(i64 %116)
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 130
  br i1 %119, label %123, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 129
  br i1 %122, label %123, label %145

123:                                              ; preds = %120, %112
  %124 = load i8*, i8** %21, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %132 = load i32, i32* @NO_RECOVERY, align 4
  %133 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %131, i32 %132)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

134:                                              ; preds = %123
  %135 = load i8*, i8** %21, align 8
  %136 = load %struct.hostent*, %struct.hostent** %13, align 8
  %137 = getelementptr inbounds %struct.hostent, %struct.hostent* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i8*, i8** %21, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %21, align 8
  %142 = load %struct.hostent*, %struct.hostent** %13, align 8
  %143 = getelementptr inbounds %struct.hostent, %struct.hostent* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %11, align 8
  br label %145

145:                                              ; preds = %134, %120
  %146 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %147 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %146, i32 0, i32 1
  %148 = load i8**, i8*** %147, align 8
  store i8** %148, i8*** %23, align 8
  %149 = load i8**, i8*** %23, align 8
  store i8* null, i8** %149, align 8
  %150 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %151 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %150, i32 0, i32 1
  %152 = load i8**, i8*** %151, align 8
  %153 = load %struct.hostent*, %struct.hostent** %13, align 8
  %154 = getelementptr inbounds %struct.hostent, %struct.hostent* %153, i32 0, i32 1
  store i8** %152, i8*** %154, align 8
  %155 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %156 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %155, i32 0, i32 2
  %157 = load i8**, i8*** %156, align 8
  store i8** %157, i8*** %24, align 8
  %158 = load i8**, i8*** %24, align 8
  store i8* null, i8** %158, align 8
  %159 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %160 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %159, i32 0, i32 2
  %161 = load i8**, i8*** %160, align 8
  %162 = load %struct.hostent*, %struct.hostent** %13, align 8
  %163 = getelementptr inbounds %struct.hostent, %struct.hostent* %162, i32 0, i32 2
  store i8** %161, i8*** %163, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 -1, i32* @_dns_ttl_, align 4
  br label %164

164:                                              ; preds = %649, %608, %584, %551, %529, %453, %441, %407, %404, %374, %344, %341, %319, %294, %279, %254, %199, %145
  %165 = load i32, i32* %27, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %27, align 4
  %167 = icmp sgt i32 %165, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load i32*, i32** %17, align 8
  %170 = load i32*, i32** %19, align 8
  %171 = icmp ult i32* %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32, i32* %30, align 4
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  br label %176

176:                                              ; preds = %172, %168, %164
  %177 = phi i1 [ false, %168 ], [ false, %164 ], [ %175, %172 ]
  br i1 %177, label %178, label %650

178:                                              ; preds = %176
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32*, i32** %19, align 8
  %183 = load i32*, i32** %17, align 8
  %184 = load i8*, i8** %21, align 8
  %185 = load i8*, i8** %22, align 8
  %186 = load i8*, i8** %21, align 8
  %187 = ptrtoint i8* %185 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = trunc i64 %189 to i32
  %191 = call i32 @dn_expand(i32* %181, i32* %182, i32* %183, i8* %184, i32 %190)
  store i32 %191, i32* %18, align 4
  %192 = load i32, i32* %18, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %178
  %195 = load i32 (i8*)*, i32 (i8*)** %35, align 8
  %196 = load i8*, i8** %21, align 8
  %197 = call i32 %195(i8* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %194, %178
  %200 = load i32, i32* %30, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %30, align 4
  br label %164

202:                                              ; preds = %194
  %203 = load i32, i32* %18, align 4
  %204 = load i32*, i32** %17, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32* %206, i32** %17, align 8
  %207 = load i32*, i32** %17, align 8
  %208 = load i32, i32* @INT16SZ, align 4
  %209 = mul nsw i32 3, %208
  %210 = load i32, i32* @INT32SZ, align 4
  %211 = add nsw i32 %209, %210
  %212 = call i32 @BOUNDS_CHECK(i32* %207, i32 %211)
  %213 = load i32*, i32** %17, align 8
  %214 = call i32 @_getshort(i32* %213)
  store i32 %214, i32* %25, align 4
  %215 = load i32, i32* @INT16SZ, align 4
  %216 = load i32*, i32** %17, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %17, align 8
  %219 = load i32*, i32** %17, align 8
  %220 = call i32 @_getshort(i32* %219)
  store i32 %220, i32* %26, align 4
  %221 = load i32, i32* @INT16SZ, align 4
  %222 = load i32*, i32** %17, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %17, align 8
  %225 = load i32, i32* %12, align 4
  %226 = icmp eq i32 %225, 130
  br i1 %226, label %227, label %233

227:                                              ; preds = %202
  %228 = load i32, i32* %25, align 4
  %229 = icmp eq i32 %228, 130
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i32*, i32** %17, align 8
  %232 = call i32 @_getlong(i32* %231)
  store i32 %232, i32* @_dns_ttl_, align 4
  br label %233

233:                                              ; preds = %230, %227, %202
  %234 = load i32, i32* @INT32SZ, align 4
  %235 = load i32*, i32** %17, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32* %237, i32** %17, align 8
  %238 = load i32*, i32** %17, align 8
  %239 = call i32 @_getshort(i32* %238)
  store i32 %239, i32* %18, align 4
  %240 = load i32, i32* @INT16SZ, align 4
  %241 = load i32*, i32** %17, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32* %243, i32** %17, align 8
  %244 = load i32*, i32** %17, align 8
  %245 = load i32, i32* %18, align 4
  %246 = call i32 @BOUNDS_CHECK(i32* %244, i32 %245)
  %247 = load i32*, i32** %17, align 8
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32* %250, i32** %20, align 8
  %251 = load i32, i32* %26, align 4
  %252 = load i32, i32* @C_IN, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %233
  %255 = load i32, i32* %18, align 4
  %256 = load i32*, i32** %17, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32* %258, i32** %17, align 8
  br label %164

259:                                              ; preds = %233
  %260 = load i32, i32* %12, align 4
  %261 = icmp eq i32 %260, 130
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %12, align 4
  %264 = icmp eq i32 %263, 129
  br i1 %264, label %265, label %354

265:                                              ; preds = %262, %259
  %266 = load i32, i32* %25, align 4
  %267 = load i32, i32* @T_CNAME, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %354

269:                                              ; preds = %265
  %270 = load i8**, i8*** %23, align 8
  %271 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %272 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %271, i32 0, i32 1
  %273 = load i8**, i8*** %272, align 8
  %274 = load i32, i32* @_MAXALIASES, align 4
  %275 = sub nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %273, i64 %276
  %278 = icmp uge i8** %270, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %269
  br label %164

280:                                              ; preds = %269
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = load i32*, i32** %19, align 8
  %285 = load i32*, i32** %17, align 8
  %286 = trunc i64 %39 to i32
  %287 = call i32 @dn_expand(i32* %283, i32* %284, i32* %285, i8* %41, i32 %286)
  store i32 %287, i32* %18, align 4
  %288 = load i32, i32* %18, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %294, label %290

290:                                              ; preds = %280
  %291 = load i32 (i8*)*, i32 (i8*)** %35, align 8
  %292 = call i32 %291(i8* %41)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %290, %280
  %295 = load i32, i32* %30, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %30, align 4
  br label %164

297:                                              ; preds = %290
  %298 = load i32, i32* %18, align 4
  %299 = load i32*, i32** %17, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32* %301, i32** %17, align 8
  %302 = load i32*, i32** %17, align 8
  %303 = load i32*, i32** %20, align 8
  %304 = icmp ne i32* %302, %303
  br i1 %304, label %305, label %309

305:                                              ; preds = %297
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %307 = load i32, i32* @NO_RECOVERY, align 4
  %308 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %306, i32 %307)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

309:                                              ; preds = %297
  %310 = load i8*, i8** %21, align 8
  %311 = load i8**, i8*** %23, align 8
  %312 = getelementptr inbounds i8*, i8** %311, i32 1
  store i8** %312, i8*** %23, align 8
  store i8* %310, i8** %311, align 8
  %313 = load i8*, i8** %21, align 8
  %314 = call i32 @strlen(i8* %313)
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %18, align 4
  %316 = load i32, i32* %18, align 4
  %317 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %318 = icmp sge i32 %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %309
  %320 = load i32, i32* %30, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %30, align 4
  br label %164

322:                                              ; preds = %309
  %323 = load i32, i32* %18, align 4
  %324 = load i8*, i8** %21, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i8, i8* %324, i64 %325
  store i8* %326, i8** %21, align 8
  %327 = call i32 @strlen(i8* %41)
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %18, align 4
  %329 = load i32, i32* %18, align 4
  %330 = sext i32 %329 to i64
  %331 = load i8*, i8** %22, align 8
  %332 = load i8*, i8** %21, align 8
  %333 = ptrtoint i8* %331 to i64
  %334 = ptrtoint i8* %332 to i64
  %335 = sub i64 %333, %334
  %336 = icmp sgt i64 %330, %335
  br i1 %336, label %341, label %337

337:                                              ; preds = %322
  %338 = load i32, i32* %18, align 4
  %339 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %340 = icmp sge i32 %338, %339
  br i1 %340, label %341, label %344

341:                                              ; preds = %337, %322
  %342 = load i32, i32* %30, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %30, align 4
  br label %164

344:                                              ; preds = %337
  %345 = load i8*, i8** %21, align 8
  %346 = call i32 @strcpy(i8* %345, i8* %41)
  %347 = load i8*, i8** %21, align 8
  %348 = load %struct.hostent*, %struct.hostent** %13, align 8
  %349 = getelementptr inbounds %struct.hostent, %struct.hostent* %348, i32 0, i32 0
  store i8* %347, i8** %349, align 8
  %350 = load i32, i32* %18, align 4
  %351 = load i8*, i8** %21, align 8
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i8, i8* %351, i64 %352
  store i8* %353, i8** %21, align 8
  br label %164

354:                                              ; preds = %265, %262
  %355 = load i32, i32* %12, align 4
  %356 = icmp eq i32 %355, 128
  br i1 %356, label %357, label %415

357:                                              ; preds = %354
  %358 = load i32, i32* %25, align 4
  %359 = load i32, i32* @T_CNAME, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %415

361:                                              ; preds = %357
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = load i32*, i32** %19, align 8
  %366 = load i32*, i32** %17, align 8
  %367 = trunc i64 %39 to i32
  %368 = call i32 @dn_expand(i32* %364, i32* %365, i32* %366, i8* %41, i32 %367)
  store i32 %368, i32* %18, align 4
  %369 = load i32, i32* %18, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %374, label %371

371:                                              ; preds = %361
  %372 = call i32 @res_dnok(i8* %41)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %377, label %374

374:                                              ; preds = %371, %361
  %375 = load i32, i32* %30, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %30, align 4
  br label %164

377:                                              ; preds = %371
  %378 = load i32, i32* %18, align 4
  %379 = load i32*, i32** %17, align 8
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds i32, i32* %379, i64 %380
  store i32* %381, i32** %17, align 8
  %382 = load i32*, i32** %17, align 8
  %383 = load i32*, i32** %20, align 8
  %384 = icmp ne i32* %382, %383
  br i1 %384, label %385, label %389

385:                                              ; preds = %377
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %387 = load i32, i32* @NO_RECOVERY, align 4
  %388 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %386, i32 %387)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

389:                                              ; preds = %377
  %390 = call i32 @strlen(i8* %41)
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %18, align 4
  %392 = load i32, i32* %18, align 4
  %393 = sext i32 %392 to i64
  %394 = load i8*, i8** %22, align 8
  %395 = load i8*, i8** %21, align 8
  %396 = ptrtoint i8* %394 to i64
  %397 = ptrtoint i8* %395 to i64
  %398 = sub i64 %396, %397
  %399 = icmp sgt i64 %393, %398
  br i1 %399, label %404, label %400

400:                                              ; preds = %389
  %401 = load i32, i32* %18, align 4
  %402 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %403 = icmp sge i32 %401, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %400, %389
  %405 = load i32, i32* %30, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %30, align 4
  br label %164

407:                                              ; preds = %400
  %408 = load i8*, i8** %21, align 8
  %409 = call i32 @strcpy(i8* %408, i8* %41)
  %410 = load i8*, i8** %21, align 8
  store i8* %410, i8** %34, align 8
  %411 = load i32, i32* %18, align 4
  %412 = load i8*, i8** %21, align 8
  %413 = sext i32 %411 to i64
  %414 = getelementptr inbounds i8, i8* %412, i64 %413
  store i8* %414, i8** %21, align 8
  br label %164

415:                                              ; preds = %357, %354
  %416 = load i32, i32* %25, align 4
  %417 = load i32, i32* %12, align 4
  %418 = icmp ne i32 %416, %417
  br i1 %418, label %419, label %446

419:                                              ; preds = %415
  %420 = load i32, i32* %25, align 4
  %421 = load i32, i32* @T_SIG, align 4
  %422 = icmp ne i32 %420, %421
  br i1 %422, label %423, label %441

423:                                              ; preds = %419
  %424 = load i32, i32* %25, align 4
  %425 = load i32, i32* @ns_t_dname, align 4
  %426 = icmp ne i32 %424, %425
  br i1 %426, label %427, label %441

427:                                              ; preds = %423
  %428 = load i32, i32* @LOG_NOTICE, align 4
  %429 = load i32, i32* @LOG_AUTH, align 4
  %430 = or i32 %428, %429
  %431 = load i8*, i8** %11, align 8
  %432 = load i32, i32* @C_IN, align 4
  %433 = call i32 @p_class(i32 %432)
  %434 = sext i32 %433 to i64
  %435 = inttoptr i64 %434 to i8*
  %436 = load i32, i32* %12, align 4
  %437 = call i32 @p_type(i32 %436)
  %438 = load i32, i32* %25, align 4
  %439 = call i32 @p_type(i32 %438)
  %440 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %430, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %431, i8* %435, i32 %437, i32 %439)
  br label %441

441:                                              ; preds = %427, %423, %419
  %442 = load i32, i32* %18, align 4
  %443 = load i32*, i32** %17, align 8
  %444 = sext i32 %442 to i64
  %445 = getelementptr inbounds i32, i32* %443, i64 %444
  store i32* %445, i32** %17, align 8
  br label %164

446:                                              ; preds = %415
  %447 = load i32, i32* %25, align 4
  switch i32 %447, label %636 [
    i32 128, label %448
    i32 130, label %522
    i32 129, label %522
  ]

448:                                              ; preds = %446
  %449 = load i8*, i8** %34, align 8
  %450 = load i8*, i8** %21, align 8
  %451 = call i32 @strcasecmp(i8* %449, i8* %450)
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %467

453:                                              ; preds = %448
  %454 = load i32, i32* @LOG_NOTICE, align 4
  %455 = load i32, i32* @LOG_AUTH, align 4
  %456 = or i32 %454, %455
  %457 = load i32, i32* @AskedForGot, align 4
  %458 = sext i32 %457 to i64
  %459 = inttoptr i64 %458 to i8*
  %460 = load i8*, i8** %11, align 8
  %461 = load i8*, i8** %21, align 8
  %462 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %456, i8* %459, i8* %460, i8* %461)
  %463 = load i32, i32* %18, align 4
  %464 = load i32*, i32** %17, align 8
  %465 = sext i32 %463 to i64
  %466 = getelementptr inbounds i32, i32* %464, i64 %465
  store i32* %466, i32** %17, align 8
  br label %164

467:                                              ; preds = %448
  %468 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 0
  %470 = load i32*, i32** %469, align 8
  %471 = load i32*, i32** %19, align 8
  %472 = load i32*, i32** %17, align 8
  %473 = load i8*, i8** %21, align 8
  %474 = load i8*, i8** %22, align 8
  %475 = load i8*, i8** %21, align 8
  %476 = ptrtoint i8* %474 to i64
  %477 = ptrtoint i8* %475 to i64
  %478 = sub i64 %476, %477
  %479 = trunc i64 %478 to i32
  %480 = call i32 @dn_expand(i32* %470, i32* %471, i32* %472, i8* %473, i32 %479)
  store i32 %480, i32* %18, align 4
  %481 = load i32, i32* %18, align 4
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %487, label %483

483:                                              ; preds = %467
  %484 = load i8*, i8** %21, align 8
  %485 = call i32 @res_hnok(i8* %484)
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %490, label %487

487:                                              ; preds = %483, %467
  %488 = load i32, i32* %30, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %30, align 4
  br label %643

490:                                              ; preds = %483
  %491 = load i8*, i8** %21, align 8
  %492 = load %struct.hostent*, %struct.hostent** %13, align 8
  %493 = getelementptr inbounds %struct.hostent, %struct.hostent* %492, i32 0, i32 0
  store i8* %491, i8** %493, align 8
  %494 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %495 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @RES_USE_INET6, align 4
  %498 = and i32 %496, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %518

500:                                              ; preds = %490
  %501 = load i8*, i8** %21, align 8
  %502 = call i32 @strlen(i8* %501)
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %18, align 4
  %504 = load i32, i32* %18, align 4
  %505 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %506 = icmp sge i32 %504, %505
  br i1 %506, label %507, label %510

507:                                              ; preds = %500
  %508 = load i32, i32* %30, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %30, align 4
  br label %643

510:                                              ; preds = %500
  %511 = load i32, i32* %18, align 4
  %512 = load i8*, i8** %21, align 8
  %513 = sext i32 %511 to i64
  %514 = getelementptr inbounds i8, i8* %512, i64 %513
  store i8* %514, i8** %21, align 8
  %515 = load %struct.hostent*, %struct.hostent** %13, align 8
  %516 = load i8*, i8** %22, align 8
  %517 = call i32 @_map_v4v6_hostent(%struct.hostent* %515, i8** %21, i8* %516)
  br label %518

518:                                              ; preds = %510, %490
  %519 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %520 = load i32, i32* @NETDB_SUCCESS, align 4
  %521 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %519, i32 %520)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

522:                                              ; preds = %446, %446
  %523 = load %struct.hostent*, %struct.hostent** %13, align 8
  %524 = getelementptr inbounds %struct.hostent, %struct.hostent* %523, i32 0, i32 0
  %525 = load i8*, i8** %524, align 8
  %526 = load i8*, i8** %21, align 8
  %527 = call i32 @strcasecmp(i8* %525, i8* %526)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %545

529:                                              ; preds = %522
  %530 = load i32, i32* @LOG_NOTICE, align 4
  %531 = load i32, i32* @LOG_AUTH, align 4
  %532 = or i32 %530, %531
  %533 = load i32, i32* @AskedForGot, align 4
  %534 = sext i32 %533 to i64
  %535 = inttoptr i64 %534 to i8*
  %536 = load %struct.hostent*, %struct.hostent** %13, align 8
  %537 = getelementptr inbounds %struct.hostent, %struct.hostent* %536, i32 0, i32 0
  %538 = load i8*, i8** %537, align 8
  %539 = load i8*, i8** %21, align 8
  %540 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %532, i8* %535, i8* %538, i8* %539)
  %541 = load i32, i32* %18, align 4
  %542 = load i32*, i32** %17, align 8
  %543 = sext i32 %541 to i64
  %544 = getelementptr inbounds i32, i32* %542, i64 %543
  store i32* %544, i32** %17, align 8
  br label %164

545:                                              ; preds = %522
  %546 = load i32, i32* %18, align 4
  %547 = load %struct.hostent*, %struct.hostent** %13, align 8
  %548 = getelementptr inbounds %struct.hostent, %struct.hostent* %547, i32 0, i32 3
  %549 = load i32, i32* %548, align 8
  %550 = icmp ne i32 %546, %549
  br i1 %550, label %551, label %556

551:                                              ; preds = %545
  %552 = load i32, i32* %18, align 4
  %553 = load i32*, i32** %17, align 8
  %554 = sext i32 %552 to i64
  %555 = getelementptr inbounds i32, i32* %553, i64 %554
  store i32* %555, i32** %17, align 8
  br label %164

556:                                              ; preds = %545
  %557 = load i32, i32* %29, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %570, label %559

559:                                              ; preds = %556
  %560 = load i8*, i8** %21, align 8
  %561 = load %struct.hostent*, %struct.hostent** %13, align 8
  %562 = getelementptr inbounds %struct.hostent, %struct.hostent* %561, i32 0, i32 0
  store i8* %560, i8** %562, align 8
  %563 = load i8*, i8** %21, align 8
  %564 = call i32 @strlen(i8* %563)
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %37, align 4
  %566 = load i32, i32* %37, align 4
  %567 = load i8*, i8** %21, align 8
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds i8, i8* %567, i64 %568
  store i8* %569, i8** %21, align 8
  br label %570

570:                                              ; preds = %559, %556
  %571 = load i8*, i8** %21, align 8
  %572 = ptrtoint i8* %571 to i32
  %573 = sext i32 %572 to i64
  %574 = urem i64 %573, 4
  %575 = sub i64 4, %574
  %576 = load i8*, i8** %21, align 8
  %577 = getelementptr inbounds i8, i8* %576, i64 %575
  store i8* %577, i8** %21, align 8
  %578 = load i8*, i8** %21, align 8
  %579 = load i32, i32* %18, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i8, i8* %578, i64 %580
  %582 = load i8*, i8** %22, align 8
  %583 = icmp uge i8* %581, %582
  br i1 %583, label %584, label %590

584:                                              ; preds = %570
  %585 = load i32, i32* %18, align 4
  %586 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %587 = call i32 @dbg_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %585, %struct.TYPE_9__* %586)
  %588 = load i32, i32* %30, align 4
  %589 = add nsw i32 %588, 1
  store i32 %589, i32* %30, align 4
  br label %164

590:                                              ; preds = %570
  %591 = load i8**, i8*** %24, align 8
  %592 = load %struct.hostent_data*, %struct.hostent_data** %14, align 8
  %593 = getelementptr inbounds %struct.hostent_data, %struct.hostent_data* %592, i32 0, i32 2
  %594 = load i8**, i8*** %593, align 8
  %595 = load i32, i32* @_MAXADDRS, align 4
  %596 = sub nsw i32 %595, 1
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i8*, i8** %594, i64 %597
  %599 = icmp uge i8** %591, %598
  br i1 %599, label %600, label %613

600:                                              ; preds = %590
  %601 = load i32, i32* %31, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %31, align 4
  %603 = icmp ne i32 %601, 0
  br i1 %603, label %608, label %604

604:                                              ; preds = %600
  %605 = load i32, i32* @_MAXADDRS, align 4
  %606 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %607 = call i32 @dbg_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %605, %struct.TYPE_9__* %606)
  br label %608

608:                                              ; preds = %604, %600
  %609 = load i32, i32* %18, align 4
  %610 = load i32*, i32** %17, align 8
  %611 = sext i32 %609 to i64
  %612 = getelementptr inbounds i32, i32* %610, i64 %611
  store i32* %612, i32** %17, align 8
  br label %164

613:                                              ; preds = %590
  %614 = load i8*, i8** %21, align 8
  %615 = load i8**, i8*** %24, align 8
  %616 = getelementptr inbounds i8*, i8** %615, i32 1
  store i8** %616, i8*** %24, align 8
  store i8* %614, i8** %615, align 8
  %617 = load i32*, i32** %17, align 8
  %618 = load i32, i32* %18, align 4
  %619 = call i32 @memcpy(i8* %614, i32* %617, i32 %618)
  %620 = load i32, i32* %18, align 4
  %621 = load i8*, i8** %21, align 8
  %622 = sext i32 %620 to i64
  %623 = getelementptr inbounds i8, i8* %621, i64 %622
  store i8* %623, i8** %21, align 8
  %624 = load i32, i32* %18, align 4
  %625 = load i32*, i32** %17, align 8
  %626 = sext i32 %624 to i64
  %627 = getelementptr inbounds i32, i32* %625, i64 %626
  store i32* %627, i32** %17, align 8
  %628 = load i32*, i32** %17, align 8
  %629 = load i32*, i32** %20, align 8
  %630 = icmp ne i32* %628, %629
  br i1 %630, label %631, label %635

631:                                              ; preds = %613
  %632 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %633 = load i32, i32* @NO_RECOVERY, align 4
  %634 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %632, i32 %633)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

635:                                              ; preds = %613
  br label %643

636:                                              ; preds = %446
  %637 = load i32, i32* %25, align 4
  %638 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %639 = call i32 @dbg_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %637, %struct.TYPE_9__* %638)
  %640 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %641 = load i32, i32* @NO_RECOVERY, align 4
  %642 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %640, i32 %641)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

643:                                              ; preds = %635, %507, %487
  %644 = load i32, i32* %30, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %649, label %646

646:                                              ; preds = %643
  %647 = load i32, i32* %29, align 4
  %648 = add nsw i32 %647, 1
  store i32 %648, i32* %29, align 4
  br label %649

649:                                              ; preds = %646, %643
  br label %164

650:                                              ; preds = %176
  %651 = load i32, i32* %29, align 4
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %703

653:                                              ; preds = %650
  %654 = load i8**, i8*** %23, align 8
  store i8* null, i8** %654, align 8
  %655 = load i8**, i8*** %24, align 8
  store i8* null, i8** %655, align 8
  %656 = load %struct.hostent*, %struct.hostent** %13, align 8
  %657 = getelementptr inbounds %struct.hostent, %struct.hostent* %656, i32 0, i32 0
  %658 = load i8*, i8** %657, align 8
  %659 = icmp ne i8* %658, null
  br i1 %659, label %688, label %660

660:                                              ; preds = %653
  %661 = load i8*, i8** %11, align 8
  %662 = call i32 @strlen(i8* %661)
  %663 = add nsw i32 %662, 1
  store i32 %663, i32* %18, align 4
  %664 = load i32, i32* %18, align 4
  %665 = sext i32 %664 to i64
  %666 = load i8*, i8** %22, align 8
  %667 = load i8*, i8** %21, align 8
  %668 = ptrtoint i8* %666 to i64
  %669 = ptrtoint i8* %667 to i64
  %670 = sub i64 %668, %669
  %671 = icmp sgt i64 %665, %670
  br i1 %671, label %676, label %672

672:                                              ; preds = %660
  %673 = load i32, i32* %18, align 4
  %674 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %675 = icmp sge i32 %673, %674
  br i1 %675, label %676, label %677

676:                                              ; preds = %672, %660
  br label %704

677:                                              ; preds = %672
  %678 = load i8*, i8** %21, align 8
  %679 = load i8*, i8** %11, align 8
  %680 = call i32 @strcpy(i8* %678, i8* %679)
  %681 = load i8*, i8** %21, align 8
  %682 = load %struct.hostent*, %struct.hostent** %13, align 8
  %683 = getelementptr inbounds %struct.hostent, %struct.hostent* %682, i32 0, i32 0
  store i8* %681, i8** %683, align 8
  %684 = load i32, i32* %18, align 4
  %685 = load i8*, i8** %21, align 8
  %686 = sext i32 %684 to i64
  %687 = getelementptr inbounds i8, i8* %685, i64 %686
  store i8* %687, i8** %21, align 8
  br label %688

688:                                              ; preds = %677, %653
  %689 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %690 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 8
  %692 = load i32, i32* @RES_USE_INET6, align 4
  %693 = and i32 %691, %692
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %699

695:                                              ; preds = %688
  %696 = load %struct.hostent*, %struct.hostent** %13, align 8
  %697 = load i8*, i8** %22, align 8
  %698 = call i32 @_map_v4v6_hostent(%struct.hostent* %696, i8** %21, i8* %697)
  br label %699

699:                                              ; preds = %695, %688
  %700 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %701 = load i32, i32* @NETDB_SUCCESS, align 4
  %702 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %700, i32 %701)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

703:                                              ; preds = %650
  br label %704

704:                                              ; preds = %703, %676
  %705 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %706 = load i32, i32* @NO_RECOVERY, align 4
  %707 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_9__* %705, i32 %706)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %36, align 4
  br label %708

708:                                              ; preds = %704, %699, %636, %631, %518, %385, %305, %130, %108, %83, %54
  %709 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %709)
  %710 = load i32, i32* %8, align 4
  ret i32 %710
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @res_hnok(i8*) #2

declare dso_local i32 @res_dnok(i8*) #2

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @BOUNDED_INCR(i64) #2

declare dso_local i32 @dn_expand(i32*, i32*, i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @BOUNDS_CHECK(i32*, i32) #2

declare dso_local i32 @_getshort(i32*) #2

declare dso_local i32 @_getlong(i32*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i8*, ...) #2

declare dso_local i32 @p_class(i32) #2

declare dso_local i32 @p_type(i32) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @_map_v4v6_hostent(%struct.hostent*, i8**, i8*) #2

declare dso_local i32 @dbg_printf(i8*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
