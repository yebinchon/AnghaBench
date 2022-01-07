; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_laggport.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libifconfig/extr_status.c_print_laggport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32 }
%struct.lagg_reqport = type { i8* }

@EINVAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to get lagg port status\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09laggdev: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ifaddrs*)* @print_laggport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_laggport(i32* %0, %struct.ifaddrs* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.lagg_reqport, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ifaddrs* %1, %struct.ifaddrs** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %8 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ifconfig_lagg_get_laggport_status(i32* %6, i32 %9, %struct.lagg_reqport* %5)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @ifconfig_err_errno(i32* %13)
  %15 = load i64, i64* @EINVAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @ifconfig_err_errno(i32* %18)
  %20 = load i64, i64* @ENOENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12
  br label %30

23:                                               ; preds = %17
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25, %2
  %27 = getelementptr inbounds %struct.lagg_reqport, %struct.lagg_reqport* %5, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

declare dso_local i64 @ifconfig_lagg_get_laggport_status(i32*, i32, %struct.lagg_reqport*) #1

declare dso_local i64 @ifconfig_err_errno(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
