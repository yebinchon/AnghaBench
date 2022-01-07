; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_cmd_args.c_getCmdOpts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_cmd_args.c_getCmdOpts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipv4_works = common dso_local global i64 0, align 8
@ipv6_works = common dso_local global i64 0, align 8
@IPV4 = common dso_local global i32 0, align 4
@IPV6 = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Neither IPv4 nor IPv6 networking detected, fatal.\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"-4/--ipv4 ignored, IPv4 networking not found.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"-6/--ipv6 ignored, IPv6 networking not found.\00", align 1
@AUTHREQ = common dso_local global i32 0, align 4
@PROTO_AUTHENTICATE = common dso_local global i32 0, align 4
@AUTHNOREQ = common dso_local global i32 0, align 4
@BCASTSYNC = common dso_local global i32 0, align 4
@PROTO_BROADCLIENT = common dso_local global i32 0, align 4
@CONFIGFILE = common dso_local global i32 0, align 4
@config_file = external dso_local global i8*, align 8
@DRIFTFILE = common dso_local global i32 0, align 4
@STATS_FREQ_FILE = common dso_local global i32 0, align 4
@PANICGATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@allow_panic = common dso_local global i8* null, align 8
@FORCE_STEP_ONCE = common dso_local global i32 0, align 4
@force_step_once = common dso_local global i8* null, align 8
@KEYFILE = common dso_local global i32 0, align 4
@PIDFILE = common dso_local global i32 0, align 4
@STATS_PID_FILE = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@mode_ntpdate = common dso_local global i8* null, align 8
@PROPAGATIONDELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"command line broadcast delay value %s undecodable\00", align 1
@PROTO_BROADDELAY = common dso_local global i32 0, align 4
@STATSDIR = common dso_local global i32 0, align 4
@STATS_STATSDIR = common dso_local global i32 0, align 4
@TRUSTEDKEY = common dso_local global i32 0, align 4
@NTP_MAXKEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"command line trusted key %s is invalid\00", align 1
@VAR = common dso_local global i32 0, align 4
@RW = common dso_local global i32 0, align 4
@DVAR = common dso_local global i32 0, align 4
@DEF = common dso_local global i32 0, align 4
@SLEW = common dso_local global i32 0, align 4
@LOOP_MAX = common dso_local global i32 0, align 4
@UPDATEINTERVAL = common dso_local global i32 0, align 4
@OPT_VALUE_UPDATEINTERVAL = common dso_local global i64 0, align 8
@interface_interval = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"command line interface update interval %ld must not be negative\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"command line interface update interval %ld must not be negative\00", align 1
@cmdline_server_count = common dso_local global i32 0, align 4
@cmdline_servers = common dso_local global i8** null, align 8
@ntpdOptions = common dso_local global i32 0, align 4
@JAILDIR = common dso_local global i32 0, align 4
@USER = common dso_local global i32 0, align 4
@check_netinfo = common dso_local global i64 0, align 8
@chrootdir = common dso_local global i8* null, align 8
@droproot = common dso_local global i32 0, align 4
@group = common dso_local global i8* null, align 8
@user = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getCmdOpts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %19 = load i64, i64* @ipv4_works, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load i64, i64* @ipv6_works, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* @IPV4, align 4
  %26 = call i64 @HAVE_OPT(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 0, i64* @ipv6_works, align 8
  br label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @IPV6, align 4
  %31 = call i64 @HAVE_OPT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i64 0, i64* @ipv4_works, align 8
  br label %34

34:                                               ; preds = %33, %29
  br label %35

35:                                               ; preds = %34, %28
  br label %69

36:                                               ; preds = %21, %2
  %37 = load i64, i64* @ipv4_works, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @ipv6_works, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = call i32 (i32, i8*, ...) @msyslog(i32 %43, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %39, %36
  %47 = load i32, i32* @IPV4, align 4
  %48 = call i64 @HAVE_OPT(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* @ipv4_works, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @LOG_WARNING, align 4
  %55 = call i32 (i32, i8*, ...) @msyslog(i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %67

56:                                               ; preds = %50, %46
  %57 = load i32, i32* @IPV6, align 4
  %58 = call i64 @HAVE_OPT(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i64, i64* @ipv6_works, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @LOG_WARNING, align 4
  %65 = call i32 (i32, i8*, ...) @msyslog(i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60, %56
  br label %67

67:                                               ; preds = %66, %53
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* @AUTHREQ, align 4
  %71 = call i64 @HAVE_OPT(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @PROTO_AUTHENTICATE, align 4
  %75 = call i32 @proto_config(i32 %74, i32 1, double 0.000000e+00, i32* null)
  br label %84

76:                                               ; preds = %69
  %77 = load i32, i32* @AUTHNOREQ, align 4
  %78 = call i64 @HAVE_OPT(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @PROTO_AUTHENTICATE, align 4
  %82 = call i32 @proto_config(i32 %81, i32 0, double 0.000000e+00, i32* null)
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83, %73
  %85 = load i32, i32* @BCASTSYNC, align 4
  %86 = call i64 @HAVE_OPT(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @PROTO_BROADCLIENT, align 4
  %90 = call i32 @proto_config(i32 %89, i32 1, double 0.000000e+00, i32* null)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i32, i32* @CONFIGFILE, align 4
  %93 = call i64 @HAVE_OPT(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @CONFIGFILE, align 4
  %97 = call i8* @OPT_ARG(i32 %96)
  store i8* %97, i8** @config_file, align 8
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i32, i32* @DRIFTFILE, align 4
  %100 = call i64 @HAVE_OPT(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @STATS_FREQ_FILE, align 4
  %104 = load i32, i32* @DRIFTFILE, align 4
  %105 = call i8* @OPT_ARG(i32 %104)
  %106 = call i32 @stats_config(i32 %103, i8* %105)
  br label %107

107:                                              ; preds = %102, %98
  %108 = load i32, i32* @PANICGATE, align 4
  %109 = call i64 @HAVE_OPT(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i8*, i8** @TRUE, align 8
  store i8* %112, i8** @allow_panic, align 8
  br label %113

113:                                              ; preds = %111, %107
  %114 = load i32, i32* @FORCE_STEP_ONCE, align 4
  %115 = call i64 @HAVE_OPT(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i8*, i8** @TRUE, align 8
  store i8* %118, i8** @force_step_once, align 8
  br label %119

119:                                              ; preds = %117, %113
  %120 = load i32, i32* @KEYFILE, align 4
  %121 = call i64 @HAVE_OPT(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* @KEYFILE, align 4
  %125 = call i8* @OPT_ARG(i32 %124)
  %126 = call i32 @getauthkeys(i8* %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i32, i32* @PIDFILE, align 4
  %129 = call i64 @HAVE_OPT(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i32, i32* @STATS_PID_FILE, align 4
  %133 = load i32, i32* @PIDFILE, align 4
  %134 = call i8* @OPT_ARG(i32 %133)
  %135 = call i32 @stats_config(i32 %132, i8* %134)
  br label %136

136:                                              ; preds = %131, %127
  %137 = load i32, i32* @QUIT, align 4
  %138 = call i64 @HAVE_OPT(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i8*, i8** @TRUE, align 8
  store i8* %141, i8** @mode_ntpdate, align 8
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i32, i32* @PROPAGATIONDELAY, align 4
  %144 = call i64 @HAVE_OPT(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* @PROPAGATIONDELAY, align 4
  %149 = call i8* @OPT_ARG(i32 %148)
  store i8* %149, i8** %7, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @sscanf(i8* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double* %6)
  %152 = icmp ne i32 %151, 1
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, i32* @LOG_ERR, align 4
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 (i32, i8*, ...) @msyslog(i32 %154, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %155)
  br label %161

157:                                              ; preds = %147
  %158 = load i32, i32* @PROTO_BROADDELAY, align 4
  %159 = load double, double* %6, align 8
  %160 = call i32 @proto_config(i32 %158, i32 0, double %159, i32* null)
  br label %161

161:                                              ; preds = %157, %153
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162, %142
  %164 = load i32, i32* @STATSDIR, align 4
  %165 = call i64 @HAVE_OPT(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i32, i32* @STATS_STATSDIR, align 4
  %169 = load i32, i32* @STATSDIR, align 4
  %170 = call i8* @OPT_ARG(i32 %169)
  %171 = call i32 @stats_config(i32 %168, i8* %170)
  br label %172

172:                                              ; preds = %167, %163
  %173 = load i32, i32* @TRUSTEDKEY, align 4
  %174 = call i64 @HAVE_OPT(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %207

176:                                              ; preds = %172
  %177 = load i32, i32* @TRUSTEDKEY, align 4
  %178 = call i32 @STACKCT_OPT(i32 %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* @TRUSTEDKEY, align 4
  %180 = call i8** @STACKLST_OPT(i32 %179)
  store i8** %180, i8*** %9, align 8
  br label %181

181:                                              ; preds = %202, %176
  %182 = load i8**, i8*** %9, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i32 1
  store i8** %183, i8*** %9, align 8
  %184 = load i8*, i8** %182, align 8
  store i8* %184, i8** %11, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = call i64 @atol(i8* %185)
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %181
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @NTP_MAXKEY, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %190, %181
  %195 = load i32, i32* @LOG_ERR, align 4
  %196 = load i8*, i8** %11, align 8
  %197 = call i32 (i32, i8*, ...) @msyslog(i32 %195, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %196)
  br label %201

198:                                              ; preds = %190
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @authtrust(i32 %199, i32 1)
  br label %201

201:                                              ; preds = %198, %194
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %8, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %181, label %206

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206, %172
  %208 = load i32, i32* @VAR, align 4
  %209 = call i64 @HAVE_OPT(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %231

211:                                              ; preds = %207
  %212 = load i32, i32* @VAR, align 4
  %213 = call i32 @STACKCT_OPT(i32 %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* @VAR, align 4
  %215 = call i8** @STACKLST_OPT(i32 %214)
  store i8** %215, i8*** %13, align 8
  br label %216

216:                                              ; preds = %226, %211
  %217 = load i8**, i8*** %13, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i32 1
  store i8** %218, i8*** %13, align 8
  %219 = load i8*, i8** %217, align 8
  store i8* %219, i8** %14, align 8
  %220 = load i8*, i8** %14, align 8
  %221 = load i8*, i8** %14, align 8
  %222 = call i64 @strlen(i8* %221)
  %223 = add nsw i64 %222, 1
  %224 = load i32, i32* @RW, align 4
  %225 = call i32 @set_sys_var(i8* %220, i64 %223, i32 %224)
  br label %226

226:                                              ; preds = %216
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %12, align 4
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %216, label %230

230:                                              ; preds = %226
  br label %231

231:                                              ; preds = %230, %207
  %232 = load i32, i32* @DVAR, align 4
  %233 = call i64 @HAVE_OPT(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %257

235:                                              ; preds = %231
  %236 = load i32, i32* @DVAR, align 4
  %237 = call i32 @STACKCT_OPT(i32 %236)
  store i32 %237, i32* %15, align 4
  %238 = load i32, i32* @DVAR, align 4
  %239 = call i8** @STACKLST_OPT(i32 %238)
  store i8** %239, i8*** %16, align 8
  br label %240

240:                                              ; preds = %252, %235
  %241 = load i8**, i8*** %16, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i32 1
  store i8** %242, i8*** %16, align 8
  %243 = load i8*, i8** %241, align 8
  store i8* %243, i8** %17, align 8
  %244 = load i8*, i8** %17, align 8
  %245 = load i8*, i8** %17, align 8
  %246 = call i64 @strlen(i8* %245)
  %247 = add nsw i64 %246, 1
  %248 = load i32, i32* @RW, align 4
  %249 = load i32, i32* @DEF, align 4
  %250 = or i32 %248, %249
  %251 = call i32 @set_sys_var(i8* %244, i64 %247, i32 %250)
  br label %252

252:                                              ; preds = %240
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %15, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %240, label %256

256:                                              ; preds = %252
  br label %257

257:                                              ; preds = %256, %231
  %258 = load i32, i32* @SLEW, align 4
  %259 = call i64 @HAVE_OPT(i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load i32, i32* @LOOP_MAX, align 4
  %263 = call i32 @loop_config(i32 %262, i32 600)
  br label %264

264:                                              ; preds = %261, %257
  %265 = load i32, i32* @UPDATEINTERVAL, align 4
  %266 = call i64 @HAVE_OPT(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %284

268:                                              ; preds = %264
  %269 = load i64, i64* @OPT_VALUE_UPDATEINTERVAL, align 8
  store i64 %269, i64* %18, align 8
  %270 = load i64, i64* %18, align 8
  %271 = icmp sge i64 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %268
  %273 = load i64, i64* %18, align 8
  store i64 %273, i64* @interface_interval, align 8
  br label %283

274:                                              ; preds = %268
  %275 = load i32, i32* @stderr, align 4
  %276 = load i64, i64* %18, align 8
  %277 = call i32 @fprintf(i32 %275, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i64 %276)
  %278 = load i32, i32* @LOG_ERR, align 4
  %279 = load i64, i64* %18, align 8
  %280 = call i32 (i32, i8*, ...) @msyslog(i32 %278, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i64 %279)
  %281 = load i32, i32* %5, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %5, align 4
  br label %283

283:                                              ; preds = %274, %272
  br label %284

284:                                              ; preds = %283, %264
  %285 = load i32, i32* %3, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32, i32* %3, align 4
  store i32 %288, i32* @cmdline_server_count, align 4
  %289 = load i8**, i8*** %4, align 8
  store i8** %289, i8*** @cmdline_servers, align 8
  br label %290

290:                                              ; preds = %287, %284
  %291 = load i32, i32* %5, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = call i32 @optionUsage(i32* @ntpdOptions, i32 2)
  br label %295

295:                                              ; preds = %293, %290
  ret void
}

declare dso_local i64 @HAVE_OPT(i32) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @proto_config(i32, i32, double, i32*) #1

declare dso_local i8* @OPT_ARG(i32) #1

declare dso_local i32 @stats_config(i32, i8*) #1

declare dso_local i32 @getauthkeys(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, double*) #1

declare dso_local i32 @STACKCT_OPT(i32) #1

declare dso_local i8** @STACKLST_OPT(i32) #1

declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @authtrust(i32, i32) #1

declare dso_local i32 @set_sys_var(i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @loop_config(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @optionUsage(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
