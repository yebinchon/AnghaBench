; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibdiag_opt = type { i8*, i8, i32, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"rdma-ndd\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_PERROR = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"retry_timer\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"<retry_timer>\00", align 1
@.str.3 = private unnamed_addr constant [116 x i8] c"Length of time to sleep when system errors occur when attempting to poll and or read the hostname from the system.\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"retry_count\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"<retry_count>\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"Number of times to attempt to retry setting of the node description on failure\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"run in the foreground instead of as a daemon\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"pidfile\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"<pidfile>\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"specify a pid file (daemon mode only)\0A\00", align 1
@__const.main.opts = private unnamed_addr constant [5 x %struct.ibdiag_opt] [%struct.ibdiag_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8 116, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.3, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8 114, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8 102, i32 0, i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0) }, %struct.ibdiag_opt { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8 0, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0) }, %struct.ibdiag_opt zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [13 x i8] c"CPDLGtsKyevd\00", align 1
@process_opts = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ibd_nd_format = common dso_local global i64 0, align 8
@DEFAULT_ND_FORMAT = common dso_local global i64 0, align 8
@foreground = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Failed to daemonize\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"Node Descriptor format (%s)\0A\00", align 1
@SYS_HOSTNAME = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca [5 x %struct.ibdiag_opt], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @LOG_PID, align 4
  %10 = load i32, i32* @LOG_PERROR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @LOG_DAEMON, align 4
  %13 = call i32 @openlog(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = bitcast [5 x %struct.ibdiag_opt]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([5 x %struct.ibdiag_opt]* @__const.main.opts to i8*), i64 160, i1 false)
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds [5 x %struct.ibdiag_opt], [5 x %struct.ibdiag_opt]* %8, i64 0, i64 0
  %18 = load i32, i32* @process_opts, align 4
  %19 = call i32 @ibdiag_process_opts(i32 %15, i8** %16, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), %struct.ibdiag_opt* %17, i32 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32* null)
  %20 = load i64, i64* @ibd_nd_format, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i64, i64* @DEFAULT_ND_FORMAT, align 8
  store i64 %23, i64* @ibd_nd_format, align 8
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32, i32* @foreground, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = call i32 (...) @closelog()
  %29 = load i32, i32* @LOG_PID, align 4
  %30 = load i32, i32* @LOG_DAEMON, align 4
  %31 = call i32 @openlog(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = call i64 @daemon(i32 0, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @LOG_ERR, align 4
  %36 = call i32 (i32, i8*, ...) @syslog(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @exit(i32 %37) #4
  unreachable

39:                                               ; preds = %27
  %40 = call i32 (...) @write_pidfile()
  br label %41

41:                                               ; preds = %39, %24
  %42 = call i32 (...) @setup_udev()
  %43 = load i32, i32* @LOG_INFO, align 4
  %44 = load i64, i64* @ibd_nd_format, align 8
  %45 = call i32 (i32, i8*, ...) @syslog(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @SYS_HOSTNAME, align 4
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = call i32 @open(i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %51 = call i64 @read_hostname(i32 %49, i8* %50, i32 128)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %54, align 16
  br label %55

55:                                               ; preds = %53, %41
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %57 = call i32 @set_rdma_node_desc(i8* %56, i32 1)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @close(i32 %58)
  %60 = call i32 (...) @monitor()
  %61 = call i32 (...) @remove_pidfile()
  ret i32 0
}

declare dso_local i32 @openlog(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ibdiag_process_opts(i32, i8**, i32*, i8*, %struct.ibdiag_opt*, i32, i8*, i32*) #1

declare dso_local i32 @closelog(...) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @write_pidfile(...) #1

declare dso_local i32 @setup_udev(...) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i64 @read_hostname(i32, i8*, i32) #1

declare dso_local i32 @set_rdma_node_desc(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @monitor(...) #1

declare dso_local i32 @remove_pidfile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
