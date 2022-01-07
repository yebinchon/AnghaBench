; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_ntpdatemain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_ntpdatemain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.recvbuf = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@ipv6_works = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@ai_fam_templ = common dso_local global i32 0, align 4
@progname = common dso_local global i8* null, align 8
@syslogit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"46a:bBde:k:o:p:qst:uv\00", align 1
@EOF = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ntp_optarg = common dso_local global i8* null, align 8
@sys_authenticate = common dso_local global i32 0, align 4
@sys_authkey = common dso_local global i32 0, align 4
@always_step = common dso_local global i32 0, align 4
@never_step = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: encryption delay %s is unlikely\0A\00", align 1
@sys_authdelay = common dso_local global i32 0, align 4
@key_file = common dso_local global i8* null, align 8
@sys_version = common dso_local global i8* null, align 8
@NTP_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: number of samples (%d) is invalid\0A\00", align 1
@sys_samples = common dso_local global i64 0, align 8
@simple_query = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: timeout %s is undecodeable\0A\00", align 1
@TIMER_HZ = common dso_local global i32 0, align 4
@sys_timeout = common dso_local global i32 0, align 4
@MINTIMEOUT = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@unpriv_port = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [104 x i8] c"usage: %s [-46bBdqsuv] [-a key#] [-e delay] [-k file] [-p samples] [-o version#] [-t timeo] server ...\0A\00", align 1
@DEFSAMPLES = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"ntpdate\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Version = common dso_local global i32 0, align 4
@ntp_optind = common dso_local global i32 0, align 4
@sys_numservers = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"no servers can be used, exiting\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"no key file <%s>, exiting\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"authentication key %lu unknown\00", align 1
@initializing = common dso_local global i64 0, align 8
@complete_servers = common dso_local global i64 0, align 8
@fdmask = common dso_local global i8* null, align 8
@alarm_flag = common dso_local global i64 0, align 8
@maxfd = common dso_local global i32 0, align 4
@timeout = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"select() error: %m\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"select(): nfound = %d, error: %m\00", align 1
@BUFSIZ = common dso_local global i32 0, align 4
@KEYFILE = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_NTP = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@NTPDATE_PRIO = common dso_local global i32 0, align 4
@PRIO_PROCESS = common dso_local global i32 0, align 4
@WSAEINTR = common dso_local global i64 0, align 8
@_IOLBF = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@key_file_storage = common dso_local global i8* null, align 8
@nbsock = common dso_local global i64 0, align 8
@ntpdate_timerid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntpdatemain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.recvbuf*, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %13 = call i32 (...) @init_lib()
  %14 = load i32, i32* @ipv6_works, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @AF_INET, align 4
  store i32 %17, i32* @ai_fam_templ, align 4
  br label %18

18:                                               ; preds = %16, %2
  store i32 0, i32* %9, align 4
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @progname, align 8
  store i32 0, i32* @syslogit, align 4
  br label %22

