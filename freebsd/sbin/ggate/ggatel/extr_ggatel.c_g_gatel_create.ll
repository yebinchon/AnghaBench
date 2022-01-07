; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatel/extr_ggatel.c_g_gatel_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatel/extr_ggatel.c_g_gatel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_ctl_create = type { i32, i32, i64, i32, i32, i64, i32, i32 }

@path = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@O_FSYNC = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@G_GATE_VERSION = common dso_local global i32 0, align 4
@unit = common dso_local global i32 0, align 4
@sectorsize = common dso_local global i64 0, align 8
@timeout = common dso_local global i32 0, align 4
@G_GATE_CMD_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%u\0A\00", align 1
@G_GATE_PROVIDER_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @g_gatel_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gatel_create() #0 {
  %1 = alloca %struct.g_gate_ctl_create, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @path, align 4
  %4 = load i32, i32* @flags, align 4
  %5 = call i32 @g_gate_openflags(i32 %4)
  %6 = load i32, i32* @O_DIRECT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @O_FSYNC, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @open(i32 %3, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  %15 = load i32, i32* @path, align 4
  %16 = call i32 @err(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %0
  %18 = call i32 @memset(%struct.g_gate_ctl_create* %1, i32 0, i32 40)
  %19 = load i32, i32* @G_GATE_VERSION, align 4
  %20 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 7
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @unit, align 4
  %22 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @g_gate_mediasize(i32 %23)
  %25 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 6
  store i32 %24, i32* %25, align 8
  %26 = load i64, i64* @sectorsize, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @g_gate_sectorsize(i32 %29)
  store i64 %30, i64* @sectorsize, align 8
  br label %31

31:                                               ; preds = %28, %17
  %32 = load i64, i64* @sectorsize, align 8
  %33 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 5
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @timeout, align 4
  %35 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @flags, align 4
  %37 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @path, align 4
  %42 = call i32 @strlcpy(i32 %40, i32 %41, i32 4)
  %43 = load i32, i32* @G_GATE_CMD_CREATE, align 4
  %44 = call i32 @g_gate_ioctl(i32 %43, %struct.g_gate_ctl_create* %1)
  %45 = load i32, i32* @unit, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load i8*, i8** @G_GATE_PROVIDER_NAME, align 8
  %49 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %50)
  br label %52

52:                                               ; preds = %47, %31
  %53 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %1, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* @unit, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @g_gatel_serve(i32 %55)
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @g_gate_openflags(i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.g_gate_ctl_create*, i32, i32) #1

declare dso_local i32 @g_gate_mediasize(i32) #1

declare dso_local i64 @g_gate_sectorsize(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @g_gate_ioctl(i32, %struct.g_gate_ctl_create*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @g_gatel_serve(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
