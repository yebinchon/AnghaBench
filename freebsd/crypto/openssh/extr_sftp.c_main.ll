; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.sftp_conn = type { i32 }

@_PATH_SSH_PROGRAM = common dso_local global i8* null, align 8
@SYSLOG_LEVEL_INFO = common dso_local global i32 0, align 4
@DEFAULT_COPY_BUFLEN = common dso_local global i64 0, align 8
@DEFAULT_NUM_REQUESTS = common dso_local global i64 0, align 8
@__progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"-oForwardX11 no\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"-oForwardAgent no\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"-oPermitLocalCommand no\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"-oClearAllForwardings yes\00", align 1
@stdin = common dso_local global i32* null, align 8
@infile = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"1246afhpqrvCc:D:i:l:o:s:S:b:B:F:P:R:\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-%c\00", align 1
@optarg = external dso_local global i8*, align 8
@SYSLOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@showprogress = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"Bad port \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@SYSLOG_LEVEL_DEBUG1 = common dso_local global i32 0, align 4
@_PATH_SFTP_SERVER = common dso_local global i8* null, align 8
@global_aflag = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Invalid buffer size \22%s\22\00", align 1
@batchmode = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"Batch file already specified.\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%s (%s).\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"-obatchmode yes\00", align 1
@global_fflag = common dso_local global i32 0, align 4
@global_pflag = common dso_local global i32 0, align 4
@global_rflag = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"Invalid number of requests \22%s\22\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@SYSLOG_FACILITY_USER = common dso_local global i32 0, align 4
@optind = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"sftp\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [18 x i8] c"Missing hostname\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"-oPort %d\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"-oProtocol %d\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"sftp-server\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Couldn't initialise connection to server\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Connected to %s.\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Attached to %s.\0A\00", align 1
@SHUT_RDWR = common dso_local global i32 0, align 4
@sshpid = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [34 x i8] c"Couldn't wait for ssh process: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_6__, align 8
  %25 = alloca %struct.sftp_conn*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 2, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %29 = load i8*, i8** @_PATH_SSH_PROGRAM, align 8
  store i8* %29, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %30 = load i32, i32* @SYSLOG_LEVEL_INFO, align 4
  store i32 %30, i32* %23, align 4
  %31 = load i64, i64* @DEFAULT_COPY_BUFLEN, align 8
  store i64 %31, i64* %26, align 8
  %32 = load i64, i64* @DEFAULT_NUM_REQUESTS, align 8
  store i64 %32, i64* %27, align 8
  store i64 0, i64* %28, align 8
  %33 = call i32 (...) @ssh_malloc_init()
  %34 = call i32 (...) @sanitise_stdfd()
  %35 = call i32 (...) @msetlocale()
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @ssh_get_progname(i8* %38)
  store i32 %39, i32* @__progname, align 4
  %40 = call i32 @memset(%struct.TYPE_6__* %24, i8 signext 0, i32 8)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load i8*, i8** %20, align 8
  %43 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* @SYSLOG_LEVEL_INFO, align 4
  store i32 %48, i32* %23, align 4
  %49 = load i32*, i32** @stdin, align 8
  store i32* %49, i32** @infile, align 8
  br label %50

50:                                               ; preds = %169, %2
  %51 = load i32, i32* %4, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = call i32 @getopt(i32 %51, i8** %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 %53, i32* %8, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %170

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %167 [
    i32 52, label %57
    i32 54, label %57
    i32 67, label %57
    i32 70, label %60
    i32 99, label %60
    i32 105, label %60
    i32 111, label %60
    i32 113, label %65
    i32 80, label %69
    i32 118, label %78
    i32 49, label %89
    i32 50, label %95
    i32 97, label %96
    i32 66, label %97
    i32 98, label %111
    i32 102, label %131
    i32 112, label %132
    i32 68, label %133
    i32 108, label %135
    i32 114, label %145
    i32 82, label %146
    i32 115, label %160
    i32 83, label %162
    i32 104, label %166
  ]

57:                                               ; preds = %55, %55, %55
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %58)
  br label %169

60:                                               ; preds = %55, %55, %55, %55
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %63)
  br label %169

65:                                               ; preds = %55
  %66 = load i32, i32* @SYSLOG_LEVEL_ERROR, align 4
  store i32 %66, i32* %23, align 4
  store i32 1, i32* @quiet, align 4
  store i64 0, i64* @showprogress, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  br label %169

