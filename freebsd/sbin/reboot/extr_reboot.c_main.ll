; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/reboot/extr_reboot.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/reboot/extr_reboot.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32, i32 }
%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"halt\00", align 1
@dohalt = common dso_local global i32 0, align 4
@RB_HALT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"cdk:lNnpqr\00", align 1
@RB_POWERCYCLE = common dso_local global i32 0, align 4
@RB_DUMP = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@RB_NOSYNC = common dso_local global i32 0, align 4
@RB_POWEROFF = common dso_local global i32 0, align 4
@RB_REROOT = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"cannot dump (-d) when halting; must reboot instead\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"-N cannot be used with -n\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"-c and -p cannot be used together\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"-r cannot be used with -c, -d, -n, or -p\00", align 1
@EPERM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"/boot/nextboot.conf\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"nextboot_enable=\22YES\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"kernel=\22\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@LOG_AUTH = common dso_local global i32 0, align 4
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_CRIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"halted by %s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"reroot\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"rerooted by %s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"powered off by %s\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"power cycled by %s\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"rebooted by %s\00", align 1
@SHUTDOWN_TIME = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGEMT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"SIGEMT init\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"SIGTSTP init\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"SIGTERM processes\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [40 x i8] c"WARNING: some process(es) wouldn't die\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"(can't restart init): \00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.utmpx, align 4
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %19, align 8
  %20 = call i32 (...) @getprogname()
  %21 = call i32* @strstr(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  store i32 1, i32* @dohalt, align 4
  %24 = load i32, i32* @RB_HALT, align 4
  store i32 %24, i32* %9, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %23
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %62, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @getopt(i32 %28, i8** %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %63

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %60 [
    i32 99, label %34
    i32 100, label %38
    i32 107, label %42
    i32 108, label %44
    i32 110, label %45
    i32 78, label %49
    i32 112, label %50
    i32 113, label %54
    i32 114, label %55
    i32 63, label %59
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @RB_POWERCYCLE, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %62

38:                                               ; preds = %32
  %39 = load i32, i32* @RB_DUMP, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %62

42:                                               ; preds = %32
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** %19, align 8
  br label %62

44:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  br label %62

45:                                               ; preds = %32
  store i32 1, i32* %13, align 4
  %46 = load i32, i32* @RB_NOSYNC, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %62

49:                                               ; preds = %32
  store i32 1, i32* %13, align 4
  store i32 1, i32* %16, align 4
  br label %62

50:                                               ; preds = %32
  %51 = load i32, i32* @RB_POWEROFF, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %62

54:                                               ; preds = %32
  store i32 1, i32* %14, align 4
  br label %62

55:                                               ; preds = %32
  %56 = load i32, i32* @RB_REROOT, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %62

59:                                               ; preds = %32
  br label %60

60:                                               ; preds = %32, %59
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %55, %54, %50, %49, %45, %44, %42, %38, %34
  br label %27

63:                                               ; preds = %27
  %64 = load i64, i64* @optind, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  %69 = load i64, i64* @optind, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 %69
  store i8** %71, i8*** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = call i32 (...) @usage()
  br label %76

76:                                               ; preds = %74, %63
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @RB_DUMP, align 4
  %79 = load i32, i32* @RB_HALT, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = load i32, i32* @RB_DUMP, align 4
  %83 = load i32, i32* @RB_HALT, align 4
  %84 = or i32 %82, %83
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %76
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @RB_NOSYNC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %91, %88
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @RB_POWEROFF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @RB_POWERCYCLE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %103, %98
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @RB_REROOT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @RB_REROOT, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %115, %110
  %122 = call i64 (...) @geteuid()
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @EPERM, align 4
  store i32 %125, i32* @errno, align 4
  %126 = call i32 @err(i32 1, i8* null)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @reboot(i32 %131)
  %133 = call i32 @err(i32 1, i8* null)
  br label %134

134:                                              ; preds = %130, %127
  %135 = load i8*, i8** %19, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %161

137:                                              ; preds = %134
  %138 = load i32, i32* @O_WRONLY, align 4
  %139 = load i32, i32* @O_CREAT, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @O_TRUNC, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @open(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %142, i32 292)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp sgt i32 %144, -1
  br i1 %145, label %146, label %160

146:                                              ; preds = %137
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @write(i32 %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 22)
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @write(i32 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %151 = load i32, i32* %11, align 4
  %152 = load i8*, i8** %19, align 8
  %153 = load i8*, i8** %19, align 8
  %154 = call i32 @strlen(i8* %153)
  %155 = call i32 @write(i32 %151, i8* %152, i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @write(i32 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 2)
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @close(i32 %158)
  br label %160

160:                                              ; preds = %146, %137
  br label %161

161:                                              ; preds = %160, %134
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %240, label %164

164:                                              ; preds = %161
  %165 = call i8* (...) @getlogin()
  store i8* %165, i8** %18, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = call i32 (...) @getuid()
  %169 = call %struct.passwd* @getpwuid(i32 %168)
  store %struct.passwd* %169, %struct.passwd** %7, align 8
  %170 = icmp ne %struct.passwd* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load %struct.passwd*, %struct.passwd** %7, align 8
  %173 = getelementptr inbounds %struct.passwd, %struct.passwd* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  br label %176

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175, %171
  %177 = phi i8* [ %174, %171 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %175 ]
  store i8* %177, i8** %18, align 8
  br label %178

178:                                              ; preds = %176, %164
  %179 = load i32, i32* @dohalt, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load i32, i32* @LOG_AUTH, align 4
  %183 = load i32, i32* @LOG_CONS, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @openlog(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %184)
  %186 = load i32, i32* @LOG_CRIT, align 4
  %187 = load i8*, i8** %18, align 8
  %188 = call i32 @syslog(i32 %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %187)
  br label %239

189:                                              ; preds = %178
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @RB_REROOT, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load i32, i32* @LOG_AUTH, align 4
  %196 = load i32, i32* @LOG_CONS, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @openlog(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 %197)
  %199 = load i32, i32* @LOG_CRIT, align 4
  %200 = load i8*, i8** %18, align 8
  %201 = call i32 @syslog(i32 %199, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %200)
  br label %238

202:                                              ; preds = %189
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @RB_POWEROFF, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = load i32, i32* @LOG_AUTH, align 4
  %209 = load i32, i32* @LOG_CONS, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @openlog(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 %210)
  %212 = load i32, i32* @LOG_CRIT, align 4
  %213 = load i8*, i8** %18, align 8
  %214 = call i32 @syslog(i32 %212, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* %213)
  br label %237

215:                                              ; preds = %202
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @RB_POWERCYCLE, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %215
  %221 = load i32, i32* @LOG_AUTH, align 4
  %222 = load i32, i32* @LOG_CONS, align 4
  %223 = or i32 %221, %222
  %224 = call i32 @openlog(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 %223)
  %225 = load i32, i32* @LOG_CRIT, align 4
  %226 = load i8*, i8** %18, align 8
  %227 = call i32 @syslog(i32 %225, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %226)
  br label %236

228:                                              ; preds = %215
  %229 = load i32, i32* @LOG_AUTH, align 4
  %230 = load i32, i32* @LOG_CONS, align 4
  %231 = or i32 %229, %230
  %232 = call i32 @openlog(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 %231)
  %233 = load i32, i32* @LOG_CRIT, align 4
  %234 = load i8*, i8** %18, align 8
  %235 = call i32 @syslog(i32 %233, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %234)
  br label %236

236:                                              ; preds = %228, %220
  br label %237

237:                                              ; preds = %236, %207
  br label %238

238:                                              ; preds = %237, %194
  br label %239

239:                                              ; preds = %238, %181
  br label %240

240:                                              ; preds = %239, %161
  %241 = load i32, i32* @SHUTDOWN_TIME, align 4
  %242 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 1
  store i32 %241, i32* %242, align 4
  %243 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 0
  %244 = call i32 @gettimeofday(i32* %243, i32* null)
  %245 = call i32 @pututxline(%struct.utmpx* %6)
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %240
  %249 = call i32 (...) @sync()
  br label %250

250:                                              ; preds = %248, %240
  %251 = load i32, i32* @SIGHUP, align 4
  %252 = load i32, i32* @SIG_IGN, align 4
  %253 = call i32 @signal(i32 %251, i32 %252)
  %254 = load i32, i32* @SIGINT, align 4
  %255 = load i32, i32* @SIG_IGN, align 4
  %256 = call i32 @signal(i32 %254, i32 %255)
  %257 = load i32, i32* @SIGQUIT, align 4
  %258 = load i32, i32* @SIG_IGN, align 4
  %259 = call i32 @signal(i32 %257, i32 %258)
  %260 = load i32, i32* @SIGTERM, align 4
  %261 = load i32, i32* @SIG_IGN, align 4
  %262 = call i32 @signal(i32 %260, i32 %261)
  %263 = load i32, i32* @SIGTSTP, align 4
  %264 = load i32, i32* @SIG_IGN, align 4
  %265 = call i32 @signal(i32 %263, i32 %264)
  %266 = load i32, i32* @SIGPIPE, align 4
  %267 = load i32, i32* @SIG_IGN, align 4
  %268 = call i32 @signal(i32 %266, i32 %267)
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* @RB_REROOT, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %250
  %274 = load i32, i32* @SIGEMT, align 4
  %275 = call i32 @kill(i32 1, i32 %274)
  %276 = icmp eq i32 %275, -1
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  br label %279

279:                                              ; preds = %277, %273
  store i32 0, i32* %3, align 4
  br label %354

280:                                              ; preds = %250
  %281 = load i32, i32* @SIGTSTP, align 4
  %282 = call i32 @kill(i32 1, i32 %281)
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %280
  %287 = load i32, i32* @SIGTERM, align 4
  %288 = call i32 @kill(i32 -1, i32 %287)
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %296

290:                                              ; preds = %286
  %291 = load i32, i32* @errno, align 4
  %292 = load i32, i32* @ESRCH, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %290
  %295 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  br label %296

296:                                              ; preds = %294, %290, %286
  %297 = call i32 @sleep(i32 2)
  store i32 0, i32* %10, align 4
  br label %298

298:                                              ; preds = %314, %296
  %299 = load i32, i32* %10, align 4
  %300 = icmp slt i32 %299, 20
  br i1 %300, label %301, label %317

301:                                              ; preds = %298
  %302 = call i64 (...) @get_pageins()
  store i64 %302, i64* %17, align 8
  %303 = load i32, i32* %13, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %301
  %306 = call i32 (...) @sync()
  br label %307

307:                                              ; preds = %305, %301
  %308 = call i32 @sleep(i32 3)
  %309 = call i64 (...) @get_pageins()
  %310 = load i64, i64* %17, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  br label %317

313:                                              ; preds = %307
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %10, align 4
  br label %298

317:                                              ; preds = %312, %298
  store i32 1, i32* %10, align 4
  br label %318

318:                                              ; preds = %338, %317
  %319 = load i32, i32* @SIGKILL, align 4
  %320 = call i32 @kill(i32 -1, i32 %319)
  %321 = icmp eq i32 %320, -1
  br i1 %321, label %322, label %328

322:                                              ; preds = %318
  %323 = load i32, i32* @errno, align 4
  %324 = load i32, i32* @ESRCH, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  br label %341

327:                                              ; preds = %322
  br label %344

328:                                              ; preds = %318
  %329 = load i32, i32* %10, align 4
  %330 = icmp sgt i32 %329, 5
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load i32, i32* @stderr, align 4
  %333 = call i32 @fprintf(i32 %332, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0))
  br label %341

334:                                              ; preds = %328
  %335 = load i32, i32* %10, align 4
  %336 = mul nsw i32 2, %335
  %337 = call i32 @sleep(i32 %336)
  br label %338

338:                                              ; preds = %334
  %339 = load i32, i32* %10, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %10, align 4
  br label %318

341:                                              ; preds = %331, %326
  %342 = load i32, i32* %9, align 4
  %343 = call i32 @reboot(i32 %342)
  br label %344

344:                                              ; preds = %341, %327
  %345 = load i32, i32* @errno, align 4
  store i32 %345, i32* %15, align 4
  %346 = load i32, i32* @SIGHUP, align 4
  %347 = call i32 @kill(i32 1, i32 %346)
  %348 = icmp eq i32 %347, -1
  %349 = zext i1 %348 to i64
  %350 = select i1 %348, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)
  %351 = load i32, i32* %15, align 4
  %352 = call i32 @strerror(i32 %351)
  %353 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %350, i32 %352)
  br label %354

354:                                              ; preds = %344, %279
  %355 = load i32, i32* %3, align 4
  ret i32 %355
}

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @getprogname(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @reboot(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @getlogin(...) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @pututxline(%struct.utmpx*) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @get_pageins(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
