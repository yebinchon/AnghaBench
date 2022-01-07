; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_sender_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_sender_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8, i8, %struct.proto_conn*, i32, i32, %struct.proto_conn* }
%struct.proto_conn = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@adhost = common dso_local global %struct.TYPE_3__* null, align 8
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unable to send connection request to parent\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Unable to receive reply to connection request from parent\00", align 1
@errno = common dso_local global i8 0, align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Unable to connect to %s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to receive connection from parent\00", align 1
@adcfg = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Connected to %s.\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Unable to set connection timeout\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Timeout set to %d.\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ADIST%02d\00", align 1
@ADIST_VERSION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Unable to send welcome message to %s\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Welcome message sent (%s).\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Unable to receive welcome message from %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ADIST\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Invalid welcome message from %s.\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Welcome message received (%s).\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"Invalid version number from %s (%d received, up to %d supported).\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Version %d negotiated with %s.\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Unable to send name to %s\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Name (%s) sent.\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Unable to receive challenge from %s\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Challenge received.\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Unable to generate response.\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Response generated.\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Unable to send response to %s\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Response sent.\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Unable to generate challenge.\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Challenge generated.\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Unable to send challenge to %s\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Challenge sent.\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"Unable to receive response from %s\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Response received.\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Unable to generate hash.\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Hash generated.\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"Invalid response from %s (wrong password?).\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Receiver authenticated.\00", align 1
@.str.34 = private unnamed_addr constant [61 x i8] c"Unable to receive size of the most recent trail file from %s\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"Unable to receive name of the most recent trail file from %s\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"Trail name (%s) and offset (%ju) received.\00", align 1
@adist_remote_lock = common dso_local global i32 0, align 4
@adist_remote_mtx = common dso_local global i32 0, align 4
@adist_remote_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sender_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sender_connect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = alloca [32 x i8], align 16
  %5 = alloca %struct.proto_conn*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i8, align 1
  store i8 1, i8* %7, align 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %10 = load %struct.proto_conn*, %struct.proto_conn** %9, align 8
  %11 = call i32 (%struct.proto_conn*, ...) @proto_send(%struct.proto_conn* %10, i8* %7, i64 1)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* @EX_TEMPFAIL, align 4
  %15 = call i32 @pjdlog_exit(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  %19 = load %struct.proto_conn*, %struct.proto_conn** %18, align 8
  %20 = call i32 (%struct.proto_conn*, ...) @proto_recv(%struct.proto_conn* %19, i8* %7, i64 1)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EX_TEMPFAIL, align 4
  %24 = call i32 @pjdlog_exit(i32 %23, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i8, i8* %7, align 1
  store i8 %30, i8* @errno, align 1
  %31 = load i32, i32* @LOG_WARNING, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %1, align 4
  br label %366

36:                                               ; preds = %25
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  %39 = load %struct.proto_conn*, %struct.proto_conn** %38, align 8
  %40 = call i64 @proto_connection_recv(%struct.proto_conn* %39, i32 1, %struct.proto_conn** %5)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EX_TEMPFAIL, align 4
  %44 = call i32 @pjdlog_exit(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adcfg, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @proto_connect_wait(%struct.proto_conn* %46, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* @LOG_WARNING, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %59 = call i32 @proto_close(%struct.proto_conn* %58)
  store i32 -1, i32* %1, align 4
  br label %366

60:                                               ; preds = %45
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adcfg, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @proto_timeout(%struct.proto_conn* %65, i32 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* @LOG_WARNING, align 4
  %73 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %79

74:                                               ; preds = %60
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adcfg, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %71
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %81 = load i32, i32* @ADIST_VERSION, align 4
  %82 = call i32 @snprintf(i8* %80, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  %83 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %85 = call i32 (%struct.proto_conn*, ...) @proto_send(%struct.proto_conn* %83, i8* %84, i64 8)
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load i32, i32* @LOG_WARNING, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %91)
  %93 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %94 = call i32 @proto_close(%struct.proto_conn* %93)
  store i32 -1, i32* %1, align 4
  br label %366

95:                                               ; preds = %79
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %97 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %96)
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %99 = call i32 @bzero(i8* %98, i32 8)
  %100 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %102 = call i32 (%struct.proto_conn*, ...) @proto_recv(%struct.proto_conn* %100, i8* %101, i64 8)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = load i32, i32* @LOG_WARNING, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %108)
  %110 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %111 = call i32 @proto_close(%struct.proto_conn* %110)
  store i32 -1, i32* %1, align 4
  br label %366

112:                                              ; preds = %95
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %114 = call i64 @strncmp(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 5
  %118 = load i8, i8* %117, align 1
  %119 = call i32 @isdigit(i8 signext %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 6
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @isdigit(i8 signext %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 7
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126, %121, %116, %112
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i8*, ...) @pjdlog_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %134)
  %136 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %137 = call i32 @proto_close(%struct.proto_conn* %136)
  store i32 -1, i32* %1, align 4
  br label %366

138:                                              ; preds = %126
  %139 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %140 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* %139)
  %141 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %142 = getelementptr inbounds i8, i8* %141, i64 5
  %143 = call i32 @atoi(i8* %142)
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ADIST_VERSION, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %138
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @ADIST_VERSION, align 4
  %159 = call i32 (i8*, ...) @pjdlog_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.14, i64 0, i64 0), i32 %154, i32 %157, i32 %158)
  %160 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %161 = call i32 @proto_close(%struct.proto_conn* %160)
  store i32 -1, i32* %1, align 4
  br label %366

162:                                              ; preds = %138
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %165, i32 %168)
  %170 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adcfg, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (%struct.proto_conn*, ...) @proto_send(%struct.proto_conn* %170, i8* %173, i64 8)
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %184