69:                                               ; preds = %55
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i32 @a2port(i8* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %74, %69
  br label %169

78:                                               ; preds = %55
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %83 = load i32, i32* @SYSLOG_LEVEL_DEBUG1, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %23, align 4
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %169

89:                                               ; preds = %55
  store i32 1, i32* %17, align 4
  %90 = load i8*, i8** %19, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i8*, i8** @_PATH_SFTP_SERVER, align 8
  store i8* %93, i8** %19, align 8
  br label %94

94:                                               ; preds = %92, %89
  br label %169

95:                                               ; preds = %55
  store i32 2, i32* %17, align 4
  br label %169

96:                                               ; preds = %55
  store i32 1, i32* @global_aflag, align 4
  br label %169

97:                                               ; preds = %55
  %98 = load i8*, i8** @optarg, align 8
  %99 = call i64 @strtol(i8* %98, i8** %14, i32 10)
  store i64 %99, i64* %26, align 8
  %100 = load i64, i64* %26, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %14, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %97
  %108 = load i8*, i8** @optarg, align 8
  %109 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %107, %102
  br label %169

111:                                              ; preds = %55
  %112 = load i32, i32* @batchmode, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %111
  %117 = load i8*, i8** @optarg, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load i8*, i8** @optarg, align 8
  %122 = call i32* @fopen(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32* %122, i32** @infile, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i64, i64* @errno, align 8
  %126 = call i8* @strerror(i64 %125)
  %127 = load i8*, i8** @optarg, align 8
  %128 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %126, i8* %127)
  br label %129

129:                                              ; preds = %124, %120, %116
  store i64 0, i64* @showprogress, align 8
  store i32 1, i32* @batchmode, align 4
  store i32 1, i32* @quiet, align 4
  %130 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  br label %169

131:                                              ; preds = %55
  store i32 1, i32* @global_fflag, align 4
  br label %169

132:                                              ; preds = %55
  store i32 1, i32* @global_pflag, align 4
  br label %169

133:                                              ; preds = %55
  %134 = load i8*, i8** @optarg, align 8
  store i8* %134, i8** %21, align 8
  br label %169

135:                                              ; preds = %55
  %136 = load i8*, i8** @optarg, align 8
  %137 = call i64 @strtonum(i8* %136, i32 1, i32 104857600, i8** %22)
  store i64 %137, i64* %28, align 8
  %138 = load i8*, i8** %22, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = call i32 (...) @usage()
  br label %142

142:                                              ; preds = %140, %135
  %143 = load i64, i64* %28, align 8
  %144 = mul nsw i64 %143, 1024
  store i64 %144, i64* %28, align 8
  br label %169

145:                                              ; preds = %55
  store i32 1, i32* @global_rflag, align 4
  br label %169

146:                                              ; preds = %55
  %147 = load i8*, i8** @optarg, align 8
  %148 = call i64 @strtol(i8* %147, i8** %14, i32 10)
  store i64 %148, i64* %27, align 8
  %149 = load i64, i64* %27, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load i8*, i8** %14, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151, %146
  %157 = load i8*, i8** @optarg, align 8
  %158 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %156, %151
  br label %169

160:                                              ; preds = %55
  %161 = load i8*, i8** @optarg, align 8
  store i8* %161, i8** %19, align 8
  br label %169

162:                                              ; preds = %55
  %163 = load i8*, i8** @optarg, align 8
  store i8* %163, i8** %20, align 8
  %164 = load i8*, i8** %20, align 8
  %165 = call i32 @replacearg(%struct.TYPE_6__* %24, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %164)
  br label %169

166:                                              ; preds = %55
  br label %167

167:                                              ; preds = %55, %166
  %168 = call i32 (...) @usage()
  br label %169

169:                                              ; preds = %167, %162, %160, %159, %145, %142, %133, %132, %131, %129, %110, %96, %95, %94, %86, %77, %65, %60, %57
  br label %50

170:                                              ; preds = %50
  %171 = load i32, i32* @STDERR_FILENO, align 4
  %172 = call i32 @isatty(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  store i64 0, i64* @showprogress, align 8
  br label %175

175:                                              ; preds = %174, %170
  %176 = load i8**, i8*** %5, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* %23, align 4
  %180 = load i32, i32* @SYSLOG_FACILITY_USER, align 4
  %181 = call i32 @log_init(i8* %178, i32 %179, i32 %180, i32 1)
  %182 = load i8*, i8** %21, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %274

184:                                              ; preds = %175
  %185 = load i32, i32* @optind, align 4
  %186 = load i32, i32* %4, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %193, label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @optind, align 4
  %191 = add nsw i32 %190, 2
  %192 = icmp sgt i32 %189, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %188, %184
  %194 = call i32 (...) @usage()
  br label %195

195:                                              ; preds = %193, %188
  %196 = load i32, i32* @optind, align 4
  %197 = load i8**, i8*** %5, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8*, i8** %197, i64 %198
  store i8** %199, i8*** %5, align 8
  %200 = load i8**, i8*** %5, align 8
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @parse_uri(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %201, i8** %13, i8** %12, i32* %10, i8** %18)
  switch i32 %202, label %211 [
    i32 -1, label %203
    i32 0, label %205
  ]

203:                                              ; preds = %195
  %204 = call i32 (...) @usage()
  br label %223

205:                                              ; preds = %195
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, -1
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32, i32* %10, align 4
  store i32 %209, i32* %11, align 4
  br label %210

210:                                              ; preds = %208, %205
  br label %223

211:                                              ; preds = %195
  %212 = load i8**, i8*** %5, align 8
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @parse_user_host_path(i8* %213, i8** %13, i8** %12, i8** %18)
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load i8**, i8*** %5, align 8
  %218 = load i8*, i8** %217, align 8
  %219 = call i8* @xstrdup(i8* %218)
  store i8* %219, i8** %12, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = call i8* @cleanhostname(i8* %220)
  store i8* %221, i8** %12, align 8
  br label %222

222:                                              ; preds = %216, %211
  br label %223

223:                                              ; preds = %222, %210, %203
  %224 = load i8**, i8*** %5, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 1
  %226 = load i8*, i8** %225, align 8
  store i8* %226, i8** %15, align 8
  %227 = load i8*, i8** %12, align 8
  %228 = load i8, i8* %227, align 1
  %229 = icmp ne i8 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %223
  %231 = load i32, i32* @stderr, align 4
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %233 = call i32 (...) @usage()
  br label %234

234:                                              ; preds = %230, %223
  %235 = load i32, i32* %11, align 4
  %236 = icmp ne i32 %235, -1
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* %11, align 4
  %239 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %237, %234
  %241 = load i8*, i8** %13, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %245 = load i8*, i8** %13, align 8
  %246 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %245)
  br label %247

247:                                              ; preds = %243, %240
  %248 = load i32, i32* %17, align 4
  %249 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %248)
  %250 = load i8*, i8** %19, align 8
  %251 = icmp eq i8* %250, null
  br i1 %251, label %256, label %252

