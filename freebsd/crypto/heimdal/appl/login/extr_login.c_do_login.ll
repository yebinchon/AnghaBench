; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login.c_do_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login.c_do_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udb = type { i64*, i64*, i32* }
%struct.passwd = type { i64, i8*, i8*, i8*, i64 }
%struct.group = type { i64 }

@remote_host = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"chown %s\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"chmod %s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"limits\00", align 1
@_PATH_LIMITS_CONF = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"setgid(%u)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"setuid(%u)\00", align 1
@NSIG = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"No home directory \22%s\22!\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Logging in with home = \22/\22.\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@_PATH_DEFPATH = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"environment\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@_PATH_ETC_ENVIRONMENT = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"motd\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"welcome\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"LOGNAME\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@AUTH_KRB5 = common dso_local global i64 0, align 8
@CLOCKS_PER_SEC = common dso_local global i32 0, align 4
@CPUUNLIM = common dso_local global i64 0, align 8
@C_JOBPROCS = common dso_local global i32 0, align 4
@C_PROC = common dso_local global i32 0, align 4
@L_CPU = common dso_local global i32 0, align 4
@UDBRC_INTER = common dso_local global i64 0, align 8
@UDB_NULL = common dso_local global %struct.udb* null, align 8
@auth = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.passwd*, i8*, i8*)* @do_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_login(%struct.passwd* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.group*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.passwd* %0, %struct.passwd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load %struct.passwd*, %struct.passwd** %4, align 8
  %20 = getelementptr inbounds %struct.passwd, %struct.passwd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = call i32 (...) @checknologin()
  br label %28

28:                                               ; preds = %26, %3
  %29 = load %struct.passwd*, %struct.passwd** %4, align 8
  %30 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** @remote_host, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i8*, i8** @remote_host, align 8
  br label %37

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i8* [ %35, %34 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %36 ]
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @update_utmp(i8* %31, i8* %38, i8* %39, i8* %40)
  %42 = call %struct.group* @getgrnam(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.group* %42, %struct.group** %9, align 8
  %43 = load %struct.group*, %struct.group** %9, align 8
  %44 = icmp ne %struct.group* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.group*, %struct.group** %9, align 8
  %47 = getelementptr inbounds %struct.group, %struct.group* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  br label %53

49:                                               ; preds = %37
  %50 = load %struct.passwd*, %struct.passwd** %4, align 8
  %51 = getelementptr inbounds %struct.passwd, %struct.passwd* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.passwd*, %struct.passwd** %4, align 8
  %56 = getelementptr inbounds %struct.passwd, %struct.passwd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @chown(i8* %54, i64 %57, i64 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @exit(i32 1) #4
  unreachable

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @S_IRUSR, align 4
  %72 = load i32, i32* @S_IWUSR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @S_IWGRP, align 4
  %75 = or i32 %73, %74
  %76 = call i64 @chmod(i8* %70, i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 @exit(i32 1) #4
  unreachable

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %69
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = call i8* @login_conf_get_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i8*, i8** @_PATH_LIMITS_CONF, align 8
  store i8* %94, i8** %12, align 8
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i8*, i8** %12, align 8
  %97 = load %struct.passwd*, %struct.passwd** %4, align 8
  %98 = call i32 @read_limits_conf(i8* %96, %struct.passwd* %97)
  br label %99

99:                                               ; preds = %95, %86
  %100 = load %struct.passwd*, %struct.passwd** %4, align 8
  %101 = getelementptr inbounds %struct.passwd, %struct.passwd* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @do_osfc2_magic(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = call i32 @exit(i32 1) #4
  unreachable

107:                                              ; preds = %99
  %108 = load %struct.passwd*, %struct.passwd** %4, align 8
  %109 = getelementptr inbounds %struct.passwd, %struct.passwd* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @setgid(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load %struct.passwd*, %struct.passwd** %4, align 8
  %115 = getelementptr inbounds %struct.passwd, %struct.passwd* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = call i32 @exit(i32 1) #4
  unreachable

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %107
  %125 = load %struct.passwd*, %struct.passwd** %4, align 8
  %126 = getelementptr inbounds %struct.passwd, %struct.passwd* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @setuid(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %124
  %131 = load %struct.passwd*, %struct.passwd** %4, align 8
  %132 = getelementptr inbounds %struct.passwd, %struct.passwd* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = call i64 @setuid(i64 0)
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %135, %124
  %139 = load %struct.passwd*, %struct.passwd** %4, align 8
  %140 = getelementptr inbounds %struct.passwd, %struct.passwd* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = call i32 @exit(i32 1) #4
  unreachable

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %135, %130
  store i32 1, i32* %11, align 4
  br label %150

150:                                              ; preds = %158, %149
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @NSIG, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @SIG_DFL, align 4
  %157 = call i32 @signal(i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %150

161:                                              ; preds = %150
  %162 = load %struct.passwd*, %struct.passwd** %4, align 8
  %163 = getelementptr inbounds %struct.passwd, %struct.passwd* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %10, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = call i64 @chdir(i8* %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %161
  %169 = load i32, i32* @stderr, align 4
  %170 = load %struct.passwd*, %struct.passwd** %4, align 8
  %171 = getelementptr inbounds %struct.passwd, %struct.passwd* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %172)
  %174 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = call i32 @exit(i32 0) #4
  unreachable

178:                                              ; preds = %168
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  %179 = load i32, i32* @stderr, align 4
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %161
  %182 = load i8*, i8** @_PATH_DEFPATH, align 8
  %183 = call i32 @add_env(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %182)
  %184 = call i8* @login_conf_get_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i8* %184, i8** %13, align 8
  %185 = load i32, i32* @MAXPATHLEN, align 4
  %186 = zext i32 %185 to i64
  %187 = call i8* @llvm.stacksave()
  store i8* %187, i8** %14, align 8
  %188 = alloca i8, i64 %186, align 16
  store i64 %186, i64* %15, align 8
  %189 = load i8*, i8** %13, align 8
  %190 = icmp eq i8* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %181
  %192 = load i8*, i8** @_PATH_ETC_ENVIRONMENT, align 8
  %193 = call i32 @login_read_env(i8* %192)
  br label %208

194:                                              ; preds = %181
  br label %195

195:                                              ; preds = %205, %204, %194
  %196 = trunc i64 %186 to i32
  %197 = call i32 @strsep_copy(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* %188, i32 %196)
  %198 = icmp ne i32 %197, -1
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = getelementptr inbounds i8, i8* %188, i64 0
  %201 = load i8, i8* %200, align 16
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %195

205:                                              ; preds = %199
  %206 = call i32 @login_read_env(i8* %188)
  br label %195

207:                                              ; preds = %195
  br label %208

208:                                              ; preds = %207, %191
  %209 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %209)
  %210 = call i8* @login_conf_get_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  store i8* %210, i8** %16, align 8
  %211 = load i32, i32* @MAXPATHLEN, align 4
  %212 = zext i32 %211 to i64
  %213 = call i8* @llvm.stacksave()
  store i8* %213, i8** %17, align 8
  %214 = alloca i8, i64 %212, align 16
  store i64 %212, i64* %18, align 8
  %215 = load i8*, i8** %16, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %231

217:                                              ; preds = %208
  br label %218

218:                                              ; preds = %228, %227, %217
  %219 = trunc i64 %212 to i32
  %220 = call i32 @strsep_copy(i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* %214, i32 %219)
  %221 = icmp ne i32 %220, -1
  br i1 %221, label %222, label %230

222:                                              ; preds = %218
  %223 = getelementptr inbounds i8, i8* %214, i64 0
  %224 = load i8, i8* %223, align 16
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %218

228:                                              ; preds = %222
  %229 = call i32 @show_file(i8* %214)
  br label %218

230:                                              ; preds = %218
  br label %239

231:                                              ; preds = %208
  %232 = call i8* @login_conf_get_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  store i8* %232, i8** %16, align 8
  %233 = load i8*, i8** %16, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i8*, i8** %16, align 8
  %237 = call i32 @show_file(i8* %236)
  br label %238

238:                                              ; preds = %235, %231
  br label %239

239:                                              ; preds = %238, %230
  %240 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i8*, i8** %10, align 8
  %242 = call i32 @add_env(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %241)
  %243 = load %struct.passwd*, %struct.passwd** %4, align 8
  %244 = getelementptr inbounds %struct.passwd, %struct.passwd* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @add_env(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %245)
  %247 = load %struct.passwd*, %struct.passwd** %4, align 8
  %248 = getelementptr inbounds %struct.passwd, %struct.passwd* %247, i32 0, i32 1
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @add_env(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* %249)
  %251 = load %struct.passwd*, %struct.passwd** %4, align 8
  %252 = getelementptr inbounds %struct.passwd, %struct.passwd* %251, i32 0, i32 3
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @add_env(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* %253)
  %255 = load %struct.passwd*, %struct.passwd** %4, align 8
  %256 = getelementptr inbounds %struct.passwd, %struct.passwd* %255, i32 0, i32 3
  %257 = load i8*, i8** %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = call i32 @exec_shell(i8* %257, i32 %258)
  ret void
}

declare dso_local i32 @checknologin(...) #1

declare dso_local i32 @update_utmp(i8*, i8*, i8*, i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @chown(i8*, i64, i64) #1

declare dso_local i32 @warn(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i8* @login_conf_get_string(i8*) #1

declare dso_local i32 @read_limits_conf(i8*, %struct.passwd*) #1

declare dso_local i64 @do_osfc2_magic(i64) #1

declare dso_local i64 @setgid(i64) #1

declare dso_local i64 @setuid(i64) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @add_env(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @login_read_env(i8*) #1

declare dso_local i32 @strsep_copy(i8**, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @show_file(i8*) #1

declare dso_local i32 @exec_shell(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