22:                                               ; preds = %122, %18
  %23 = load i32, i32* %3, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = call i32 @ntp_getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %123

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %121 [
    i32 52, label %30
    i32 54, label %32
    i32 97, label %34
    i32 98, label %39
    i32 66, label %42
    i32 100, label %45
    i32 101, label %48
    i32 107, label %67
    i32 111, label %69
    i32 112, label %72
    i32 113, label %93
    i32 115, label %94
    i32 116, label %95
    i32 118, label %116
    i32 117, label %117
    i32 63, label %118
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @AF_INET, align 4
  store i32 %31, i32* @ai_fam_templ, align 4
  br label %122

32:                                               ; preds = %28
  %33 = load i32, i32* @AF_INET6, align 4
  store i32 %33, i32* @ai_fam_templ, align 4
  br label %122

34:                                               ; preds = %28
  %35 = load i8*, i8** @ntp_optarg, align 8
  %36 = call i8* @atoi(i8* %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %10, align 4
  store i32 1, i32* @sys_authenticate, align 4
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* @sys_authkey, align 4
  br label %122

39:                                               ; preds = %28
  %40 = load i32, i32* @always_step, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @always_step, align 4
  store i32 0, i32* @never_step, align 4
  br label %122

42:                                               ; preds = %28
  %43 = load i32, i32* @never_step, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @never_step, align 4
  store i32 0, i32* @always_step, align 4
  br label %122

45:                                               ; preds = %28
  %46 = load i64, i64* @debug, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* @debug, align 8
  br label %122

48:                                               ; preds = %28
  %49 = load i8*, i8** @ntp_optarg, align 8
  %50 = call i32 @atolfp(i8* %49, %struct.TYPE_11__* %8)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** @progname, align 8
  %59 = load i8*, i8** @ntp_optarg, align 8
  %60 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59)
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %66

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* @sys_authdelay, align 4
  br label %66

66:                                               ; preds = %63, %56
  br label %122

67:                                               ; preds = %28
  %68 = load i8*, i8** @ntp_optarg, align 8
  store i8* %68, i8** @key_file, align 8
  br label %122

69:                                               ; preds = %28
  %70 = load i8*, i8** @ntp_optarg, align 8
  %71 = call i8* @atoi(i8* %70)
  store i8* %71, i8** @sys_version, align 8
  br label %122

72:                                               ; preds = %28
  %73 = load i8*, i8** @ntp_optarg, align 8
  %74 = call i8* @atoi(i8* %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @NTP_SHIFT, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78, %72
  %83 = load i32, i32* @stderr, align 4
  %84 = load i8*, i8** @progname, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %84, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %92

89:                                               ; preds = %78
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* @sys_samples, align 8
  br label %92

92:                                               ; preds = %89, %82
  br label %122

93:                                               ; preds = %28
  store i32 1, i32* @simple_query, align 4
  br label %122

94:                                               ; preds = %28
  store i32 1, i32* @syslogit, align 4
  br label %122

95:                                               ; preds = %28
  %96 = load i8*, i8** @ntp_optarg, align 8
  %97 = call i32 @atolfp(i8* %96, %struct.TYPE_11__* %8)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** @progname, align 8
  %102 = load i8*, i8** @ntp_optarg, align 8
  %103 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %101, i8* %102)
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %115

106:                                              ; preds = %95
  %107 = call i32 @LFPTOFP(%struct.TYPE_11__* %8)
  %108 = load i32, i32* @TIMER_HZ, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %109, 32768
  %111 = ashr i32 %110, 16
  store i32 %111, i32* @sys_timeout, align 4
  %112 = load i32, i32* @sys_timeout, align 4
  %113 = load i32, i32* @MINTIMEOUT, align 4
  %114 = call i32 @max(i32 %112, i32 %113)
  store i32 %114, i32* @sys_timeout, align 4
  br label %115

115:                                              ; preds = %106, %99
  br label %122

116:                                              ; preds = %28
  store i32 1, i32* @verbose, align 4
  br label %122

117:                                              ; preds = %28
  store i32 1, i32* @unpriv_port, align 4
  br label %122

118:                                              ; preds = %28
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %122

121:                                              ; preds = %28
  br label %122

122:                                              ; preds = %121, %118, %117, %116, %115, %94, %93, %92, %69, %67, %66, %45, %42, %39, %34, %32, %30
  br label %22

123:                                              ; preds = %22
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, i32* @stderr, align 4
  %128 = load i8*, i8** @progname, align 8
  %129 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i8* %128)
  %130 = call i32 @exit(i32 2) #3
  unreachable

131:                                              ; preds = %123
  %132 = load i64, i64* @sys_samples, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* @simple_query, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @DEFSAMPLES, align 4
  br label %140

140:                                              ; preds = %138, %137
  %141 = phi i32 [ 1, %137 ], [ %139, %138 ]
  %142 = sext i32 %141 to i64
  store i64 %142, i64* @sys_samples, align 8
  br label %143