176:                                              ; preds = %162
  %177 = load i32, i32* @LOG_WARNING, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %180)
  %182 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %183 = call i32 @proto_close(%struct.proto_conn* %182)
  store i32 -1, i32* %1, align 4
  br label %366

184:                                              ; preds = %162
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adcfg, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %187)
  %189 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %190 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %191 = call i32 (%struct.proto_conn*, ...) @proto_recv(%struct.proto_conn* %189, i8* %190, i64 32)
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %201

193:                                              ; preds = %184
  %194 = load i32, i32* @LOG_WARNING, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %194, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %197)
  %199 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %200 = call i32 @proto_close(%struct.proto_conn* %199)
  store i32 -1, i32* %1, align 4
  br label %366

201:                                              ; preds = %184
  %202 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %203 = call i32 (...) @EVP_sha256()
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @strlen(i32 %209)
  %211 = trunc i64 %210 to i32
  %212 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %213 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %214 = call i32* @HMAC(i32 %203, i32 %206, i32 %211, i8* %212, i32 32, i8* %213, i32* null)
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %201
  %217 = call i32 (i8*, ...) @pjdlog_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %218 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %219 = call i32 @proto_close(%struct.proto_conn* %218)
  store i32 -1, i32* %1, align 4
  br label %366

220:                                              ; preds = %201
  %221 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  %222 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %223 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %224 = call i32 (%struct.proto_conn*, ...) @proto_send(%struct.proto_conn* %222, i8* %223, i64 32)
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %234

226:                                              ; preds = %220
  %227 = load i32, i32* @LOG_WARNING, align 4
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %227, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i32 %230)
  %232 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %233 = call i32 @proto_close(%struct.proto_conn* %232)
  store i32 -1, i32* %1, align 4
  br label %366

234:                                              ; preds = %220
  %235 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %236 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %237 = call i32 @adist_random(i8* %236, i32 32)
  %238 = icmp eq i32 %237, -1
  br i1 %238, label %239, label %243

239:                                              ; preds = %234
  %240 = call i32 (i8*, ...) @pjdlog_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  %241 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %242 = call i32 @proto_close(%struct.proto_conn* %241)
  store i32 -1, i32* %1, align 4
  br label %366

243:                                              ; preds = %234
  %244 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  %245 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %246 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %247 = call i32 (%struct.proto_conn*, ...) @proto_send(%struct.proto_conn* %245, i8* %246, i64 32)
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %257

249:                                              ; preds = %243
  %250 = load i32, i32* @LOG_WARNING, align 4
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %250, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 %253)
  %255 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %256 = call i32 @proto_close(%struct.proto_conn* %255)
  store i32 -1, i32* %1, align 4
  br label %366

257:                                              ; preds = %243
  %258 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0))
  %259 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %260 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %261 = call i32 (%struct.proto_conn*, ...) @proto_recv(%struct.proto_conn* %259, i8* %260, i64 32)
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %271

263:                                              ; preds = %257
  %264 = load i32, i32* @LOG_WARNING, align 4
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %264, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i32 %267)
  %269 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %270 = call i32 @proto_close(%struct.proto_conn* %269)
  store i32 -1, i32* %1, align 4
  br label %366

271:                                              ; preds = %257
  %272 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  %273 = call i32 (...) @EVP_sha256()
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @strlen(i32 %279)
  %281 = trunc i64 %280 to i32
  %282 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %283 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %284 = call i32* @HMAC(i32 %273, i32 %276, i32 %281, i8* %282, i32 32, i8* %283, i32* null)
  %285 = icmp eq i32* %284, null
  br i1 %285, label %286, label %290

