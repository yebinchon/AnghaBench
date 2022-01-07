; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditreduce/extr_auditreduce.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8* }
%struct.passwd = type { i8* }
%struct.tm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Aa:b:c:d:e:f:g:j:m:o:r:u:v\00", align 1
@opttochk = common dso_local global i32 0, align 4
@OPT_A = common dso_local global i32 0, align 4
@OPT_a = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"d is exclusive with a and b\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%Y%m%d%H%M%S\00", align 1
@p_atime = common dso_local global i8* null, align 8
@OPT_b = common dso_local global i32 0, align 4
@p_btime = common dso_local global i8* null, align 8
@maskp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Incorrect class\00", align 1
@OPT_c = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"'d' is exclusive with 'a' and 'b'\00", align 1
@OPT_d = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%Y%m%d\00", align 1
@p_euid = common dso_local global i8* null, align 8
@OPT_e = common dso_local global i32 0, align 4
@p_egid = common dso_local global i8* null, align 8
@OPT_f = common dso_local global i32 0, align 4
@p_rgid = common dso_local global i8* null, align 8
@OPT_g = common dso_local global i32 0, align 4
@p_subid = common dso_local global i8* null, align 8
@OPT_j = common dso_local global i32 0, align 4
@p_evec = common dso_local global i8** null, align 8
@p_evec_alloc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@p_evec_used = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Incorrect event name\00", align 1
@OPT_m = common dso_local global i32 0, align 4
@p_ruid = common dso_local global i8* null, align 8
@OPT_r = common dso_local global i32 0, align 4
@p_auid = common dso_local global i8* null, align 8
@OPT_u = common dso_local global i32 0, align 4
@OPT_v = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"Unknown option\00", align 1
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Couldn't select records from stdin\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Couldn't open %s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Couldn't select records %s\00", align 1
@ENOSYS = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.group*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.tm, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [128 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  br label %18

18:                                               ; preds = %287, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %14, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %288

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  switch i32 %24, label %285 [
    i32 65, label %25
    i32 97, label %29
    i32 98, label %46
    i32 99, label %63
    i32 100, label %73
    i32 101, label %101
    i32 102, label %121
    i32 103, label %141
    i32 106, label %161
    i32 109, label %167
    i32 111, label %227
    i32 114, label %240
    i32 117, label %260
    i32 118, label %280
    i32 63, label %284
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @opttochk, align 4
  %27 = load i32, i32* @OPT_A, align 4
  %28 = call i32 @SETOPT(i32 %26, i32 %27)
  br label %287

29:                                               ; preds = %23
  %30 = load i32, i32* @opttochk, align 4
  %31 = load i32, i32* @OPT_a, align 4
  %32 = call i32 @ISOPTSET(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @usage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* @opttochk, align 4
  %38 = load i32, i32* @OPT_a, align 4
  %39 = call i32 @SETOPT(i32 %37, i32 %38)
  %40 = call i32 @bzero(%struct.tm* %8, i32 12)
  %41 = load i32, i32* @optarg, align 4
  %42 = call i32 @strptime(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %8)
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %44 = call i32 @strftime(i8* %43, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %8)
  %45 = call i8* @mktime(%struct.tm* %8)
  store i8* %45, i8** @p_atime, align 8
  br label %287

46:                                               ; preds = %23
  %47 = load i32, i32* @opttochk, align 4
  %48 = load i32, i32* @OPT_b, align 4
  %49 = call i32 @ISOPTSET(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @usage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* @opttochk, align 4
  %55 = load i32, i32* @OPT_b, align 4
  %56 = call i32 @SETOPT(i32 %54, i32 %55)
  %57 = call i32 @bzero(%struct.tm* %8, i32 12)
  %58 = load i32, i32* @optarg, align 4
  %59 = call i32 @strptime(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %8)
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %61 = call i32 @strftime(i8* %60, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %8)
  %62 = call i8* @mktime(%struct.tm* %8)
  store i8* %62, i8** @p_btime, align 8
  br label %287

63:                                               ; preds = %23
  %64 = load i32, i32* @optarg, align 4
  %65 = call i32 @getauditflagsbin(i32 %64, i32* @maskp)
  %66 = icmp ne i32 0, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 @usage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i32, i32* @opttochk, align 4
  %71 = load i32, i32* @OPT_c, align 4
  %72 = call i32 @SETOPT(i32 %70, i32 %71)
  br label %287

73:                                               ; preds = %23
  %74 = load i32, i32* @opttochk, align 4
  %75 = load i32, i32* @OPT_b, align 4
  %76 = call i32 @ISOPTSET(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @opttochk, align 4
  %80 = load i32, i32* @OPT_a, align 4
  %81 = call i32 @ISOPTSET(i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78, %73
  %84 = call i32 @usage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* @opttochk, align 4
  %87 = load i32, i32* @OPT_d, align 4
  %88 = call i32 @SETOPT(i32 %86, i32 %87)
  %89 = call i32 @bzero(%struct.tm* %8, i32 12)
  %90 = load i32, i32* @optarg, align 4
  %91 = call i32 @strptime(i32 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.tm* %8)
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %93 = call i32 @strftime(i8* %92, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.tm* %8)
  %94 = call i8* @mktime(%struct.tm* %8)
  store i8* %94, i8** @p_atime, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  store i32 23, i32* %95, align 4
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  store i32 59, i32* %96, align 4
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  store i32 59, i32* %97, align 4
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %99 = call i32 @strftime(i8* %98, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.tm* %8)
  %100 = call i8* @mktime(%struct.tm* %8)
  store i8* %100, i8** @p_btime, align 8
  br label %287

101:                                              ; preds = %23
  %102 = load i32, i32* @optarg, align 4
  %103 = call i8* @strtol(i32 %102, i8** %13, i32 10)
  store i8* %103, i8** @p_euid, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load i32, i32* @optarg, align 4
  %110 = call %struct.passwd* @getpwnam(i32 %109)
  store %struct.passwd* %110, %struct.passwd** %7, align 8
  %111 = icmp eq %struct.passwd* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %287

113:                                              ; preds = %108
  %114 = load %struct.passwd*, %struct.passwd** %7, align 8
  %115 = getelementptr inbounds %struct.passwd, %struct.passwd* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** @p_euid, align 8
  br label %117

117:                                              ; preds = %113, %101
  %118 = load i32, i32* @opttochk, align 4
  %119 = load i32, i32* @OPT_e, align 4
  %120 = call i32 @SETOPT(i32 %118, i32 %119)
  br label %287

121:                                              ; preds = %23
  %122 = load i32, i32* @optarg, align 4
  %123 = call i8* @strtol(i32 %122, i8** %13, i32 10)
  store i8* %123, i8** @p_egid, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load i32, i32* @optarg, align 4
  %130 = call %struct.group* @getgrnam(i32 %129)
  store %struct.group* %130, %struct.group** %6, align 8
  %131 = icmp eq %struct.group* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %287

133:                                              ; preds = %128
  %134 = load %struct.group*, %struct.group** %6, align 8
  %135 = getelementptr inbounds %struct.group, %struct.group* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** @p_egid, align 8
  br label %137

137:                                              ; preds = %133, %121
  %138 = load i32, i32* @opttochk, align 4
  %139 = load i32, i32* @OPT_f, align 4
  %140 = call i32 @SETOPT(i32 %138, i32 %139)
  br label %287

141:                                              ; preds = %23
  %142 = load i32, i32* @optarg, align 4
  %143 = call i8* @strtol(i32 %142, i8** %13, i32 10)
  store i8* %143, i8** @p_rgid, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %141
  %149 = load i32, i32* @optarg, align 4
  %150 = call %struct.group* @getgrnam(i32 %149)
  store %struct.group* %150, %struct.group** %6, align 8
  %151 = icmp eq %struct.group* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %287

153:                                              ; preds = %148
  %154 = load %struct.group*, %struct.group** %6, align 8
  %155 = getelementptr inbounds %struct.group, %struct.group* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** @p_rgid, align 8
  br label %157

157:                                              ; preds = %153, %141
  %158 = load i32, i32* @opttochk, align 4
  %159 = load i32, i32* @OPT_g, align 4
  %160 = call i32 @SETOPT(i32 %158, i32 %159)
  br label %287

161:                                              ; preds = %23
  %162 = load i32, i32* @optarg, align 4
  %163 = call i8* @strtol(i32 %162, i8** null, i32 10)
  store i8* %163, i8** @p_subid, align 8
  %164 = load i32, i32* @opttochk, align 4
  %165 = load i32, i32* @OPT_j, align 4
  %166 = call i32 @SETOPT(i32 %164, i32 %165)
  br label %287

167:                                              ; preds = %23
  %168 = load i8**, i8*** @p_evec, align 8
  %169 = icmp eq i8** %168, null
  br i1 %169, label %170, label %181

170:                                              ; preds = %167
  store i32 32, i32* @p_evec_alloc, align 4
  %171 = load i32, i32* @p_evec_alloc, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 8, %172
  %174 = trunc i64 %173 to i32
  %175 = call i8** @malloc(i32 %174)
  store i8** %175, i8*** @p_evec, align 8
  %176 = load i8**, i8*** @p_evec, align 8
  %177 = icmp eq i8** %176, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %170
  br label %200

181:                                              ; preds = %167
  %182 = load i32, i32* @p_evec_alloc, align 4
  %183 = load i32, i32* @p_evec_used, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %181
  %186 = load i32, i32* @p_evec_alloc, align 4
  %187 = shl i32 %186, 1
  store i32 %187, i32* @p_evec_alloc, align 4
  %188 = load i8**, i8*** @p_evec, align 8
  %189 = load i32, i32* @p_evec_alloc, align 4
  %190 = sext i32 %189 to i64
  %191 = mul i64 8, %190
  %192 = trunc i64 %191 to i32
  %193 = call i8** @realloc(i8** %188, i32 %192)
  store i8** %193, i8*** @p_evec, align 8
  %194 = load i8**, i8*** @p_evec, align 8
  %195 = icmp eq i8** %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %185
  %197 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %185
  br label %199

199:                                              ; preds = %198, %181
  br label %200

200:                                              ; preds = %199, %180
  %201 = load i8**, i8*** @p_evec, align 8
  %202 = load i32, i32* @p_evec_used, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* @p_evec_used, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8*, i8** %201, i64 %204
  store i8** %205, i8*** %17, align 8
  %206 = load i32, i32* @optarg, align 4
  %207 = call i8* @strtol(i32 %206, i8** null, i32 10)
  %208 = load i8**, i8*** %17, align 8
  store i8* %207, i8** %208, align 8
  %209 = load i8**, i8*** %17, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = icmp eq i8* %210, null
  br i1 %211, label %212, label %223

212:                                              ; preds = %200
  %213 = load i32, i32* @optarg, align 4
  %214 = call i8** @getauevnonam(i32 %213)
  store i8** %214, i8*** %9, align 8
  %215 = load i8**, i8*** %9, align 8
  %216 = icmp eq i8** %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = call i32 @usage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %212
  %220 = load i8**, i8*** %9, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = load i8**, i8*** %17, align 8
  store i8* %221, i8** %222, align 8
  br label %223

223:                                              ; preds = %219, %200
  %224 = load i32, i32* @opttochk, align 4
  %225 = load i32, i32* @OPT_m, align 4
  %226 = call i32 @SETOPT(i32 %224, i32 %225)
  br label %287

227:                                              ; preds = %23
  %228 = load i32, i32* @optarg, align 4
  %229 = call i8* @strchr(i32 %228, i8 signext 61)
  store i8* %229, i8** %12, align 8
  %230 = load i8*, i8** %12, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load i8*, i8** %12, align 8
  store i8 0, i8* %233, align 1
  %234 = load i8*, i8** %12, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 1
  store i8* %235, i8** %12, align 8
  %236 = load i32, i32* @optarg, align 4
  %237 = load i8*, i8** %12, align 8
  %238 = call i32 @parse_object_type(i32 %236, i8* %237)
  br label %239

239:                                              ; preds = %232, %227
  br label %287

240:                                              ; preds = %23
  %241 = load i32, i32* @optarg, align 4
  %242 = call i8* @strtol(i32 %241, i8** %13, i32 10)
  store i8* %242, i8** @p_ruid, align 8
  %243 = load i8*, i8** %13, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %240
  %248 = load i32, i32* @optarg, align 4
  %249 = call %struct.passwd* @getpwnam(i32 %248)
  store %struct.passwd* %249, %struct.passwd** %7, align 8
  %250 = icmp eq %struct.passwd* %249, null
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  br label %287

252:                                              ; preds = %247
  %253 = load %struct.passwd*, %struct.passwd** %7, align 8
  %254 = getelementptr inbounds %struct.passwd, %struct.passwd* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  store i8* %255, i8** @p_ruid, align 8
  br label %256

256:                                              ; preds = %252, %240
  %257 = load i32, i32* @opttochk, align 4
  %258 = load i32, i32* @OPT_r, align 4
  %259 = call i32 @SETOPT(i32 %257, i32 %258)
  br label %287

260:                                              ; preds = %23
  %261 = load i32, i32* @optarg, align 4
  %262 = call i8* @strtol(i32 %261, i8** %13, i32 10)
  store i8* %262, i8** @p_auid, align 8
  %263 = load i8*, i8** %13, align 8
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %260
  %268 = load i32, i32* @optarg, align 4
  %269 = call %struct.passwd* @getpwnam(i32 %268)
  store %struct.passwd* %269, %struct.passwd** %7, align 8
  %270 = icmp eq %struct.passwd* %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  br label %287

272:                                              ; preds = %267
  %273 = load %struct.passwd*, %struct.passwd** %7, align 8
  %274 = getelementptr inbounds %struct.passwd, %struct.passwd* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  store i8* %275, i8** @p_auid, align 8
  br label %276

276:                                              ; preds = %272, %260
  %277 = load i32, i32* @opttochk, align 4
  %278 = load i32, i32* @OPT_u, align 4
  %279 = call i32 @SETOPT(i32 %277, i32 %278)
  br label %287

280:                                              ; preds = %23
  %281 = load i32, i32* @opttochk, align 4
  %282 = load i32, i32* @OPT_v, align 4
  %283 = call i32 @SETOPT(i32 %281, i32 %282)
  br label %287

284:                                              ; preds = %23
  br label %285

285:                                              ; preds = %23, %284
  %286 = call i32 @usage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %287

287:                                              ; preds = %285, %280, %276, %271, %256, %251, %239, %223, %161, %157, %152, %137, %132, %117, %112, %85, %69, %53, %36, %25
  br label %18

288:                                              ; preds = %18
  %289 = load i64, i64* @optind, align 8
  %290 = load i8**, i8*** %5, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 %289
  store i8** %291, i8*** %5, align 8
  %292 = load i64, i64* @optind, align 8
  %293 = load i32, i32* %4, align 4
  %294 = sext i32 %293 to i64
  %295 = sub nsw i64 %294, %292
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %4, align 4
  %297 = load i32, i32* %4, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %288
  %300 = load i32*, i32** @stdin, align 8
  %301 = call i32 @select_records(i32* %300)
  %302 = icmp eq i32 %301, -1
  br i1 %302, label %303, label %306

303:                                              ; preds = %299
  %304 = load i32, i32* @EXIT_FAILURE, align 4
  %305 = call i32 (i32, i8*, ...) @errx(i32 %304, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %306

306:                                              ; preds = %303, %299
  %307 = load i32, i32* @EXIT_SUCCESS, align 4
  %308 = call i32 @exit(i32 %307) #3
  unreachable

309:                                              ; preds = %288
  store i32 0, i32* %11, align 4
  br label %310

310:                                              ; preds = %339, %309
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* %4, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %342

314:                                              ; preds = %310
  %315 = load i8**, i8*** %5, align 8
  %316 = load i32, i32* %11, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8*, i8** %315, i64 %317
  %319 = load i8*, i8** %318, align 8
  store i8* %319, i8** %16, align 8
  %320 = load i8*, i8** %16, align 8
  %321 = call i32* @fopen(i8* %320, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32* %321, i32** %10, align 8
  %322 = load i32*, i32** %10, align 8
  %323 = icmp eq i32* %322, null
  br i1 %323, label %324, label %328

324:                                              ; preds = %314
  %325 = load i32, i32* @EXIT_FAILURE, align 4
  %326 = load i8*, i8** %16, align 8
  %327 = call i32 (i32, i8*, ...) @errx(i32 %325, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %326)
  br label %328

328:                                              ; preds = %324, %314
  %329 = load i32*, i32** %10, align 8
  %330 = call i32 @select_records(i32* %329)
  %331 = icmp eq i32 %330, -1
  br i1 %331, label %332, label %336

332:                                              ; preds = %328
  %333 = load i32, i32* @EXIT_FAILURE, align 4
  %334 = load i8*, i8** %16, align 8
  %335 = call i32 (i32, i8*, ...) @errx(i32 %333, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %334)
  br label %336

336:                                              ; preds = %332, %328
  %337 = load i32*, i32** %10, align 8
  %338 = call i32 @fclose(i32* %337)
  br label %339

339:                                              ; preds = %336
  %340 = load i32, i32* %11, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %11, align 4
  br label %310

342:                                              ; preds = %310
  %343 = load i32, i32* @EXIT_SUCCESS, align 4
  %344 = call i32 @exit(i32 %343) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @SETOPT(i32, i32) #1

declare dso_local i32 @ISOPTSET(i32, i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @bzero(%struct.tm*, i32) #1

declare dso_local i32 @strptime(i32, i8*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i8* @mktime(%struct.tm*) #1

declare dso_local i32 @getauditflagsbin(i32, i32*) #1

declare dso_local i8* @strtol(i32, i8**, i32) #1

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local %struct.group* @getgrnam(i32) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i8** @getauevnonam(i32) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @parse_object_type(i32, i8*) #1

declare dso_local i32 @select_records(i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
