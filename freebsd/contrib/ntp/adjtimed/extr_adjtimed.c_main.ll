; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.sigvec = type { i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.timeval }
%struct.msqid_ds = type { i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"adjtimed\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"hkrvdfp:\00", align 1
@EOF = common dso_local global i8 0, align 1
@KEY = common dso_local global i32 0, align 4
@mqid = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"remove old message queue: %m\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"adjtimed: remove old message queue\00", align 1
@verbose = common dso_local global i64 0, align 8
@sysdebug = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"adjtimed: -p option ignored\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"usage: adjtimed -hkrvdf\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"-h\09help\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"-k\09kill existing adjtimed, if any\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"-r\09restart (kills existing adjtimed, if any)\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"-v\09debug output (repeat for more output)\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"-d\09syslog output (repeat for more output)\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"-f\09no fork\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"usage error\00", align 1
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"fork: %m\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"adjtimed: fork\00", align 1
@_IONBF = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"started\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"adjtimed: started\0A\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@ResetClockRate = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_EXCL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [50 x i8] c"message queue already exists, use -r to remove it\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"adjtimed: message queue already exists, use -r to remove it\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"create message queue: %m\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"adjtimed: create message queue\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"get message queue id: %m\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"adjtimed: get message queue id\00", align 1
@PROCLOCK = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"plock: %m\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"adjtimed: plock\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"nice: %m\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"adjtimed: nice\00", align 1
@MSGSIZE = common dso_local global i32 0, align 4
@CLIENT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [17 x i8] c"read message: %m\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"adjtimed: read message\00", align 1
@SERVER = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [17 x i8] c"send message: %m\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"adjtimed: send message\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"adjtimed: previous correction remaining %.6fs\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"previous correction remaining %.6fs\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"adjtimed: unknown message code %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"unknown message code %d\00", align 1
@LOG_LOCAL6 = common dso_local global i32 0, align 4
@TIOCNOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.sigvec, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** @progname, align 8
  %15 = load i32, i32* @LOG_PID, align 4
  %16 = call i32 (i8*, i32, ...) @openlog(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %71, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call signext i8 @ntp_getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8 %20, i8* %9, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @EOF, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %17
  %26 = load i8, i8* %9, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %60 [
    i32 107, label %28
    i32 114, label %28
    i32 118, label %50
    i32 100, label %53
    i32 102, label %56
    i32 112, label %57
  ]

28:                                               ; preds = %25, %25
  %29 = load i32, i32* @KEY, align 4
  %30 = call i32 @msgget(i32 %29, i32 0)
  store i32 %30, i32* @mqid, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* @mqid, align 4
  %34 = load i32, i32* @IPC_RMID, align 4
  %35 = call i32 @msgctl(i32 %33, i32 %34, %struct.msqid_ds* null)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = call i32 (i32, i8*, ...) @msyslog(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 @exit(i32 1) #4
  unreachable

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i8, i8* %9, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 107
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @exit(i32 0) #4
  unreachable

49:                                               ; preds = %43
  br label %71

50:                                               ; preds = %25
  %51 = load i64, i64* @verbose, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* @verbose, align 8
  store i32 1, i32* %10, align 4
  br label %71

53:                                               ; preds = %25
  %54 = load i32, i32* @sysdebug, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @sysdebug, align 4
  br label %71

56:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %71

57:                                               ; preds = %25
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %71

60:                                               ; preds = %25
  %61 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %62 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %63 = call i32 @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %64 = call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %65 = call i32 @puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %66 = call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %67 = call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %68 = load i32, i32* @LOG_ERR, align 4
  %69 = call i32 (i32, i8*, ...) @msyslog(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %70 = call i32 @exit(i32 1) #4
  unreachable

71:                                               ; preds = %57, %56, %53, %50, %49
  br label %17

72:                                               ; preds = %17
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %72
  %76 = call i32 (...) @fork()
  switch i32 %76, label %93 [
    i32 0, label %77
    i32 -1, label %88
  ]

77:                                               ; preds = %75
  %78 = load i32, i32* @stdin, align 4
  %79 = call i32 @fileno(i32 %78)
  %80 = call i32 @close(i32 %79)
  %81 = load i32, i32* @stdout, align 4
  %82 = call i32 @fileno(i32 %81)
  %83 = call i32 @close(i32 %82)
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 @fileno(i32 %84)
  %86 = call i32 @close(i32 %85)
  %87 = call i32 (...) @setpgrp()
  br label %95

88:                                               ; preds = %75
  %89 = load i32, i32* @LOG_ERR, align 4
  %90 = call i32 (i32, i8*, ...) @msyslog(i32 %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %91 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %92 = call i32 @exit(i32 1) #4
  unreachable

93:                                               ; preds = %75
  %94 = call i32 @exit(i32 0) #4
  unreachable

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %72
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* @stdout, align 4
  %101 = load i32, i32* @_IONBF, align 4
  %102 = load i32, i32* @BUFSIZ, align 4
  %103 = call i32 @setvbuf(i32 %100, i32* null, i32 %101, i32 %102)
  %104 = load i32, i32* @stderr, align 4
  %105 = load i32, i32* @_IONBF, align 4
  %106 = load i32, i32* @BUFSIZ, align 4
  %107 = call i32 @setvbuf(i32 %104, i32* null, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %99, %96
  %109 = load i32, i32* @LOG_INFO, align 4
  %110 = call i32 (i32, i8*, ...) @msyslog(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %111 = load i64, i64* @verbose, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %108
  %116 = call i32 (...) @InitClockRate()
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @Exit(i32 2)
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i32, i32* @SIGHUP, align 4
  %122 = call i32 @signal(i32 %121, i32 (...)* @SIG_IGN)
  %123 = load i32, i32* @SIGINT, align 4
  %124 = call i32 @signal(i32 %123, i32 (...)* @SIG_IGN)
  %125 = load i32, i32* @SIGQUIT, align 4
  %126 = call i32 @signal(i32 %125, i32 (...)* @SIG_IGN)
  %127 = load i32, i32* @SIGTERM, align 4
  %128 = call i32 @signal(i32 %127, i32 (...)* @Cleanup)
  %129 = load i32, i32* @ResetClockRate, align 4
  %130 = getelementptr inbounds %struct.sigvec, %struct.sigvec* %7, i32 0, i32 2
  store i32 %129, i32* %130, align 8
  %131 = getelementptr inbounds %struct.sigvec, %struct.sigvec* %7, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = getelementptr inbounds %struct.sigvec, %struct.sigvec* %7, i32 0, i32 0
  store i32 -1, i32* %132, align 8
  %133 = load i32, i32* @SIGALRM, align 4
  %134 = call i32 @sigvector(i32 %133, %struct.sigvec* %7, %struct.sigvec* null)
  %135 = load i32, i32* @KEY, align 4
  %136 = load i32, i32* @IPC_CREAT, align 4
  %137 = load i32, i32* @IPC_EXCL, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @msgget(i32 %135, i32 %138)
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %156

141:                                              ; preds = %120
  %142 = load i64, i64* @errno, align 8
  %143 = load i64, i64* @EEXIST, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i32, i32* @LOG_ERR, align 4
  %147 = call i32 (i32, i8*, ...) @msyslog(i32 %146, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0))
  %148 = load i32, i32* @stderr, align 4
  %149 = call i32 @fputs(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0), i32 %148)
  %150 = call i32 @Exit(i32 1)
  br label %151

151:                                              ; preds = %145, %141
  %152 = load i32, i32* @LOG_ERR, align 4
  %153 = call i32 (i32, i8*, ...) @msyslog(i32 %152, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %154 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %155 = call i32 @Exit(i32 1)
  br label %156

156:                                              ; preds = %151, %120
  %157 = load i32, i32* @KEY, align 4
  %158 = call i32 @msgget(i32 %157, i32 0)
  store i32 %158, i32* @mqid, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32, i32* @LOG_ERR, align 4
  %162 = call i32 (i32, i8*, ...) @msyslog(i32 %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %163 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %164 = call i32 @Exit(i32 1)
  br label %165

165:                                              ; preds = %160, %156
  %166 = load i32, i32* @PROCLOCK, align 4
  %167 = call i64 @plock(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32, i32* @LOG_ERR, align 4
  %171 = call i32 (i32, i8*, ...) @msyslog(i32 %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %172 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  %173 = call i32 (...) @Cleanup()
  br label %174

174:                                              ; preds = %169, %165
  %175 = call i32 @nice(i32 -10)
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32, i32* @LOG_ERR, align 4
  %179 = call i32 (i32, i8*, ...) @msyslog(i32 %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %180 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %181 = call i32 (...) @Cleanup()
  br label %182

182:                                              ; preds = %177, %174
  br label %183

183:                                              ; preds = %280, %194, %182
  %184 = load i32, i32* @mqid, align 4
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %186 = load i32, i32* @MSGSIZE, align 4
  %187 = load i32, i32* @CLIENT, align 4
  %188 = call i32 @msgrcv(i32 %184, i32* %185, i32 %186, i32 %187, i32 0)
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %200

190:                                              ; preds = %183
  %191 = load i64, i64* @errno, align 8
  %192 = load i64, i64* @EINTR, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %183

195:                                              ; preds = %190
  %196 = load i32, i32* @LOG_ERR, align 4
  %197 = call i32 (i32, i8*, ...) @msyslog(i32 %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %198 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0))
  %199 = call i32 (...) @Cleanup()
  br label %200

200:                                              ; preds = %195, %183
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  switch i32 %203, label %269 [
    i32 129, label %204
    i32 128, label %204
  ]

204:                                              ; preds = %200, %200
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 2
  %207 = call i32 @AdjustClockRate(%struct.timeval* %206, %struct.timeval* %6)
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 128
  br i1 %211, label %212, label %237

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = bitcast %struct.timeval* %214 to i8*
  %216 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %215, i8* align 8 %216, i64 16, i1 false)
  %217 = load i32, i32* @SERVER, align 4
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %231, %230, %212
  %221 = load i32, i32* @mqid, align 4
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %223 = load i32, i32* @MSGSIZE, align 4
  %224 = call i32 @msgsnd(i32 %221, i32* %222, i32 %223, i32 0)
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %236

226:                                              ; preds = %220
  %227 = load i64, i64* @errno, align 8
  %228 = load i64, i64* @EINTR, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  br label %220

231:                                              ; preds = %226
  %232 = load i32, i32* @LOG_ERR, align 4
  %233 = call i32 (i32, i8*, ...) @msyslog(i32 %232, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  %234 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0))
  %235 = call i32 (...) @Cleanup()
  br label %220

236:                                              ; preds = %220
  br label %237

237:                                              ; preds = %236, %204
  %238 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %239, %241
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %268

244:                                              ; preds = %237
  %245 = load i64, i64* @verbose, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %244
  %248 = bitcast %struct.timeval* %6 to { i64, i64 }*
  %249 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %248, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = call double @tvtod(i64 %250, i64 %252)
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i64 0, i64 0), double %253)
  br label %255

255:                                              ; preds = %247, %244
  %256 = load i32, i32* @sysdebug, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %255
  %259 = load i32, i32* @LOG_INFO, align 4
  %260 = bitcast %struct.timeval* %6 to { i64, i64 }*
  %261 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %260, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call double @tvtod(i64 %262, i64 %264)
  %266 = call i32 (i32, i8*, ...) @msyslog(i32 %259, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i64 0, i64 0), double %265)
  br label %267

267:                                              ; preds = %258, %255
  br label %268

268:                                              ; preds = %267, %237
  br label %280

269:                                              ; preds = %200
  %270 = load i32, i32* @stderr, align 4
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @fprintf(i32 %270, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i32 %273)
  %275 = load i32, i32* @LOG_ERR, align 4
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 (i32, i8*, ...) @msyslog(i32 %275, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %269, %268
  br label %183
}

declare dso_local i32 @openlog(i8*, i32, ...) #1

declare dso_local signext i8 @ntp_getopt(i32, i8**, i8*) #1

declare dso_local i32 @msgget(i32, i32) #1

declare dso_local i32 @msgctl(i32, i32, %struct.msqid_ds*) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @setpgrp(...) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @InitClockRate(...) #1

declare dso_local i32 @Exit(i32) #1

declare dso_local i32 @signal(i32, i32 (...)*) #1

declare dso_local i32 @SIG_IGN(...) #1

declare dso_local i32 @Cleanup(...) #1

declare dso_local i32 @sigvector(i32, %struct.sigvec*, %struct.sigvec*) #1

declare dso_local i64 @plock(i32) #1

declare dso_local i32 @nice(i32) #1

declare dso_local i32 @msgrcv(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @AdjustClockRate(%struct.timeval*, %struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @msgsnd(i32, i32*, i32, i32) #1

declare dso_local double @tvtod(i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