286:                                              ; preds = %271
  %287 = call i32 (i8*, ...) @pjdlog_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  %288 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %289 = call i32 @proto_close(%struct.proto_conn* %288)
  store i32 -1, i32* %1, align 4
  br label %366

290:                                              ; preds = %271
  %291 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %292 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %293 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %294 = call i64 @memcmp(i8* %292, i8* %293, i32 32)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %290
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = call i32 (i8*, ...) @pjdlog_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i32 %299)
  %301 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %302 = call i32 @proto_close(%struct.proto_conn* %301)
  store i32 -1, i32* %1, align 4
  br label %366

303:                                              ; preds = %290
  %304 = call i32 @pjdlog_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0))
  %305 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 1
  %308 = call i32 (%struct.proto_conn*, ...) @proto_recv(%struct.proto_conn* %305, i8* %307, i64 1)
  %309 = icmp eq i32 %308, -1
  br i1 %309, label %310, label %318

310:                                              ; preds = %303
  %311 = load i32, i32* @LOG_WARNING, align 4
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 8
  %315 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %311, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.34, i64 0, i64 0), i32 %314)
  %316 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %317 = call i32 @proto_close(%struct.proto_conn* %316)
  store i32 -1, i32* %1, align 4
  br label %366

318:                                              ; preds = %303
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 1
  %321 = load i8, i8* %320, align 4
  %322 = call zeroext i8 @le64toh(i8 zeroext %321)
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 1
  store i8 %322, i8* %324, align 4
  %325 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 2
  %328 = call i32 (%struct.proto_conn*, ...) @proto_recv(%struct.proto_conn* %325, i8* %327, i64 1)
  %329 = icmp eq i32 %328, -1
  br i1 %329, label %330, label %338

330:                                              ; preds = %318
  %331 = load i32, i32* @LOG_WARNING, align 4
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %331, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0), i32 %334)
  %336 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %337 = call i32 @proto_close(%struct.proto_conn* %336)
  store i32 -1, i32* %1, align 4
  br label %366

338:                                              ; preds = %318
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 2
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 1
  %345 = load i8, i8* %344, align 4
  %346 = zext i8 %345 to i32
  %347 = call i32 (i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0), i32 %342, i32 %346)
  %348 = call i32 @rw_wlock(i32* @adist_remote_lock)
  %349 = call i32 @mtx_lock(i32* @adist_remote_mtx)
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 3
  %352 = load %struct.proto_conn*, %struct.proto_conn** %351, align 8
  %353 = icmp eq %struct.proto_conn* %352, null
  %354 = zext i1 %353 to i32
  %355 = call i32 @PJDLOG_ASSERT(i32 %354)
  %356 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %357 = icmp ne %struct.proto_conn* %356, null
  %358 = zext i1 %357 to i32
  %359 = call i32 @PJDLOG_ASSERT(i32 %358)
  %360 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %361 = load %struct.TYPE_3__*, %struct.TYPE_3__** @adhost, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 3
  store %struct.proto_conn* %360, %struct.proto_conn** %362, align 8
  %363 = call i32 @mtx_unlock(i32* @adist_remote_mtx)
  %364 = call i32 @rw_unlock(i32* @adist_remote_lock)
  %365 = call i32 @cv_signal(i32* @adist_remote_cond)
  store i32 0, i32* %1, align 4
  br label %366

366:                                              ; preds = %338, %330, %310, %296, %286, %263, %249, %239, %226, %216, %193, %176, %151, %131, %104, %87, %52, %29
  %367 = load i32, i32* %1, align 4
  ret i32 %367
}

declare dso_local i32 @proto_send(%struct.proto_conn*, ...) #1

declare dso_local i32 @pjdlog_exit(i32, i8*) #1

declare dso_local i32 @proto_recv(%struct.proto_conn*, ...) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, ...) #1

declare dso_local i64 @proto_connection_recv(%struct.proto_conn*, i32, %struct.proto_conn**) #1

declare dso_local i64 @proto_connect_wait(%struct.proto_conn*, i32) #1

declare dso_local i32 @proto_close(%struct.proto_conn*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, ...) #1

declare dso_local i64 @proto_timeout(%struct.proto_conn*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @pjdlog_warning(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @HMAC(i32, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @adist_random(i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @pjdlog_info(i8*) #1

declare dso_local zeroext i8 @le64toh(i8 zeroext) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @rw_unlock(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
