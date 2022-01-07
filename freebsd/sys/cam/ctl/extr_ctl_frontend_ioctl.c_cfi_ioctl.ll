; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_ioctl.c_cfi_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_ioctl.c_cfi_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.ctl_req = type { i32, i32, i32 }

@CTL_PORT_REQ = common dso_local global i64 0, align 8
@CTL_LUN_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported request type %d\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64, i32, %struct.thread*)* @cfi_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_ioctl(%struct.cdev* %0, i64 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.ctl_req*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @CTL_PORT_REQ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %5
  %17 = load i64, i64* %9, align 8
  %18 = inttoptr i64 %17 to %struct.ctl_req*
  store %struct.ctl_req* %18, %struct.ctl_req** %12, align 8
  %19 = load %struct.ctl_req*, %struct.ctl_req** %12, align 8
  %20 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %28 [
    i32 129, label %22
    i32 128, label %25
  ]

22:                                               ; preds = %16
  %23 = load %struct.ctl_req*, %struct.ctl_req** %12, align 8
  %24 = call i32 @cfi_ioctl_port_create(%struct.ctl_req* %23)
  br label %39

25:                                               ; preds = %16
  %26 = load %struct.ctl_req*, %struct.ctl_req** %12, align 8
  %27 = call i32 @cfi_ioctl_port_remove(%struct.ctl_req* %26)
  br label %39

28:                                               ; preds = %16
  %29 = load i32, i32* @CTL_LUN_ERROR, align 4
  %30 = load %struct.ctl_req*, %struct.ctl_req** %12, align 8
  %31 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ctl_req*, %struct.ctl_req** %12, align 8
  %33 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ctl_req*, %struct.ctl_req** %12, align 8
  %36 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %28, %25, %22
  store i32 0, i32* %6, align 4
  br label %42

40:                                               ; preds = %5
  %41 = load i32, i32* @ENOTTY, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @cfi_ioctl_port_create(%struct.ctl_req*) #1

declare dso_local i32 @cfi_ioctl_port_remove(%struct.ctl_req*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
