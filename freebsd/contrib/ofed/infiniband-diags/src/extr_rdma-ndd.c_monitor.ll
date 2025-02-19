; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_monitor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i64, i64 }

@SYS_HOSTNAME = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Open %s Failed: retry in %d seconds\0A\00", align 1
@failure_retry_rate = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Hostname change: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Poll %s Failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x %struct.pollfd], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 1, i32* %5, align 4
  %7 = call i32 (...) @get_udev_fd()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 2, i32* %5, align 4
  br label %11

11:                                               ; preds = %10, %0
  br label %12

12:                                               ; preds = %11, %18, %88
  %13 = load i8*, i8** @SYS_HOSTNAME, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i8*, i8** @SYS_HOSTNAME, align 8
  %21 = load i32, i32* @failure_retry_rate, align 4
  %22 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32, i32* @failure_retry_rate, align 4
  %24 = call i32 @sleep(i32 %23)
  br label %12

25:                                               ; preds = %12
  %26 = load i32, i32* %2, align 4
  %27 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 16
  %29 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i32 0, i32 2
  store i64 0, i64* %30, align 16
  %31 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* @POLLIN, align 8
  %37 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %38 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %40 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @poll(%struct.pollfd* %41, i32 %42, i32 -1)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %25
  %47 = load i32, i32* %2, align 4
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %49 = call i64 @read_hostname(i32 %47, i8* %48, i32 128)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %52, align 16
  br label %53

53:                                               ; preds = %51, %46
  %54 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %55 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @LOG_ERR, align 4
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %61 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %64 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %70 = call i32 @process_udev_event(i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %73 = call i32 @set_rdma_node_desc(i8* %72, i32 0)
  store i32 %73, i32* %3, align 4
  br label %80

74:                                               ; preds = %25
  %75 = load i32, i32* @LOG_ERR, align 4
  %76 = load i8*, i8** @SYS_HOSTNAME, align 8
  %77 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @close(i32 %81)
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @failure_retry_rate, align 4
  %87 = call i32 @sleep(i32 %86)
  br label %88

88:                                               ; preds = %85, %80
  br label %12
}

declare dso_local i32 @get_udev_fd(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i64 @read_hostname(i32, i8*, i32) #1

declare dso_local i32 @process_udev_event(i32, i8*) #1

declare dso_local i32 @set_rdma_node_desc(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
