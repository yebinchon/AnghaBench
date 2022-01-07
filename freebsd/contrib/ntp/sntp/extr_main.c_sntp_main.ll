; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_sntp_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_sntp_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.event_config = type { i32 }

@EX_SOFTWARE = common dso_local global i32 0, align 4
@sntpOptions = common dso_local global i32 0, align 4
@OPT_VALUE_SET_DEBUG_LEVEL = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"init_lib() done, %s%s\0A\00", align 1
@ipv4_works = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"ipv4_works \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ipv6_works = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"ipv6_works \00", align 1
@OPT_VALUE_NTPVERSION = common dso_local global i32 0, align 4
@ntpver = common dso_local global i32 0, align 4
@OPT_VALUE_STEPLIMIT = common dso_local global i32 0, align 4
@steplimit = common dso_local global i32 0, align 4
@OPT_VALUE_GAP = common dso_local global i32 0, align 4
@gap = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@LOGFILE = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BROADCAST = common dso_local global i32 0, align 4
@CONCURRENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [72 x i8] c"%s: Must supply at least one of -b hostname, -c hostname, or hostname.\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@OPT_VALUE_TIMEOUT = common dso_local global i32 0, align 4
@response_timeout = common dso_local global i32 0, align 4
@response_tv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@ai_fam_pref = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"No ipv6 support available, forcing ipv4\0A\00", align 1
@IPV4 = common dso_local global i32 0, align 4
@IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@KOD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KEYFILE = common dso_local global i32 0, align 4
@keys = common dso_local global i32 0, align 4
@sntp_libevent_log_cb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: event_config_new() failed!\0A\00", align 1
@EV_FEATURE_FDS = common dso_local global i32 0, align 4
@base = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"%s: event_base_new() failed!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@worker_per_query = common dso_local global i32 0, align 4
@sntp_addremove_fd = common dso_local global i32 0, align 4
@addremove_io_fd = common dso_local global i32* null, align 8
@CTX_BCST = common dso_local global i32 0, align 4
@CTX_UCST = common dso_local global i32 0, align 4
@CTX_CONC = common dso_local global i32 0, align 4
@start_tv = common dso_local global i32 0, align 4
@time_adjusted = common dso_local global i32 0, align 4
@STEP = common dso_local global i32 0, align 4
@SLEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sntp_main(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.event_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @sntp_init_logging(i8* %18)
  %20 = call i32 (...) @libevent_version_ok()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EX_SOFTWARE, align 4
  %24 = call i32 @exit(i32 %23) #3
  unreachable

25:                                               ; preds = %3
  %26 = call i32 (...) @init_lib()
  %27 = call i32 (...) @init_auth()
  %28 = load i32, i32* %5, align 4
  %29 = load i8**, i8*** %6, align 8
  %30 = call i32 @ntpOptionProcess(i32* @sntpOptions, i32 %28, i8** %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i8**, i8*** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8** %37, i8*** %6, align 8
  %38 = load i64, i64* @OPT_VALUE_SET_DEBUG_LEVEL, align 8
  store i64 %38, i64* @debug, align 8
  %39 = load i64, i64* @ipv4_works, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i64, i64* @ipv6_works, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 @TRACE(i32 2, i8* %46)
  %48 = load i32, i32* @OPT_VALUE_NTPVERSION, align 4
  store i32 %48, i32* @ntpver, align 4
  %49 = load i32, i32* @OPT_VALUE_STEPLIMIT, align 4
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %50, 1.000000e+03
  %52 = fptosi double %51 to i32
  store i32 %52, i32* @steplimit, align 4
  %53 = load i32, i32* @OPT_VALUE_GAP, align 4
  %54 = mul nsw i32 %53, 1000
  %55 = call i32 @max(i32 0, i32 %54)
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gap, i32 0, i32 0), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gap, i32 0, i32 0), align 4
  %57 = call i32 @min(i32 %56, i32 999999)
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gap, i32 0, i32 0), align 4
  %58 = load i32, i32* @LOGFILE, align 4
  %59 = call i64 @HAVE_OPT(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %25
  %62 = load i32, i32* @LOGFILE, align 4
  %63 = call i32 @OPT_ARG(i32 %62)
  %64 = call i32 @open_logfile(i32 %63)
  br label %65

65:                                               ; preds = %61, %25
  %66 = load i32, i32* @LOG_INFO, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @msyslog(i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 0, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load i32, i32* @BROADCAST, align 4
  %73 = call i64 @HAVE_OPT(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @CONCURRENT, align 4
  %77 = call i64 @HAVE_OPT(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** @progname, align 8
  %81 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* @EX_USAGE, align 4
  %83 = call i32 @exit(i32 %82) #3
  unreachable

84:                                               ; preds = %75, %71, %65
  %85 = load i32, i32* @OPT_VALUE_TIMEOUT, align 4
  store i32 %85, i32* @response_timeout, align 4
  %86 = load i32, i32* @response_timeout, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @response_tv, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @response_tv, i32 0, i32 0), align 8
  %87 = call i64 (...) @isc_net_probeipv6()
  %88 = load i64, i64* @ISC_R_SUCCESS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @AF_INET, align 4
  store i32 %91, i32* @ai_fam_pref, align 4
  %92 = call i32 @TRACE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %107

93:                                               ; preds = %84
  %94 = load i32, i32* @IPV4, align 4
  %95 = call i64 @HAVE_OPT(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @AF_INET, align 4
  store i32 %98, i32* @ai_fam_pref, align 4
  br label %106

99:                                               ; preds = %93
  %100 = load i32, i32* @IPV6, align 4
  %101 = call i64 @HAVE_OPT(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @AF_INET6, align 4
  store i32 %104, i32* @ai_fam_pref, align 4
  br label %105

105:                                              ; preds = %103, %99
  br label %106

106:                                              ; preds = %105, %97
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i32, i32* @KOD, align 4
  %109 = call i32 @OPT_ARG(i32 %108)
  %110 = load i32, i32* @FALSE, align 4
  %111 = call i32 @kod_init_kod_db(i32 %109, i32 %110)
  %112 = load i32, i32* @KEYFILE, align 4
  %113 = call i32 @OPT_ARG(i32 %112)
  %114 = call i32 @auth_init(i32 %113, i32* @keys)
  %115 = call i32 @event_set_log_callback(i32* @sntp_libevent_log_cb)
  %116 = load i64, i64* @debug, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = call i32 (...) @event_enable_debug_mode()
  br label %120

120:                                              ; preds = %118, %107
  %121 = call %struct.event_config* (...) @event_config_new()
  store %struct.event_config* %121, %struct.event_config** %11, align 8
  %122 = load %struct.event_config*, %struct.event_config** %11, align 8
  %123 = icmp eq %struct.event_config* null, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i8*, i8** @progname, align 8
  %126 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %125)
  store i32 -1, i32* %4, align 4
  br label %223

127:                                              ; preds = %120
  %128 = load %struct.event_config*, %struct.event_config** %11, align 8
  %129 = load i32, i32* @EV_FEATURE_FDS, align 4
  %130 = call i32 @event_config_require_features(%struct.event_config* %128, i32 %129)
  %131 = load %struct.event_config*, %struct.event_config** %11, align 8
  %132 = call i32* @event_base_new_with_config(%struct.event_config* %131)
  store i32* %132, i32** @base, align 8
  %133 = load %struct.event_config*, %struct.event_config** %11, align 8
  %134 = call i32 @event_config_free(%struct.event_config* %133)
  %135 = load i32*, i32** @base, align 8
  %136 = icmp eq i32* null, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i8*, i8** @progname, align 8
  %139 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %138)
  store i32 -1, i32* %4, align 4
  br label %223

140:                                              ; preds = %127
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* @worker_per_query, align 4
  store i32* @sntp_addremove_fd, i32** @addremove_io_fd, align 8
  %142 = call i32 (...) @open_sockets()
  %143 = load i32, i32* @BROADCAST, align 4
  %144 = call i64 @HAVE_OPT(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = load i32, i32* @BROADCAST, align 4
  %148 = call i32 @STACKCT_OPT(i32 %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* @BROADCAST, align 4
  %150 = call i8** @STACKLST_OPT(i32 %149)
  store i8** %150, i8*** %13, align 8
  br label %151

151:                                              ; preds = %155, %146
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %12, align 4
  %154 = icmp sgt i32 %152, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i8**, i8*** %13, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* @CTX_BCST, align 4
  %159 = call i32 @handle_lookup(i8* %157, i32 %158)
  %160 = load i8**, i8*** %13, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i32 1
  store i8** %161, i8*** %13, align 8
  br label %151

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162, %140
  %164 = load i32, i32* @CONCURRENT, align 4
  %165 = call i64 @HAVE_OPT(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %163
  %168 = load i32, i32* @CONCURRENT, align 4
  %169 = call i32 @STACKCT_OPT(i32 %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* @CONCURRENT, align 4
  %171 = call i8** @STACKLST_OPT(i32 %170)
  store i8** %171, i8*** %15, align 8
  br label %172

172:                                              ; preds = %176, %167
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %14, align 4
  %175 = icmp sgt i32 %173, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i8**, i8*** %15, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* @CTX_UCST, align 4
  %180 = load i32, i32* @CTX_CONC, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @handle_lookup(i8* %178, i32 %181)
  %183 = load i8**, i8*** %15, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i32 1
  store i8** %184, i8*** %15, align 8
  br label %172

185:                                              ; preds = %172
  br label %186

186:                                              ; preds = %185, %163
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %199, %186
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %187
  %192 = load i8**, i8*** %6, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = load i32, i32* @CTX_UCST, align 4
  %198 = call i32 @handle_lookup(i8* %196, i32 %197)
  br label %199

199:                                              ; preds = %191
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %187

202:                                              ; preds = %187
  %203 = load i32*, i32** @base, align 8
  %204 = call i32 @gettimeofday_cached(i32* %203, i32* @start_tv)
  %205 = load i32*, i32** @base, align 8
  %206 = call i32 @event_base_dispatch(i32* %205)
  %207 = load i32*, i32** @base, align 8
  %208 = call i32 @event_base_free(i32* %207)
  %209 = load i32, i32* @time_adjusted, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %220, label %211

211:                                              ; preds = %202
  %212 = load i32, i32* @STEP, align 4
  %213 = call i64 @ENABLED_OPT(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* @SLEW, align 4
  %217 = call i64 @ENABLED_OPT(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215, %211
  store i32 1, i32* %9, align 4
  br label %221

220:                                              ; preds = %215, %202
  store i32 0, i32* %9, align 4
  br label %221

221:                                              ; preds = %220, %219
  %222 = load i32, i32* %9, align 4
  store i32 %222, i32* %4, align 4
  br label %223

223:                                              ; preds = %221, %137, %124
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @sntp_init_logging(i8*) #1

declare dso_local i32 @libevent_version_ok(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_lib(...) #1

declare dso_local i32 @init_auth(...) #1

declare dso_local i32 @ntpOptionProcess(i32*, i32, i8**) #1

declare dso_local i32 @TRACE(i32, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @HAVE_OPT(i32) #1

declare dso_local i32 @open_logfile(i32) #1

declare dso_local i32 @OPT_ARG(i32) #1

declare dso_local i32 @msyslog(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @isc_net_probeipv6(...) #1

declare dso_local i32 @kod_init_kod_db(i32, i32) #1

declare dso_local i32 @auth_init(i32, i32*) #1

declare dso_local i32 @event_set_log_callback(i32*) #1

declare dso_local i32 @event_enable_debug_mode(...) #1

declare dso_local %struct.event_config* @event_config_new(...) #1

declare dso_local i32 @event_config_require_features(%struct.event_config*, i32) #1

declare dso_local i32* @event_base_new_with_config(%struct.event_config*) #1

declare dso_local i32 @event_config_free(%struct.event_config*) #1

declare dso_local i32 @open_sockets(...) #1

declare dso_local i32 @STACKCT_OPT(i32) #1

declare dso_local i8** @STACKLST_OPT(i32) #1

declare dso_local i32 @handle_lookup(i8*, i32) #1

declare dso_local i32 @gettimeofday_cached(i32*, i32*) #1

declare dso_local i32 @event_base_dispatch(i32*) #1

declare dso_local i32 @event_base_free(i32*) #1

declare dso_local i64 @ENABLED_OPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
