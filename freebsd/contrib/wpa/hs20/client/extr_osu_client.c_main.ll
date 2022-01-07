; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"df:hKNo:O:qr:s:S:tw:x:\00", align 1
@wpa_debug_level = external dso_local global i32, align 4
@optarg = common dso_local global i8* null, align 8
@wpa_debug_show_keys = external dso_local global i32, align 4
@wpa_debug_timestamp = external dso_local global i32, align 4
@wpas_ctrl_path = external dso_local global i8*, align 8
@spp_xsd_fname = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"===[hs20-osu-client START - command: %s ]======================\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"to_tnds\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"to_tnds2\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"from_tnds\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"sub_rem\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"pol_upd\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"prov\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Calling cmd_prov from main\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"sim_prov\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"dl_osu_ca\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"dl_polupd_ca\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"dl_aaa_ca\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"osu_select\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"signup\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"set_pps\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"get_fqdn\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"oma_dm_prov\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"oma_dm_sim_prov\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Failed to complete OMA DM SIM provisioning\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"oma_dm_add\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"oma_dm_replace\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"est_csr\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"Cert\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"browser\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [29 x i8] c"Launch web browser to URL %s\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Web browser result: %d\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"parse_cert\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [21 x i8] c"Unknown command '%s'\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"===[hs20-osu-client END ]======================\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hs20_osu_client, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %13 = call i64 @init_ctx(%struct.hs20_osu_client* %6)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %835

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %67, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %68

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %64 [
    i32 100, label %26
    i32 102, label %33
    i32 75, label %35
    i32 78, label %38
    i32 111, label %39
    i32 79, label %42
    i32 113, label %44
    i32 114, label %47
    i32 115, label %50
    i32 83, label %53
    i32 116, label %56
    i32 119, label %59
    i32 120, label %61
    i32 104, label %63
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @wpa_debug_level, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @wpa_debug_level, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @wpa_debug_level, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %67

33:                                               ; preds = %24
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %11, align 8
  br label %67

35:                                               ; preds = %24
  %36 = load i32, i32* @wpa_debug_show_keys, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @wpa_debug_show_keys, align 4
  br label %67

38:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %67

39:                                               ; preds = %24
  %40 = load i8*, i8** @optarg, align 8
  %41 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 5
  store i8* %40, i8** %41, align 8
  br label %67

42:                                               ; preds = %24
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** %10, align 8
  br label %67

44:                                               ; preds = %24
  %45 = load i32, i32* @wpa_debug_level, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @wpa_debug_level, align 4
  br label %67

47:                                               ; preds = %24
  %48 = load i8*, i8** @optarg, align 8
  %49 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  br label %67

50:                                               ; preds = %24
  %51 = load i8*, i8** @optarg, align 8
  %52 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 4
  store i8* %51, i8** %52, align 8
  br label %67

53:                                               ; preds = %24
  %54 = load i8*, i8** @optarg, align 8
  %55 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 3
  store i8* %54, i8** %55, align 8
  br label %67

56:                                               ; preds = %24
  %57 = load i32, i32* @wpa_debug_timestamp, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @wpa_debug_timestamp, align 4
  br label %67

59:                                               ; preds = %24
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** @wpas_ctrl_path, align 8
  br label %67

61:                                               ; preds = %24
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** @spp_xsd_fname, align 8
  br label %67

63:                                               ; preds = %24
  br label %64

64:                                               ; preds = %24, %63
  %65 = call i32 (...) @usage()
  %66 = call i32 @exit(i32 0) #3
  unreachable

67:                                               ; preds = %61, %59, %56, %53, %50, %47, %44, %42, %39, %38, %35, %33, %32
  br label %17

68:                                               ; preds = %23
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @optind, align 4
  %71 = sub nsw i32 %69, %70
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = call i32 (...) @usage()
  %75 = call i32 @exit(i32 0) #3
  unreachable

76:                                               ; preds = %68
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @wpa_debug_open_file(i8* %77)
  %79 = load i32, i32* @stdout, align 4
  %80 = call i32 @setlinebuf(i32 %79)
  %81 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @unlink(i8* %86)
  br label %88

88:                                               ; preds = %84, %76
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* @optind, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  %96 = call i32 @check_workarounds(%struct.hs20_osu_client* %6)
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* @optind, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %88
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @optind, align 4
  %107 = sub nsw i32 %105, %106
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = call i32 (...) @usage()
  %111 = call i32 @exit(i32 0) #3
  unreachable

112:                                              ; preds = %104
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* @optind, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %113, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %5, align 8
  %120 = load i32, i32* @optind, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %119, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @optind, align 4
  %127 = add nsw i32 %126, 3
  %128 = icmp sgt i32 %125, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %112
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* @optind, align 4
  %132 = add nsw i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %130, i64 %133
  %135 = load i8*, i8** %134, align 8
  br label %137

136:                                              ; preds = %112
  br label %137

137:                                              ; preds = %136, %129
  %138 = phi i8* [ %135, %129 ], [ null, %136 ]
  %139 = call i32 @cmd_to_tnds(%struct.hs20_osu_client* %6, i8* %118, i8* %124, i8* %138, i32 0)
  br label %829

140:                                              ; preds = %88
  %141 = load i8**, i8*** %5, align 8
  %142 = load i32, i32* @optind, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strcmp(i8* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %184

148:                                              ; preds = %140
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @optind, align 4
  %151 = sub nsw i32 %149, %150
  %152 = icmp slt i32 %151, 2
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = call i32 (...) @usage()
  %155 = call i32 @exit(i32 0) #3
  unreachable

156:                                              ; preds = %148
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* @optind, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %157, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* @optind, align 4
  %165 = add nsw i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %163, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @optind, align 4
  %171 = add nsw i32 %170, 3
  %172 = icmp sgt i32 %169, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %156
  %174 = load i8**, i8*** %5, align 8
  %175 = load i32, i32* @optind, align 4
  %176 = add nsw i32 %175, 3
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %174, i64 %177
  %179 = load i8*, i8** %178, align 8
  br label %181

180:                                              ; preds = %156
  br label %181

181:                                              ; preds = %180, %173
  %182 = phi i8* [ %179, %173 ], [ null, %180 ]
  %183 = call i32 @cmd_to_tnds(%struct.hs20_osu_client* %6, i8* %162, i8* %168, i8* %182, i32 1)
  br label %828

184:                                              ; preds = %140
  %185 = load i8**, i8*** %5, align 8
  %186 = load i32, i32* @optind, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %184
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* @optind, align 4
  %195 = sub nsw i32 %193, %194
  %196 = icmp slt i32 %195, 2
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = call i32 (...) @usage()
  %199 = call i32 @exit(i32 0) #3
  unreachable

200:                                              ; preds = %192
  %201 = load i8**, i8*** %5, align 8
  %202 = load i32, i32* @optind, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %201, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = load i8**, i8*** %5, align 8
  %208 = load i32, i32* @optind, align 4
  %209 = add nsw i32 %208, 2
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %207, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @cmd_from_tnds(%struct.hs20_osu_client* %6, i8* %206, i8* %212)
  br label %827

214:                                              ; preds = %184
  %215 = load i8**, i8*** %5, align 8
  %216 = load i32, i32* @optind, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = call i64 @strcmp(i8* %219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %266

222:                                              ; preds = %214
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* @optind, align 4
  %225 = sub nsw i32 %223, %224
  %226 = icmp slt i32 %225, 2
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = call i32 (...) @usage()
  %229 = call i32 @exit(i32 0) #3
  unreachable

230:                                              ; preds = %222
  %231 = load i8**, i8*** %5, align 8
  %232 = load i32, i32* @optind, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %231, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @optind, align 4
  %239 = add nsw i32 %238, 2
  %240 = icmp sgt i32 %237, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %230
  %242 = load i8**, i8*** %5, align 8
  %243 = load i32, i32* @optind, align 4
  %244 = add nsw i32 %243, 2
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %242, i64 %245
  %247 = load i8*, i8** %246, align 8
  br label %249

248:                                              ; preds = %230
  br label %249

249:                                              ; preds = %248, %241
  %250 = phi i8* [ %247, %241 ], [ null, %248 ]
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @optind, align 4
  %253 = add nsw i32 %252, 3
  %254 = icmp sgt i32 %251, %253
  br i1 %254, label %255, label %262

255:                                              ; preds = %249
  %256 = load i8**, i8*** %5, align 8
  %257 = load i32, i32* @optind, align 4
  %258 = add nsw i32 %257, 3
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %256, i64 %259
  %261 = load i8*, i8** %260, align 8
  br label %263

262:                                              ; preds = %249
  br label %263

263:                                              ; preds = %262, %255
  %264 = phi i8* [ %261, %255 ], [ null, %262 ]
  %265 = call i32 @cmd_sub_rem(%struct.hs20_osu_client* %6, i8* %236, i8* %250, i8* %264)
  store i32 %265, i32* %8, align 4
  br label %826

266:                                              ; preds = %214
  %267 = load i8**, i8*** %5, align 8
  %268 = load i32, i32* @optind, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269
  %271 = load i8*, i8** %270, align 8
  %272 = call i64 @strcmp(i8* %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %318

274:                                              ; preds = %266
  %275 = load i32, i32* %4, align 4
  %276 = load i32, i32* @optind, align 4
  %277 = add nsw i32 %276, 1
  %278 = icmp sgt i32 %275, %277
  br i1 %278, label %279, label %286

279:                                              ; preds = %274
  %280 = load i8**, i8*** %5, align 8
  %281 = load i32, i32* @optind, align 4
  %282 = add nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8*, i8** %280, i64 %283
  %285 = load i8*, i8** %284, align 8
  br label %287

286:                                              ; preds = %274
  br label %287

287:                                              ; preds = %286, %279
  %288 = phi i8* [ %285, %279 ], [ null, %286 ]
  %289 = load i32, i32* %4, align 4
  %290 = load i32, i32* @optind, align 4
  %291 = add nsw i32 %290, 2
  %292 = icmp sgt i32 %289, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %287
  %294 = load i8**, i8*** %5, align 8
  %295 = load i32, i32* @optind, align 4
  %296 = add nsw i32 %295, 2
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8*, i8** %294, i64 %297
  %299 = load i8*, i8** %298, align 8
  br label %301

300:                                              ; preds = %287
  br label %301

301:                                              ; preds = %300, %293
  %302 = phi i8* [ %299, %293 ], [ null, %300 ]
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* @optind, align 4
  %305 = add nsw i32 %304, 3
  %306 = icmp sgt i32 %303, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %301
  %308 = load i8**, i8*** %5, align 8
  %309 = load i32, i32* @optind, align 4
  %310 = add nsw i32 %309, 3
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8*, i8** %308, i64 %311
  %313 = load i8*, i8** %312, align 8
  br label %315

314:                                              ; preds = %301
  br label %315

315:                                              ; preds = %314, %307
  %316 = phi i8* [ %313, %307 ], [ null, %314 ]
  %317 = call i32 @cmd_pol_upd(%struct.hs20_osu_client* %6, i8* %288, i8* %302, i8* %316)
  store i32 %317, i32* %8, align 4
  br label %825

318:                                              ; preds = %266
  %319 = load i8**, i8*** %5, align 8
  %320 = load i32, i32* @optind, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8*, i8** %319, i64 %321
  %323 = load i8*, i8** %322, align 8
  %324 = call i64 @strcmp(i8* %323, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %351

326:                                              ; preds = %318
  %327 = load i32, i32* %4, align 4
  %328 = load i32, i32* @optind, align 4
  %329 = sub nsw i32 %327, %328
  %330 = icmp slt i32 %329, 2
  br i1 %330, label %331, label %334

331:                                              ; preds = %326
  %332 = call i32 (...) @usage()
  %333 = call i32 @exit(i32 0) #3
  unreachable

334:                                              ; preds = %326
  %335 = load i8**, i8*** %5, align 8
  %336 = load i32, i32* @optind, align 4
  %337 = add nsw i32 %336, 2
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %335, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 0
  store i8* %340, i8** %341, align 8
  %342 = load i32, i32* @MSG_DEBUG, align 4
  %343 = call i32 (i32, i8*, ...) @wpa_printf(i32 %342, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %344 = load i8**, i8*** %5, align 8
  %345 = load i32, i32* @optind, align 4
  %346 = add nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8*, i8** %344, i64 %347
  %349 = load i8*, i8** %348, align 8
  %350 = call i32 @cmd_prov(%struct.hs20_osu_client* %6, i8* %349)
  br label %824

351:                                              ; preds = %318
  %352 = load i8**, i8*** %5, align 8
  %353 = load i32, i32* @optind, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8*, i8** %352, i64 %354
  %356 = load i8*, i8** %355, align 8
  %357 = call i64 @strcmp(i8* %356, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %359, label %382

359:                                              ; preds = %351
  %360 = load i32, i32* %4, align 4
  %361 = load i32, i32* @optind, align 4
  %362 = sub nsw i32 %360, %361
  %363 = icmp slt i32 %362, 2
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = call i32 (...) @usage()
  %366 = call i32 @exit(i32 0) #3
  unreachable

367:                                              ; preds = %359
  %368 = load i8**, i8*** %5, align 8
  %369 = load i32, i32* @optind, align 4
  %370 = add nsw i32 %369, 2
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8*, i8** %368, i64 %371
  %373 = load i8*, i8** %372, align 8
  %374 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 0
  store i8* %373, i8** %374, align 8
  %375 = load i8**, i8*** %5, align 8
  %376 = load i32, i32* @optind, align 4
  %377 = add nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8*, i8** %375, i64 %378
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 @cmd_sim_prov(%struct.hs20_osu_client* %6, i8* %380)
  br label %823

382:                                              ; preds = %351
  %383 = load i8**, i8*** %5, align 8
  %384 = load i32, i32* @optind, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8*, i8** %383, i64 %385
  %387 = load i8*, i8** %386, align 8
  %388 = call i64 @strcmp(i8* %387, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %390, label %412

390:                                              ; preds = %382
  %391 = load i32, i32* %4, align 4
  %392 = load i32, i32* @optind, align 4
  %393 = sub nsw i32 %391, %392
  %394 = icmp slt i32 %393, 2
  br i1 %394, label %395, label %398

395:                                              ; preds = %390
  %396 = call i32 (...) @usage()
  %397 = call i32 @exit(i32 0) #3
  unreachable

398:                                              ; preds = %390
  %399 = load i8**, i8*** %5, align 8
  %400 = load i32, i32* @optind, align 4
  %401 = add nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8*, i8** %399, i64 %402
  %404 = load i8*, i8** %403, align 8
  %405 = load i8**, i8*** %5, align 8
  %406 = load i32, i32* @optind, align 4
  %407 = add nsw i32 %406, 2
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8*, i8** %405, i64 %408
  %410 = load i8*, i8** %409, align 8
  %411 = call i32 @cmd_dl_osu_ca(%struct.hs20_osu_client* %6, i8* %404, i8* %410)
  br label %822

412:                                              ; preds = %382
  %413 = load i8**, i8*** %5, align 8
  %414 = load i32, i32* @optind, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8*, i8** %413, i64 %415
  %417 = load i8*, i8** %416, align 8
  %418 = call i64 @strcmp(i8* %417, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %442

420:                                              ; preds = %412
  %421 = load i32, i32* %4, align 4
  %422 = load i32, i32* @optind, align 4
  %423 = sub nsw i32 %421, %422
  %424 = icmp slt i32 %423, 2
  br i1 %424, label %425, label %428

425:                                              ; preds = %420
  %426 = call i32 (...) @usage()
  %427 = call i32 @exit(i32 0) #3
  unreachable

428:                                              ; preds = %420
  %429 = load i8**, i8*** %5, align 8
  %430 = load i32, i32* @optind, align 4
  %431 = add nsw i32 %430, 1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8*, i8** %429, i64 %432
  %434 = load i8*, i8** %433, align 8
  %435 = load i8**, i8*** %5, align 8
  %436 = load i32, i32* @optind, align 4
  %437 = add nsw i32 %436, 2
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8*, i8** %435, i64 %438
  %440 = load i8*, i8** %439, align 8
  %441 = call i32 @cmd_dl_polupd_ca(%struct.hs20_osu_client* %6, i8* %434, i8* %440)
  br label %821

442:                                              ; preds = %412
  %443 = load i8**, i8*** %5, align 8
  %444 = load i32, i32* @optind, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8*, i8** %443, i64 %445
  %447 = load i8*, i8** %446, align 8
  %448 = call i64 @strcmp(i8* %447, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %450, label %472

450:                                              ; preds = %442
  %451 = load i32, i32* %4, align 4
  %452 = load i32, i32* @optind, align 4
  %453 = sub nsw i32 %451, %452
  %454 = icmp slt i32 %453, 2
  br i1 %454, label %455, label %458

455:                                              ; preds = %450
  %456 = call i32 (...) @usage()
  %457 = call i32 @exit(i32 0) #3
  unreachable

458:                                              ; preds = %450
  %459 = load i8**, i8*** %5, align 8
  %460 = load i32, i32* @optind, align 4
  %461 = add nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i8*, i8** %459, i64 %462
  %464 = load i8*, i8** %463, align 8
  %465 = load i8**, i8*** %5, align 8
  %466 = load i32, i32* @optind, align 4
  %467 = add nsw i32 %466, 2
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8*, i8** %465, i64 %468
  %470 = load i8*, i8** %469, align 8
  %471 = call i32 @cmd_dl_aaa_ca(%struct.hs20_osu_client* %6, i8* %464, i8* %470)
  br label %820

472:                                              ; preds = %442
  %473 = load i8**, i8*** %5, align 8
  %474 = load i32, i32* @optind, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8*, i8** %473, i64 %475
  %477 = load i8*, i8** %476, align 8
  %478 = call i64 @strcmp(i8* %477, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %480, label %511

480:                                              ; preds = %472
  %481 = load i32, i32* %4, align 4
  %482 = load i32, i32* @optind, align 4
  %483 = sub nsw i32 %481, %482
  %484 = icmp slt i32 %483, 2
  br i1 %484, label %485, label %488

485:                                              ; preds = %480
  %486 = call i32 (...) @usage()
  %487 = call i32 @exit(i32 0) #3
  unreachable

488:                                              ; preds = %480
  %489 = load i32, i32* %4, align 4
  %490 = load i32, i32* @optind, align 4
  %491 = add nsw i32 %490, 2
  %492 = icmp sgt i32 %489, %491
  br i1 %492, label %493, label %500

493:                                              ; preds = %488
  %494 = load i8**, i8*** %5, align 8
  %495 = load i32, i32* @optind, align 4
  %496 = add nsw i32 %495, 2
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i8*, i8** %494, i64 %497
  %499 = load i8*, i8** %498, align 8
  br label %501

500:                                              ; preds = %488
  br label %501

501:                                              ; preds = %500, %493
  %502 = phi i8* [ %499, %493 ], [ null, %500 ]
  %503 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 0
  store i8* %502, i8** %503, align 8
  %504 = load i8**, i8*** %5, align 8
  %505 = load i32, i32* @optind, align 4
  %506 = add nsw i32 %505, 1
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8*, i8** %504, i64 %507
  %509 = load i8*, i8** %508, align 8
  %510 = call i32 @cmd_osu_select(%struct.hs20_osu_client* %6, i8* %509, i32 2, i32 1, i32* null)
  br label %819

511:                                              ; preds = %472
  %512 = load i8**, i8*** %5, align 8
  %513 = load i32, i32* @optind, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8*, i8** %512, i64 %514
  %516 = load i8*, i8** %515, align 8
  %517 = call i64 @strcmp(i8* %516, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %519, label %538

519:                                              ; preds = %511
  %520 = load i32, i32* %4, align 4
  %521 = load i32, i32* @optind, align 4
  %522 = add nsw i32 %521, 1
  %523 = icmp sgt i32 %520, %522
  br i1 %523, label %524, label %531

524:                                              ; preds = %519
  %525 = load i8**, i8*** %5, align 8
  %526 = load i32, i32* @optind, align 4
  %527 = add nsw i32 %526, 1
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i8*, i8** %525, i64 %528
  %530 = load i8*, i8** %529, align 8
  br label %532

531:                                              ; preds = %519
  br label %532

532:                                              ; preds = %531, %524
  %533 = phi i8* [ %530, %524 ], [ null, %531 ]
  %534 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 0
  store i8* %533, i8** %534, align 8
  %535 = load i32, i32* %9, align 4
  %536 = load i8*, i8** %10, align 8
  %537 = call i32 @cmd_signup(%struct.hs20_osu_client* %6, i32 %535, i8* %536)
  store i32 %537, i32* %8, align 4
  br label %818

538:                                              ; preds = %511
  %539 = load i8**, i8*** %5, align 8
  %540 = load i32, i32* @optind, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8*, i8** %539, i64 %541
  %543 = load i8*, i8** %542, align 8
  %544 = call i64 @strcmp(i8* %543, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %562

546:                                              ; preds = %538
  %547 = load i32, i32* %4, align 4
  %548 = load i32, i32* @optind, align 4
  %549 = sub nsw i32 %547, %548
  %550 = icmp slt i32 %549, 2
  br i1 %550, label %551, label %554

551:                                              ; preds = %546
  %552 = call i32 (...) @usage()
  %553 = call i32 @exit(i32 0) #3
  unreachable

554:                                              ; preds = %546
  %555 = load i8**, i8*** %5, align 8
  %556 = load i32, i32* @optind, align 4
  %557 = add nsw i32 %556, 1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i8*, i8** %555, i64 %558
  %560 = load i8*, i8** %559, align 8
  %561 = call i32 @cmd_set_pps(%struct.hs20_osu_client* %6, i8* %560)
  br label %817

562:                                              ; preds = %538
  %563 = load i8**, i8*** %5, align 8
  %564 = load i32, i32* @optind, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i8*, i8** %563, i64 %565
  %567 = load i8*, i8** %566, align 8
  %568 = call i64 @strcmp(i8* %567, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %569 = icmp eq i64 %568, 0
  br i1 %569, label %570, label %586

570:                                              ; preds = %562
  %571 = load i32, i32* %4, align 4
  %572 = load i32, i32* @optind, align 4
  %573 = sub nsw i32 %571, %572
  %574 = icmp slt i32 %573, 1
  br i1 %574, label %575, label %578

575:                                              ; preds = %570
  %576 = call i32 (...) @usage()
  %577 = call i32 @exit(i32 0) #3
  unreachable

578:                                              ; preds = %570
  %579 = load i8**, i8*** %5, align 8
  %580 = load i32, i32* @optind, align 4
  %581 = add nsw i32 %580, 1
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i8*, i8** %579, i64 %582
  %584 = load i8*, i8** %583, align 8
  %585 = call i32 @cmd_get_fqdn(%struct.hs20_osu_client* %6, i8* %584)
  store i32 %585, i32* %8, align 4
  br label %816

586:                                              ; preds = %562
  %587 = load i8**, i8*** %5, align 8
  %588 = load i32, i32* @optind, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i8*, i8** %587, i64 %589
  %591 = load i8*, i8** %590, align 8
  %592 = call i64 @strcmp(i8* %591, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %617

594:                                              ; preds = %586
  %595 = load i32, i32* %4, align 4
  %596 = load i32, i32* @optind, align 4
  %597 = sub nsw i32 %595, %596
  %598 = icmp slt i32 %597, 2
  br i1 %598, label %599, label %602

599:                                              ; preds = %594
  %600 = call i32 (...) @usage()
  %601 = call i32 @exit(i32 0) #3
  unreachable

602:                                              ; preds = %594
  %603 = load i8**, i8*** %5, align 8
  %604 = load i32, i32* @optind, align 4
  %605 = add nsw i32 %604, 2
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8*, i8** %603, i64 %606
  %608 = load i8*, i8** %607, align 8
  %609 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 0
  store i8* %608, i8** %609, align 8
  %610 = load i8**, i8*** %5, align 8
  %611 = load i32, i32* @optind, align 4
  %612 = add nsw i32 %611, 1
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i8*, i8** %610, i64 %613
  %615 = load i8*, i8** %614, align 8
  %616 = call i32 @cmd_oma_dm_prov(%struct.hs20_osu_client* %6, i8* %615)
  br label %815

617:                                              ; preds = %586
  %618 = load i8**, i8*** %5, align 8
  %619 = load i32, i32* @optind, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8*, i8** %618, i64 %620
  %622 = load i8*, i8** %621, align 8
  %623 = call i64 @strcmp(i8* %622, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  %624 = icmp eq i64 %623, 0
  br i1 %624, label %625, label %652

625:                                              ; preds = %617
  %626 = load i32, i32* %4, align 4
  %627 = load i32, i32* @optind, align 4
  %628 = sub nsw i32 %626, %627
  %629 = icmp slt i32 %628, 2
  br i1 %629, label %630, label %633

630:                                              ; preds = %625
  %631 = call i32 (...) @usage()
  %632 = call i32 @exit(i32 0) #3
  unreachable

633:                                              ; preds = %625
  %634 = load i8**, i8*** %5, align 8
  %635 = load i32, i32* @optind, align 4
  %636 = add nsw i32 %635, 2
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i8*, i8** %634, i64 %637
  %639 = load i8*, i8** %638, align 8
  %640 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 0
  store i8* %639, i8** %640, align 8
  %641 = load i8**, i8*** %5, align 8
  %642 = load i32, i32* @optind, align 4
  %643 = add nsw i32 %642, 1
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i8*, i8** %641, i64 %644
  %646 = load i8*, i8** %645, align 8
  %647 = call i64 @cmd_oma_dm_sim_prov(%struct.hs20_osu_client* %6, i8* %646)
  %648 = icmp slt i64 %647, 0
  br i1 %648, label %649, label %651

649:                                              ; preds = %633
  %650 = call i32 @write_summary(%struct.hs20_osu_client* %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %835

651:                                              ; preds = %633
  br label %814

652:                                              ; preds = %617
  %653 = load i8**, i8*** %5, align 8
  %654 = load i32, i32* @optind, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i8*, i8** %653, i64 %655
  %657 = load i8*, i8** %656, align 8
  %658 = call i64 @strcmp(i8* %657, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %659 = icmp eq i64 %658, 0
  br i1 %659, label %660, label %682

660:                                              ; preds = %652
  %661 = load i32, i32* %4, align 4
  %662 = load i32, i32* @optind, align 4
  %663 = sub nsw i32 %661, %662
  %664 = icmp slt i32 %663, 2
  br i1 %664, label %665, label %668

665:                                              ; preds = %660
  %666 = call i32 (...) @usage()
  %667 = call i32 @exit(i32 0) #3
  unreachable

668:                                              ; preds = %660
  %669 = load i8**, i8*** %5, align 8
  %670 = load i32, i32* @optind, align 4
  %671 = add nsw i32 %670, 1
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i8*, i8** %669, i64 %672
  %674 = load i8*, i8** %673, align 8
  %675 = load i8**, i8*** %5, align 8
  %676 = load i32, i32* @optind, align 4
  %677 = add nsw i32 %676, 2
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds i8*, i8** %675, i64 %678
  %680 = load i8*, i8** %679, align 8
  %681 = call i32 @cmd_oma_dm_add(%struct.hs20_osu_client* %6, i8* %674, i8* %680)
  br label %813

682:                                              ; preds = %652
  %683 = load i8**, i8*** %5, align 8
  %684 = load i32, i32* @optind, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds i8*, i8** %683, i64 %685
  %687 = load i8*, i8** %686, align 8
  %688 = call i64 @strcmp(i8* %687, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %689 = icmp eq i64 %688, 0
  br i1 %689, label %690, label %712

690:                                              ; preds = %682
  %691 = load i32, i32* %4, align 4
  %692 = load i32, i32* @optind, align 4
  %693 = sub nsw i32 %691, %692
  %694 = icmp slt i32 %693, 2
  br i1 %694, label %695, label %698

695:                                              ; preds = %690
  %696 = call i32 (...) @usage()
  %697 = call i32 @exit(i32 0) #3
  unreachable

698:                                              ; preds = %690
  %699 = load i8**, i8*** %5, align 8
  %700 = load i32, i32* @optind, align 4
  %701 = add nsw i32 %700, 1
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i8*, i8** %699, i64 %702
  %704 = load i8*, i8** %703, align 8
  %705 = load i8**, i8*** %5, align 8
  %706 = load i32, i32* @optind, align 4
  %707 = add nsw i32 %706, 2
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i8*, i8** %705, i64 %708
  %710 = load i8*, i8** %709, align 8
  %711 = call i32 @cmd_oma_dm_replace(%struct.hs20_osu_client* %6, i8* %704, i8* %710)
  br label %812

712:                                              ; preds = %682
  %713 = load i8**, i8*** %5, align 8
  %714 = load i32, i32* @optind, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i8*, i8** %713, i64 %715
  %717 = load i8*, i8** %716, align 8
  %718 = call i64 @strcmp(i8* %717, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %738

720:                                              ; preds = %712
  %721 = load i32, i32* %4, align 4
  %722 = load i32, i32* @optind, align 4
  %723 = sub nsw i32 %721, %722
  %724 = icmp slt i32 %723, 2
  br i1 %724, label %725, label %728

725:                                              ; preds = %720
  %726 = call i32 (...) @usage()
  %727 = call i32 @exit(i32 0) #3
  unreachable

728:                                              ; preds = %720
  %729 = load i32, i32* @S_IRWXU, align 4
  %730 = call i32 @mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %729)
  %731 = load i8**, i8*** %5, align 8
  %732 = load i32, i32* @optind, align 4
  %733 = add nsw i32 %732, 1
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds i8*, i8** %731, i64 %734
  %736 = load i8*, i8** %735, align 8
  %737 = call i32 @est_build_csr(%struct.hs20_osu_client* %6, i8* %736)
  br label %811

738:                                              ; preds = %712
  %739 = load i8**, i8*** %5, align 8
  %740 = load i32, i32* @optind, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds i8*, i8** %739, i64 %741
  %743 = load i8*, i8** %742, align 8
  %744 = call i64 @strcmp(i8* %743, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %745 = icmp eq i64 %744, 0
  br i1 %745, label %746, label %773

746:                                              ; preds = %738
  %747 = load i32, i32* %4, align 4
  %748 = load i32, i32* @optind, align 4
  %749 = sub nsw i32 %747, %748
  %750 = icmp slt i32 %749, 2
  br i1 %750, label %751, label %754

751:                                              ; preds = %746
  %752 = call i32 (...) @usage()
  %753 = call i32 @exit(i32 0) #3
  unreachable

754:                                              ; preds = %746
  %755 = load i32, i32* @MSG_INFO, align 4
  %756 = load i8**, i8*** %5, align 8
  %757 = load i32, i32* @optind, align 4
  %758 = add nsw i32 %757, 1
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds i8*, i8** %756, i64 %759
  %761 = load i8*, i8** %760, align 8
  %762 = call i32 (i32, i8*, ...) @wpa_printf(i32 %755, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i8* %761)
  %763 = load i8**, i8*** %5, align 8
  %764 = load i32, i32* @optind, align 4
  %765 = add nsw i32 %764, 1
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i8*, i8** %763, i64 %766
  %768 = load i8*, i8** %767, align 8
  %769 = call i32 @hs20_web_browser(i8* %768)
  store i32 %769, i32* %12, align 4
  %770 = load i32, i32* @MSG_INFO, align 4
  %771 = load i32, i32* %12, align 4
  %772 = call i32 (i32, i8*, ...) @wpa_printf(i32 %770, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 %771)
  br label %810

773:                                              ; preds = %738
  %774 = load i8**, i8*** %5, align 8
  %775 = load i32, i32* @optind, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i8*, i8** %774, i64 %776
  %778 = load i8*, i8** %777, align 8
  %779 = call i64 @strcmp(i8* %778, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  %780 = icmp eq i64 %779, 0
  br i1 %780, label %781, label %801

781:                                              ; preds = %773
  %782 = load i32, i32* %4, align 4
  %783 = load i32, i32* @optind, align 4
  %784 = sub nsw i32 %782, %783
  %785 = icmp slt i32 %784, 2
  br i1 %785, label %786, label %789

786:                                              ; preds = %781
  %787 = call i32 (...) @usage()
  %788 = call i32 @exit(i32 0) #3
  unreachable

789:                                              ; preds = %781
  %790 = load i32, i32* @MSG_MSGDUMP, align 4
  store i32 %790, i32* @wpa_debug_level, align 4
  %791 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %6, i32 0, i32 1
  %792 = load i32, i32* %791, align 8
  %793 = load i8**, i8*** %5, align 8
  %794 = load i32, i32* @optind, align 4
  %795 = add nsw i32 %794, 1
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds i8*, i8** %793, i64 %796
  %798 = load i8*, i8** %797, align 8
  %799 = call i32 @http_parse_x509_certificate(i32 %792, i8* %798)
  %800 = load i32, i32* @MSG_INFO, align 4
  store i32 %800, i32* @wpa_debug_level, align 4
  br label %809

801:                                              ; preds = %773
  %802 = load i32, i32* @MSG_INFO, align 4
  %803 = load i8**, i8*** %5, align 8
  %804 = load i32, i32* @optind, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds i8*, i8** %803, i64 %805
  %807 = load i8*, i8** %806, align 8
  %808 = call i32 (i32, i8*, ...) @wpa_printf(i32 %802, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8* %807)
  br label %809

809:                                              ; preds = %801, %789
  br label %810

810:                                              ; preds = %809, %754
  br label %811

811:                                              ; preds = %810, %728
  br label %812

812:                                              ; preds = %811, %698
  br label %813

813:                                              ; preds = %812, %668
  br label %814

814:                                              ; preds = %813, %651
  br label %815

815:                                              ; preds = %814, %602
  br label %816

816:                                              ; preds = %815, %578
  br label %817

817:                                              ; preds = %816, %554
  br label %818

818:                                              ; preds = %817, %532
  br label %819

819:                                              ; preds = %818, %501
  br label %820

820:                                              ; preds = %819, %458
  br label %821

821:                                              ; preds = %820, %428
  br label %822

822:                                              ; preds = %821, %398
  br label %823

823:                                              ; preds = %822, %367
  br label %824

824:                                              ; preds = %823, %334
  br label %825

825:                                              ; preds = %824, %315
  br label %826

826:                                              ; preds = %825, %263
  br label %827

827:                                              ; preds = %826, %200
  br label %828

828:                                              ; preds = %827, %181
  br label %829

829:                                              ; preds = %828, %137
  %830 = call i32 @deinit_ctx(%struct.hs20_osu_client* %6)
  %831 = load i32, i32* @MSG_DEBUG, align 4
  %832 = call i32 (i32, i8*, ...) @wpa_printf(i32 %831, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i64 0, i64 0))
  %833 = call i32 (...) @wpa_debug_close_file()
  %834 = load i32, i32* %8, align 4
  store i32 %834, i32* %3, align 4
  br label %835

835:                                              ; preds = %829, %649, %15
  %836 = load i32, i32* %3, align 4
  ret i32 %836
}

declare dso_local i64 @init_ctx(%struct.hs20_osu_client*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @wpa_debug_open_file(i8*) #1

declare dso_local i32 @setlinebuf(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @check_workarounds(%struct.hs20_osu_client*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cmd_to_tnds(%struct.hs20_osu_client*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @cmd_from_tnds(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32 @cmd_sub_rem(%struct.hs20_osu_client*, i8*, i8*, i8*) #1

declare dso_local i32 @cmd_pol_upd(%struct.hs20_osu_client*, i8*, i8*, i8*) #1

declare dso_local i32 @cmd_prov(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @cmd_sim_prov(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @cmd_dl_osu_ca(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32 @cmd_dl_polupd_ca(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32 @cmd_dl_aaa_ca(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32 @cmd_osu_select(%struct.hs20_osu_client*, i8*, i32, i32, i32*) #1

declare dso_local i32 @cmd_signup(%struct.hs20_osu_client*, i32, i8*) #1

declare dso_local i32 @cmd_set_pps(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @cmd_get_fqdn(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @cmd_oma_dm_prov(%struct.hs20_osu_client*, i8*) #1

declare dso_local i64 @cmd_oma_dm_sim_prov(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @cmd_oma_dm_add(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32 @cmd_oma_dm_replace(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @est_build_csr(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @hs20_web_browser(i8*) #1

declare dso_local i32 @http_parse_x509_certificate(i32, i8*) #1

declare dso_local i32 @deinit_ctx(%struct.hs20_osu_client*) #1

declare dso_local i32 @wpa_debug_close_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
