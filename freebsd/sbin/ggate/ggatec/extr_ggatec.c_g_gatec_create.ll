; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_g_gatec_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_g_gatec_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_ctl_create = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Cannot connect: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@G_GATE_VERSION = common dso_local global i32 0, align 4
@mediasize = common dso_local global i32 0, align 4
@sectorsize = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@queue_size = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@unit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s:%u %s\00", align 1
@host = common dso_local global i8* null, align 8
@port = common dso_local global i32 0, align 4
@path = common dso_local global i8* null, align 8
@G_GATE_CMD_CREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%u\0A\00", align 1
@G_GATE_PROVIDER_NAME = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @g_gatec_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gatec_create() #0 {
  %1 = alloca %struct.g_gate_ctl_create, align 4
  %2 = call i32 (...) @g_gatec_connect()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @errno, align 4
  %6 = call i32 @strerror(i32 %5)
  %7 = call i32 @g_gate_xlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %8

8:                                                ; preds = %4, %0
  %9 = call i32 @memset(%struct.g_gate_ctl_create* %1, i32 0, i32 32)
  %10 = load i32, i32* @G_GATE_VERSION, align 4
  %11 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 7
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @mediasize, align 4
  %13 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 6
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @sectorsize, align 4
  %15 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @flags, align 4
  %17 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @queue_size, align 4
  %19 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @timeout, align 4
  %21 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @unit, align 4
  %23 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** @host, align 8
  %27 = load i32, i32* @port, align 4
  %28 = load i8*, i8** @path, align 8
  %29 = call i32 @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %27, i8* %28)
  %30 = load i32, i32* @G_GATE_CMD_CREATE, align 4
  %31 = call i32 @g_gate_ioctl(i32 %30, %struct.g_gate_ctl_create* %1)
  %32 = load i32, i32* @unit, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %8
  %35 = load i8*, i8** @G_GATE_PROVIDER_NAME, align 8
  %36 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %35, i32 %37)
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 @fflush(i32 %39)
  br label %41

41:                                               ; preds = %34, %8
  %42 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* @unit, align 4
  %44 = call i32 (...) @mydaemon()
  %45 = call i32 (...) @g_gatec_loop()
  ret void
}

declare dso_local i32 @g_gatec_connect(...) #1

declare dso_local i32 @g_gate_xlog(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(%struct.g_gate_ctl_create*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @g_gate_ioctl(i32, %struct.g_gate_ctl_create*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @mydaemon(...) #1

declare dso_local i32 @g_gatec_loop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