143:                                              ; preds = %140, %131
  %144 = load i64, i64* @debug, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* @simple_query, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146, %143
  %150 = load i32, i32* @stdout, align 4
  %151 = call i32 @setlinebuf(i32 %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* @syslogit, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* @LOG_PID, align 4
  %157 = call i32 (i8*, i32, ...) @openlog(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i64, i64* @debug, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* @verbose, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161, %158
  %165 = load i32, i32* @LOG_NOTICE, align 4
  %166 = load i32, i32* @Version, align 4
  %167 = call i32 (i32, i8*, ...) @msyslog(i32 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %164, %161
  br label %169

169:                                              ; preds = %180, %168
  %170 = load i32, i32* @ntp_optind, align 4
  %171 = load i32, i32* %3, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  %174 = load i8**, i8*** %4, align 8
  %175 = load i32, i32* @ntp_optind, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @addserver(i8* %178)
  br label %180

180:                                              ; preds = %173
  %181 = load i32, i32* @ntp_optind, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @ntp_optind, align 4
  br label %169

183:                                              ; preds = %169
  %184 = load i64, i64* @sys_numservers, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i32, i32* @LOG_ERR, align 4
  %188 = call i32 (i32, i8*, ...) @msyslog(i32 %187, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %189 = call i32 @exit(i32 1) #3
  unreachable

190:                                              ; preds = %183
  %191 = load i32, i32* @sys_authenticate, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %216

193:                                              ; preds = %190
  %194 = call i32 (...) @init_auth()
  %195 = load i8*, i8** @key_file, align 8
  %196 = call i32 @authreadkeys(i8* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* @LOG_ERR, align 4
  %200 = load i8*, i8** @key_file, align 8
  %201 = call i32 (i32, i8*, ...) @msyslog(i32 %199, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %200)
  %202 = call i32 @exit(i32 1) #3
  unreachable

203:                                              ; preds = %193
  %204 = load i32, i32* @sys_authkey, align 4
  %205 = call i32 @authtrust(i32 %204, i32 1)
  %206 = load i32, i32* @sys_authkey, align 4
  %207 = call i32 @authistrusted(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = load i32, i32* @LOG_ERR, align 4
  %211 = load i32, i32* @sys_authkey, align 4
  %212 = sext i32 %211 to i64
  %213 = call i32 (i32, i8*, ...) @msyslog(i32 %210, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %212)
  %214 = call i32 @exit(i32 1) #3
  unreachable

215:                                              ; preds = %203
  br label %216

216:                                              ; preds = %215, %190
  %217 = call i32 (...) @init_io()
  %218 = call i32 (...) @init_alarm()
  store i64 0, i64* @initializing, align 8
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %285, %216
  %220 = load i64, i64* @complete_servers, align 8
  %221 = load i64, i64* @sys_numservers, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %223, label %286

223:                                              ; preds = %219
  %224 = load i8*, i8** @fdmask, align 8
  store i8* %224, i8** %12, align 8
  %225 = load i64, i64* @alarm_flag, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  store i32 1, i32* %5, align 4
  store i64 0, i64* @alarm_flag, align 8
  br label %228

228:                                              ; preds = %227, %223
  %229 = call i32 (...) @full_recvbuffs()
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %5, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %269, label %232

232:                                              ; preds = %228
  %233 = load i32, i32* %6, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %269

235:                                              ; preds = %232
  %236 = load i32, i32* @maxfd, align 4
  %237 = call i32 @select(i32 %236, i8** %12, i32* null, i32* null, %struct.TYPE_12__* @timeout)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = call i32 (...) @input_handler()
  br label %263

242:                                              ; preds = %235
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @SOCKET_ERROR, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %254

246:                                              ; preds = %242
  %247 = load i64, i64* @errno, align 8
  %248 = load i64, i64* @EINTR, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load i32, i32* @LOG_ERR, align 4
  %252 = call i32 (i32, i8*, ...) @msyslog(i32 %251, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %253

253:                                              ; preds = %250, %246
  br label %262

254:                                              ; preds = %242
  %255 = load i64, i64* @errno, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load i32, i32* @LOG_DEBUG, align 4
  %259 = load i32, i32* %11, align 4
  %260 = call i32 (i32, i8*, ...) @msyslog(i32 %258, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %257, %254
  br label %262

262:                                              ; preds = %261, %253
  br label %263

263:                                              ; preds = %262, %240
  %264 = load i64, i64* @alarm_flag, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  store i32 1, i32* %5, align 4
  store i64 0, i64* @alarm_flag, align 8
  br label %267

267:                                              ; preds = %266, %263
  %268 = call i32 (...) @full_recvbuffs()
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %267, %232, %228
  %270 = call %struct.recvbuf* (...) @get_full_recv_buffer()
  store %struct.recvbuf* %270, %struct.recvbuf** %7, align 8
  br label %271

271:                                              ; preds = %274, %269
  %272 = load %struct.recvbuf*, %struct.recvbuf** %7, align 8
  %273 = icmp ne %struct.recvbuf* %272, null
  br i1 %273, label %274, label %280

274:                                              ; preds = %271
  %275 = load %struct.recvbuf*, %struct.recvbuf** %7, align 8
  %276 = call i32 @receive(%struct.recvbuf* %275)
  %277 = load %struct.recvbuf*, %struct.recvbuf** %7, align 8
  %278 = call i32 @freerecvbuf(%struct.recvbuf* %277)
  %279 = call %struct.recvbuf* (...) @get_full_recv_buffer()
  store %struct.recvbuf* %279, %struct.recvbuf** %7, align 8
  br label %271

280:                                              ; preds = %271
  %281 = load i32, i32* %5, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = call i32 (...) @timer()
  store i32 0, i32* %5, align 4
  br label %285

285:                                              ; preds = %283, %280
  br label %219

286:                                              ; preds = %219
  %287 = call i32 (...) @clock_adjust()
  ret i32 %287
}

declare dso_local i32 @init_lib(...) #1

declare dso_local i32 @ntp_getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @atolfp(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @LFPTOFP(%struct.TYPE_11__*) #1

declare dso_local i32 @max(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setlinebuf(i32) #1

declare dso_local i32 @openlog(i8*, i32, ...) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

declare dso_local i32 @addserver(i8*) #1

declare dso_local i32 @init_auth(...) #1

declare dso_local i32 @authreadkeys(i8*) #1

declare dso_local i32 @authtrust(i32, i32) #1

declare dso_local i32 @authistrusted(i32) #1

declare dso_local i32 @init_io(...) #1

declare dso_local i32 @init_alarm(...) #1

declare dso_local i32 @full_recvbuffs(...) #1

declare dso_local i32 @select(i32, i8**, i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @input_handler(...) #1

declare dso_local %struct.recvbuf* @get_full_recv_buffer(...) #1

declare dso_local i32 @receive(%struct.recvbuf*) #1

declare dso_local i32 @freerecvbuf(%struct.recvbuf*) #1

declare dso_local i32 @timer(...) #1

declare dso_local i32 @clock_adjust(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
