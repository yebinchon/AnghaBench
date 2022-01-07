; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_vss_daemon.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_vss_daemon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_vss_opt_msg = type { i32, i32 }
%struct.pollfd = type { i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"dnh\00", align 1
@is_daemon = common dso_local global i32 0, align 4
@is_debugging = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"HV_VSS\00", align 1
@LOG_USER = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Run as regular process.\0A\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"HV_VSS starting; pid is: %d\0A\00", align 1
@FS_VSS_DEV_NAME = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Fail to open %s, error: %d %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@INFTIM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"poll returned r = %d, revent = 0x%x\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"Poll failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@EIO = common dso_local global i32 0, align 4
@IOCHVVSSREAD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Read failed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"pread\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"data read error\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Illegal operation: %d\0A\00", align 1
@VSS_FAIL = common dso_local global i8* null, align 8
@VSS_SUCCESS = common dso_local global i32 0, align 4
@IOCHVVSSWRITE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"Fail to write to device\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Send response %d for %s to kernel\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Freeze\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Thaw\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Check\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hv_vss_opt_msg, align 4
  %7 = alloca [1 x %struct.pollfd], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %13

13:                                               ; preds = %28, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %23 [
    i32 110, label %20
    i32 100, label %21
    i32 104, label %22
  ]

20:                                               ; preds = %18
  store i32 0, i32* @is_daemon, align 4
  br label %28

21:                                               ; preds = %18
  store i32 1, i32* @is_debugging, align 4
  br label %28

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %18, %22
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @usage(i8* %26)
  br label %28

28:                                               ; preds = %23, %21, %20
  br label %13

29:                                               ; preds = %13
  %30 = load i32, i32* @LOG_USER, align 4
  %31 = call i32 @openlog(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %30)
  %32 = load i32, i32* @is_daemon, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @daemon(i32 1, i32 0)
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @LOG_DEBUG, align 4
  %38 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %34
  %40 = load i32, i32* @LOG_INFO, align 4
  %41 = call i32 (...) @getpid()
  %42 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = call i32 @memset(%struct.hv_vss_opt_msg* %6, i32 0, i32 8)
  %44 = load i32, i32* @FS_VSS_DEV_NAME, align 4
  %45 = call i32 @VSS_DEV(i32 %44)
  %46 = load i32, i32* @O_RDWR, align 4
  %47 = call i32 @open(i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %39
  %51 = load i32, i32* @LOG_ERR, align 4
  %52 = load i32, i32* @FS_VSS_DEV_NAME, align 4
  %53 = call i32 @VSS_DEV(i32 %52)
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @errno, align 8
  %56 = call i32 @strerror(i64 %55)
  %57 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %53, i64 %54, i32 %56)
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = call i32 @exit(i32 %58) #3
  unreachable

60:                                               ; preds = %39
  %61 = load i32, i32* %12, align 4
  %62 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %63 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 16
  %64 = load i32, i32* @POLLIN, align 4
  %65 = load i32, i32* @POLLRDNORM, align 4
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %68 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %60, %95, %121, %176
  %70 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %71 = load i32, i32* @INFTIM, align 4
  %72 = call i32 @poll(%struct.pollfd* %70, i32 1, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @LOG_DEBUG, align 4
  %74 = load i32, i32* %10, align 4
  %75 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %76 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %74, i8* %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i64, i64* @errno, align 8
  %86 = load i64, i64* @EAGAIN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %84, %81
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i64, i64* @errno, align 8
  %93 = load i64, i64* @EINTR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %84, %69
  br label %69

96:                                               ; preds = %91, %88
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* @LOG_ERR, align 4
  %101 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %102 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %103 = load i32, i32* @EIO, align 4
  %104 = call i32 @exit(i32 %103) #3
  unreachable

105:                                              ; preds = %96
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @IOCHVVSSREAD, align 4
  %108 = call i32 @ioctl(i32 %106, i32 %107, %struct.hv_vss_opt_msg* %6)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i32, i32* @LOG_ERR, align 4
  %113 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %114 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %115 = load i32, i32* @EIO, align 4
  %116 = call i32 @exit(i32 %115) #3
  unreachable

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.hv_vss_opt_msg, %struct.hv_vss_opt_msg* %6, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i32, i32* @LOG_ERR, align 4
  %123 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %69

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.hv_vss_opt_msg, %struct.hv_vss_opt_msg* %6, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  switch i32 %127, label %134 [
    i32 130, label %128
    i32 129, label %130
    i32 128, label %132
  ]

128:                                              ; preds = %124
  %129 = call i32 (...) @check()
  store i32 %129, i32* %11, align 4
  br label %140

130:                                              ; preds = %124
  %131 = call i32 (...) @freeze()
  store i32 %131, i32* %11, align 4
  br label %140

132:                                              ; preds = %124
  %133 = call i32 (...) @thaw()
  store i32 %133, i32* %11, align 4
  br label %140

134:                                              ; preds = %124
  %135 = load i32, i32* @LOG_ERR, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %136)
  %138 = load i8*, i8** @VSS_FAIL, align 8
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %134, %132, %130, %128
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i8*, i8** @VSS_FAIL, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = getelementptr inbounds %struct.hv_vss_opt_msg, %struct.hv_vss_opt_msg* %6, i32 0, i32 0
  store i32 %145, i32* %146, align 4
  br label %150

147:                                              ; preds = %140
  %148 = load i32, i32* @VSS_SUCCESS, align 4
  %149 = getelementptr inbounds %struct.hv_vss_opt_msg, %struct.hv_vss_opt_msg* %6, i32 0, i32 0
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %143
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @IOCHVVSSWRITE, align 4
  %153 = call i32 @ioctl(i32 %151, i32 %152, %struct.hv_vss_opt_msg* %6)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load i32, i32* @LOG_ERR, align 4
  %158 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %159 = load i32, i32* @EXIT_FAILURE, align 4
  %160 = call i32 @exit(i32 %159) #3
  unreachable

161:                                              ; preds = %150
  %162 = load i32, i32* @LOG_INFO, align 4
  %163 = getelementptr inbounds %struct.hv_vss_opt_msg, %struct.hv_vss_opt_msg* %6, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp eq i32 %165, 129
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %173

168:                                              ; preds = %161
  %169 = load i32, i32* %8, align 4
  %170 = icmp eq i32 %169, 128
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)
  br label %173

173:                                              ; preds = %168, %167
  %174 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %167 ], [ %172, %168 ]
  %175 = call i32 (i32, i8*, ...) @VSS_LOG(i32 %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %164, i8* %174)
  br label %176

176:                                              ; preds = %173
  br label %69
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @VSS_LOG(i32, i8*, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @memset(%struct.hv_vss_opt_msg*, i32, i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @VSS_DEV(i32) #1

declare dso_local i32 @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.hv_vss_opt_msg*) #1

declare dso_local i32 @check(...) #1

declare dso_local i32 @freeze(...) #1

declare dso_local i32 @thaw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