252:                                              ; preds = %247
  %253 = load i8*, i8** %19, align 8
  %254 = call i32* @strchr(i8* %253, i8 signext 47)
  %255 = icmp eq i32* %254, null
  br i1 %255, label %256, label %258

256:                                              ; preds = %252, %247
  %257 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %252
  %259 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %260 = load i8*, i8** %12, align 8
  %261 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %260)
  %262 = load i8*, i8** %19, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = load i8*, i8** %19, align 8
  br label %267

266:                                              ; preds = %258
  br label %267

267:                                              ; preds = %266, %264
  %268 = phi i8* [ %265, %264 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %266 ]
  %269 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %268)
  %270 = load i8*, i8** %20, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @connect_to_server(i8* %270, i32* %272, i32* %6, i32* %7)
  br label %281

274:                                              ; preds = %175
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32* null, i32** %275, align 8
  %276 = call i32 (%struct.TYPE_6__*, i8*, ...) @addargs(%struct.TYPE_6__* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %277 = load i8*, i8** %21, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @connect_to_server(i8* %277, i32* %279, i32* %6, i32* %7)
  br label %281

281:                                              ; preds = %274, %267
  %282 = call i32 @freeargs(%struct.TYPE_6__* %24)
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* %7, align 4
  %285 = load i64, i64* %26, align 8
  %286 = load i64, i64* %27, align 8
  %287 = load i64, i64* %28, align 8
  %288 = call %struct.sftp_conn* @do_init(i32 %283, i32 %284, i64 %285, i64 %286, i64 %287)
  store %struct.sftp_conn* %288, %struct.sftp_conn** %25, align 8
  %289 = load %struct.sftp_conn*, %struct.sftp_conn** %25, align 8
  %290 = icmp eq %struct.sftp_conn* %289, null
  br i1 %290, label %291, label %293

291:                                              ; preds = %281
  %292 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0))
  br label %293

