; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getrrsetbyname.c_getrrsetbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getrrsetbyname.c_getrrsetbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrsetinfo = type { i64, i64, i32, i32, %struct.rdatainfo*, %struct.rdatainfo*, i32*, i32, i32 }
%struct.rdatainfo = type { i32*, i32 }
%struct.__res_state = type { i32 }
%struct.dns_response = type { %struct.dns_rr*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.dns_rr = type { i64, i64, i32, i32, %struct.dns_rr*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@_res = common dso_local global i32 0, align 4
@ANSWER_BUFFER_SIZE = common dso_local global i32 0, align 4
@ERRSET_INVAL = common dso_local global i32 0, align 4
@RES_INIT = common dso_local global i32 0, align 4
@ERRSET_FAIL = common dso_local global i32 0, align 4
@h_errno = common dso_local global i32 0, align 4
@ERRSET_NONAME = common dso_local global i32 0, align 4
@ERRSET_NODATA = common dso_local global i32 0, align 4
@ERRSET_NOMEMORY = common dso_local global i32 0, align 4
@T_RRSIG = common dso_local global i64 0, align 8
@ERRSET_SUCCESS = common dso_local global i32 0, align 4
@RES_DEBUG = common dso_local global i32 0, align 4
@RES_USE_DNSSEC = common dso_local global i32 0, align 4
@RES_USE_EDNS0 = common dso_local global i32 0, align 4
@RRSET_VALIDATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getrrsetbyname(i8* %0, i32 %1, i32 %2, i32 %3, %struct.rrsetinfo** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rrsetinfo**, align 8
  %12 = alloca %struct.__res_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rrsetinfo*, align 8
  %15 = alloca %struct.dns_response*, align 8
  %16 = alloca %struct.dns_rr*, align 8
  %17 = alloca %struct.rdatainfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.rrsetinfo** %4, %struct.rrsetinfo*** %11, align 8
  %24 = load i32, i32* @_res, align 4
  %25 = load i32, i32* @_res, align 4
  %26 = call %struct.__res_state* @_THREAD_PRIVATE(i32 %24, i32 %25, i32* @_res)
  store %struct.__res_state* %26, %struct.__res_state** %12, align 8
  store %struct.rrsetinfo* null, %struct.rrsetinfo** %14, align 8
  store %struct.dns_response* null, %struct.dns_response** %15, align 8
  %27 = load i32, i32* @ANSWER_BUFFER_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %21, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %22, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp ugt i32 %31, 65535
  br i1 %32, label %36, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* %9, align 4
  %35 = icmp ugt i32 %34, 65535
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %5
  %37 = load i32, i32* @ERRSET_INVAL, align 4
  store i32 %37, i32* %13, align 4
  br label %298

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 255
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @ERRSET_INVAL, align 4
  store i32 %45, i32* %13, align 4
  br label %298

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @ERRSET_INVAL, align 4
  store i32 %50, i32* %13, align 4
  br label %298

51:                                               ; preds = %46
  %52 = load %struct.__res_state*, %struct.__res_state** %12, align 8
  %53 = getelementptr inbounds %struct.__res_state, %struct.__res_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RES_INIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = call i32 (...) @res_init()
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @ERRSET_FAIL, align 4
  store i32 %62, i32* %13, align 4
  br label %298

63:                                               ; preds = %58, %51
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul nuw i64 4, %28
  %68 = trunc i64 %67 to i32
  %69 = call i32 @res_query(i8* %64, i32 %65, i32 %66, i32* %30, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load i32, i32* @h_errno, align 4
  switch i32 %73, label %78 [
    i32 129, label %74
    i32 128, label %76
  ]

74:                                               ; preds = %72
  %75 = load i32, i32* @ERRSET_NONAME, align 4
  store i32 %75, i32* %13, align 4
  br label %298

76:                                               ; preds = %72
  %77 = load i32, i32* @ERRSET_NODATA, align 4
  store i32 %77, i32* %13, align 4
  br label %298

78:                                               ; preds = %72
  %79 = load i32, i32* @ERRSET_FAIL, align 4
  store i32 %79, i32* %13, align 4
  br label %298

80:                                               ; preds = %63
  %81 = load i32, i32* %18, align 4
  %82 = call %struct.dns_response* @parse_dns_response(i32* %30, i32 %81)
  store %struct.dns_response* %82, %struct.dns_response** %15, align 8
  %83 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %84 = icmp eq %struct.dns_response* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @ERRSET_FAIL, align 4
  store i32 %86, i32* %13, align 4
  br label %298

87:                                               ; preds = %80
  %88 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %89 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @ERRSET_FAIL, align 4
  store i32 %94, i32* %13, align 4
  br label %298

95:                                               ; preds = %87
  %96 = call i8* @calloc(i32 1, i32 56)
  %97 = bitcast i8* %96 to %struct.rrsetinfo*
  store %struct.rrsetinfo* %97, %struct.rrsetinfo** %14, align 8
  %98 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %99 = icmp eq %struct.rrsetinfo* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @ERRSET_NOMEMORY, align 4
  store i32 %101, i32* %13, align 4
  br label %298

102:                                              ; preds = %95
  %103 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %104 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %109 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %111 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %110, i32 0, i32 2
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %116 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %118 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %117, i32 0, i32 0
  %119 = load %struct.dns_rr*, %struct.dns_rr** %118, align 8
  %120 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %123 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 4
  %124 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %125 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %129 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %131 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %130, i32 0, i32 0
  %132 = load %struct.dns_rr*, %struct.dns_rr** %131, align 8
  %133 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = call i32* @strdup(i32 %134)
  %136 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %137 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %136, i32 0, i32 6
  store i32* %135, i32** %137, align 8
  %138 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %139 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %102
  %143 = load i32, i32* @ERRSET_NOMEMORY, align 4
  store i32 %143, i32* %13, align 4
  br label %298

144:                                              ; preds = %102
  %145 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %146 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %145, i32 0, i32 0
  %147 = load %struct.dns_rr*, %struct.dns_rr** %146, align 8
  %148 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %149 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %152 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i8* @count_dns_rr(%struct.dns_rr* %147, i64 %150, i64 %153)
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %157 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %159 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %158, i32 0, i32 0
  %160 = load %struct.dns_rr*, %struct.dns_rr** %159, align 8
  %161 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %162 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @T_RRSIG, align 8
  %165 = call i8* @count_dns_rr(%struct.dns_rr* %160, i64 %163, i64 %164)
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %168 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %170 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @calloc(i32 %171, i32 16)
  %173 = bitcast i8* %172 to %struct.rdatainfo*
  %174 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %175 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %174, i32 0, i32 5
  store %struct.rdatainfo* %173, %struct.rdatainfo** %175, align 8
  %176 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %177 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %176, i32 0, i32 5
  %178 = load %struct.rdatainfo*, %struct.rdatainfo** %177, align 8
  %179 = icmp eq %struct.rdatainfo* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %144
  %181 = load i32, i32* @ERRSET_NOMEMORY, align 4
  store i32 %181, i32* %13, align 4
  br label %298

182:                                              ; preds = %144
  %183 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %184 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %182
  %188 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %189 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @calloc(i32 %190, i32 16)
  %192 = bitcast i8* %191 to %struct.rdatainfo*
  %193 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %194 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %193, i32 0, i32 4
  store %struct.rdatainfo* %192, %struct.rdatainfo** %194, align 8
  %195 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %196 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %195, i32 0, i32 4
  %197 = load %struct.rdatainfo*, %struct.rdatainfo** %196, align 8
  %198 = icmp eq %struct.rdatainfo* %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %187
  %200 = load i32, i32* @ERRSET_NOMEMORY, align 4
  store i32 %200, i32* %13, align 4
  br label %298

201:                                              ; preds = %187
  br label %202

202:                                              ; preds = %201, %182
  %203 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %204 = getelementptr inbounds %struct.dns_response, %struct.dns_response* %203, i32 0, i32 0
  %205 = load %struct.dns_rr*, %struct.dns_rr** %204, align 8
  store %struct.dns_rr* %205, %struct.dns_rr** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %206

206:                                              ; preds = %288, %202
  %207 = load %struct.dns_rr*, %struct.dns_rr** %16, align 8
  %208 = icmp ne %struct.dns_rr* %207, null
  br i1 %208, label %209, label %292

209:                                              ; preds = %206
  store %struct.rdatainfo* null, %struct.rdatainfo** %17, align 8
  %210 = load %struct.dns_rr*, %struct.dns_rr** %16, align 8
  %211 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %214 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %212, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %209
  %218 = load %struct.dns_rr*, %struct.dns_rr** %16, align 8
  %219 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %222 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %220, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %217
  %226 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %227 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %226, i32 0, i32 5
  %228 = load %struct.rdatainfo*, %struct.rdatainfo** %227, align 8
  %229 = load i32, i32* %19, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %19, align 4
  %231 = zext i32 %229 to i64
  %232 = getelementptr inbounds %struct.rdatainfo, %struct.rdatainfo* %228, i64 %231
  store %struct.rdatainfo* %232, %struct.rdatainfo** %17, align 8
  br label %233

233:                                              ; preds = %225, %217, %209
  %234 = load %struct.dns_rr*, %struct.dns_rr** %16, align 8
  %235 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %238 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp eq i64 %236, %239
  br i1 %240, label %241, label %255

241:                                              ; preds = %233
  %242 = load %struct.dns_rr*, %struct.dns_rr** %16, align 8
  %243 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @T_RRSIG, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %241
  %248 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %249 = getelementptr inbounds %struct.rrsetinfo, %struct.rrsetinfo* %248, i32 0, i32 4
  %250 = load %struct.rdatainfo*, %struct.rdatainfo** %249, align 8
  %251 = load i32, i32* %20, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %20, align 4
  %253 = zext i32 %251 to i64
  %254 = getelementptr inbounds %struct.rdatainfo, %struct.rdatainfo* %250, i64 %253
  store %struct.rdatainfo* %254, %struct.rdatainfo** %17, align 8
  br label %255

255:                                              ; preds = %247, %241, %233
  %256 = load %struct.rdatainfo*, %struct.rdatainfo** %17, align 8
  %257 = icmp ne %struct.rdatainfo* %256, null
  br i1 %257, label %258, label %287

258:                                              ; preds = %255
  %259 = load %struct.dns_rr*, %struct.dns_rr** %16, align 8
  %260 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.rdatainfo*, %struct.rdatainfo** %17, align 8
  %263 = getelementptr inbounds %struct.rdatainfo, %struct.rdatainfo* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  %264 = load %struct.dns_rr*, %struct.dns_rr** %16, align 8
  %265 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32* @malloc(i32 %266)
  %268 = load %struct.rdatainfo*, %struct.rdatainfo** %17, align 8
  %269 = getelementptr inbounds %struct.rdatainfo, %struct.rdatainfo* %268, i32 0, i32 0
  store i32* %267, i32** %269, align 8
  %270 = load %struct.rdatainfo*, %struct.rdatainfo** %17, align 8
  %271 = getelementptr inbounds %struct.rdatainfo, %struct.rdatainfo* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = icmp eq i32* %272, null
  br i1 %273, label %274, label %276

274:                                              ; preds = %258
  %275 = load i32, i32* @ERRSET_NOMEMORY, align 4
  store i32 %275, i32* %13, align 4
  br label %298

276:                                              ; preds = %258
  %277 = load %struct.rdatainfo*, %struct.rdatainfo** %17, align 8
  %278 = getelementptr inbounds %struct.rdatainfo, %struct.rdatainfo* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load %struct.dns_rr*, %struct.dns_rr** %16, align 8
  %281 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.dns_rr*, %struct.dns_rr** %16, align 8
  %284 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @memcpy(i32* %279, i32 %282, i32 %285)
  br label %287

287:                                              ; preds = %276, %255
  br label %288

288:                                              ; preds = %287
  %289 = load %struct.dns_rr*, %struct.dns_rr** %16, align 8
  %290 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %289, i32 0, i32 4
  %291 = load %struct.dns_rr*, %struct.dns_rr** %290, align 8
  store %struct.dns_rr* %291, %struct.dns_rr** %16, align 8
  br label %206

292:                                              ; preds = %206
  %293 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %294 = call i32 @free_dns_response(%struct.dns_response* %293)
  %295 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %296 = load %struct.rrsetinfo**, %struct.rrsetinfo*** %11, align 8
  store %struct.rrsetinfo* %295, %struct.rrsetinfo** %296, align 8
  %297 = load i32, i32* @ERRSET_SUCCESS, align 4
  store i32 %297, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %312

298:                                              ; preds = %274, %199, %180, %142, %100, %93, %85, %78, %76, %74, %61, %49, %44, %36
  %299 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %300 = icmp ne %struct.rrsetinfo* %299, null
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load %struct.rrsetinfo*, %struct.rrsetinfo** %14, align 8
  %303 = call i32 @freerrset(%struct.rrsetinfo* %302)
  br label %304

304:                                              ; preds = %301, %298
  %305 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %306 = icmp ne %struct.dns_response* %305, null
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load %struct.dns_response*, %struct.dns_response** %15, align 8
  %309 = call i32 @free_dns_response(%struct.dns_response* %308)
  br label %310

310:                                              ; preds = %307, %304
  %311 = load i32, i32* %13, align 4
  store i32 %311, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %312

312:                                              ; preds = %310, %292
  %313 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %313)
  %314 = load i32, i32* %6, align 4
  ret i32 %314
}

declare dso_local %struct.__res_state* @_THREAD_PRIVATE(i32, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @res_init(...) #1

declare dso_local i32 @res_query(i8*, i32, i32, i32*, i32) #1

declare dso_local %struct.dns_response* @parse_dns_response(i32*, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32* @strdup(i32) #1

declare dso_local i8* @count_dns_rr(%struct.dns_rr*, i64, i64) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @free_dns_response(%struct.dns_response*) #1

declare dso_local i32 @freerrset(%struct.rrsetinfo*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
