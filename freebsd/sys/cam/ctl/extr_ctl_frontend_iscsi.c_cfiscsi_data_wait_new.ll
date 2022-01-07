; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_data_wait_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_data_wait_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfiscsi_data_wait = type { i8*, i8*, %union.ctl_io*, i32 }
%struct.cfiscsi_session = type { i32 }
%union.ctl_io = type { i32 }

@cfiscsi_data_wait_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to allocate %zd bytes\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"icl_conn_transfer_setup() failed with error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfiscsi_data_wait* (%struct.cfiscsi_session*, %union.ctl_io*, i8*, i8**)* @cfiscsi_data_wait_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfiscsi_data_wait* @cfiscsi_data_wait_new(%struct.cfiscsi_session* %0, %union.ctl_io* %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.cfiscsi_data_wait*, align 8
  %6 = alloca %struct.cfiscsi_session*, align 8
  %7 = alloca %union.ctl_io*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.cfiscsi_data_wait*, align 8
  %11 = alloca i32, align 4
  store %struct.cfiscsi_session* %0, %struct.cfiscsi_session** %6, align 8
  store %union.ctl_io* %1, %union.ctl_io** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* @cfiscsi_data_wait_zone, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.cfiscsi_data_wait* @uma_zalloc(i32 %12, i32 %15)
  store %struct.cfiscsi_data_wait* %16, %struct.cfiscsi_data_wait** %10, align 8
  %17 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %10, align 8
  %18 = icmp eq %struct.cfiscsi_data_wait* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %21 = call i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 32)
  store %struct.cfiscsi_data_wait* null, %struct.cfiscsi_data_wait** %5, align 8
  br label %52

22:                                               ; preds = %4
  %23 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %24 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %27 = load i8**, i8*** %9, align 8
  %28 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %10, align 8
  %29 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %28, i32 0, i32 3
  %30 = call i32 @icl_conn_transfer_setup(i32 %25, %union.ctl_io* %26, i8** %27, i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @cfiscsi_data_wait_zone, align 4
  %38 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %10, align 8
  %39 = call i32 @uma_zfree(i32 %37, %struct.cfiscsi_data_wait* %38)
  store %struct.cfiscsi_data_wait* null, %struct.cfiscsi_data_wait** %5, align 8
  br label %52

40:                                               ; preds = %22
  %41 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %42 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %10, align 8
  %43 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %42, i32 0, i32 2
  store %union.ctl_io* %41, %union.ctl_io** %43, align 8
  %44 = load i8**, i8*** %9, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %10, align 8
  %47 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %10, align 8
  %50 = getelementptr inbounds %struct.cfiscsi_data_wait, %struct.cfiscsi_data_wait* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %10, align 8
  store %struct.cfiscsi_data_wait* %51, %struct.cfiscsi_data_wait** %5, align 8
  br label %52

52:                                               ; preds = %40, %33, %19
  %53 = load %struct.cfiscsi_data_wait*, %struct.cfiscsi_data_wait** %5, align 8
  ret %struct.cfiscsi_data_wait* %53
}

declare dso_local %struct.cfiscsi_data_wait* @uma_zalloc(i32, i32) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*, i32) #1

declare dso_local i32 @icl_conn_transfer_setup(i32, %union.ctl_io*, i8**, i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.cfiscsi_data_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