293:                                              ; preds = %291, %281
  %294 = load i32, i32* @quiet, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %308, label %296

296:                                              ; preds = %293
  %297 = load i8*, i8** %21, align 8
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load i32, i32* @stderr, align 4
  %301 = load i8*, i8** %12, align 8
  %302 = call i32 (i32, i8*, ...) @fprintf(i32 %300, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8* %301)
  br label %307

303:                                              ; preds = %296
  %304 = load i32, i32* @stderr, align 4
  %305 = load i8*, i8** %21, align 8
  %306 = call i32 (i32, i8*, ...) @fprintf(i32 %304, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* %305)
  br label %307

307:                                              ; preds = %303, %299
  br label %308

308:                                              ; preds = %307, %293
  %309 = load %struct.sftp_conn*, %struct.sftp_conn** %25, align 8
  %310 = load i8*, i8** %18, align 8
  %311 = load i8*, i8** %15, align 8
  %312 = call i32 @interactive_loop(%struct.sftp_conn* %309, i8* %310, i8* %311)
  store i32 %312, i32* %9, align 4
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* @SHUT_RDWR, align 4
  %315 = call i32 @shutdown(i32 %313, i32 %314)
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* @SHUT_RDWR, align 4
  %318 = call i32 @shutdown(i32 %316, i32 %317)
  %319 = load i32, i32* %6, align 4
  %320 = call i32 @close(i32 %319)
  %321 = load i32, i32* %7, align 4
  %322 = call i32 @close(i32 %321)
  %323 = load i32, i32* @batchmode, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %308
  %326 = load i32*, i32** @infile, align 8
  %327 = call i32 @fclose(i32* %326)
  br label %328

328:                                              ; preds = %325, %308
  br label %329

329:                                              ; preds = %346, %328
  %330 = load i32, i32* @sshpid, align 4
  %331 = call i32 @waitpid(i32 %330, i32* null, i32 0)
  %332 = icmp eq i32 %331, -1
  br i1 %332, label %333, label %336

333:                                              ; preds = %329
  %334 = load i32, i32* @sshpid, align 4
  %335 = icmp sgt i32 %334, 1
  br label %336

336:                                              ; preds = %333, %329
  %337 = phi i1 [ false, %329 ], [ %335, %333 ]
  br i1 %337, label %338, label %347

338:                                              ; preds = %336
  %339 = load i64, i64* @errno, align 8
  %340 = load i64, i64* @EINTR, align 8
  %341 = icmp ne i64 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = load i64, i64* @errno, align 8
  %344 = call i8* @strerror(i64 %343)
  %345 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i8* %344)
  br label %346

346:                                              ; preds = %342, %338
  br label %329

347:                                              ; preds = %336
  %348 = load i32, i32* %9, align 4
  %349 = icmp eq i32 %348, 0
  %350 = zext i1 %349 to i64
  %351 = select i1 %349, i32 0, i32 1
  %352 = call i32 @exit(i32 %351) #3
  unreachable
}

declare dso_local i32 @ssh_malloc_init(...) #1

declare dso_local i32 @sanitise_stdfd(...) #1

declare dso_local i32 @msetlocale(...) #1

declare dso_local i32 @ssh_get_progname(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i8 signext, i32) #1

declare dso_local i32 @addargs(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @a2port(i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i64 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @replacearg(%struct.TYPE_6__*, i32, i8*, i8*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @log_init(i8*, i32, i32, i32) #1

declare dso_local i32 @parse_uri(i8*, i8*, i8**, i8**, i32*, i8**) #1

declare dso_local i32 @parse_user_host_path(i8*, i8**, i8**, i8**) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @cleanhostname(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @connect_to_server(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @freeargs(%struct.TYPE_6__*) #1

declare dso_local %struct.sftp_conn* @do_init(i32, i32, i64, i64, i64) #1

declare dso_local i32 @interactive_loop(%struct.sftp_conn*, i8*, i8*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
