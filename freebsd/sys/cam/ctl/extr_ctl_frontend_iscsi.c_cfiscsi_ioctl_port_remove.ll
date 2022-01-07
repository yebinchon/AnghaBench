; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_ioctl_port_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_ioctl_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_req = type { i8*, i32, i32 }
%struct.cfiscsi_target = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"cfiscsi_target\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cfiscsi_portal_group_tag\00", align 1
@CTL_LUN_ERROR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Missing required argument\00", align 1
@cfiscsi_softc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"can't find target \22%s\22\00", align 1
@CFISCSI_TARGET_STATE_DYING = common dso_local global i32 0, align 4
@CTL_LUN_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_req*)* @cfiscsi_ioctl_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_ioctl_port_remove(%struct.ctl_req* %0) #0 {
  %2 = alloca %struct.ctl_req*, align 8
  %3 = alloca %struct.cfiscsi_target*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ctl_req* %0, %struct.ctl_req** %2, align 8
  %7 = load %struct.ctl_req*, %struct.ctl_req** %2, align 8
  %8 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @dnvlist_get_string(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %10, i8** %4, align 8
  %11 = load %struct.ctl_req*, %struct.ctl_req** %2, align 8
  %12 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @dnvlist_get_string(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17, %1
  %21 = load i8*, i8** @CTL_LUN_ERROR, align 8
  %22 = load %struct.ctl_req*, %struct.ctl_req** %2, align 8
  %23 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ctl_req*, %struct.ctl_req** %2, align 8
  %25 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %59

28:                                               ; preds = %17
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strtoul(i8* %29, i32* null, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.cfiscsi_target* @cfiscsi_target_find(i32* @cfiscsi_softc, i8* %31, i32 %32)
  store %struct.cfiscsi_target* %33, %struct.cfiscsi_target** %3, align 8
  %34 = load %struct.cfiscsi_target*, %struct.cfiscsi_target** %3, align 8
  %35 = icmp eq %struct.cfiscsi_target* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i8*, i8** @CTL_LUN_ERROR, align 8
  %38 = load %struct.ctl_req*, %struct.ctl_req** %2, align 8
  %39 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ctl_req*, %struct.ctl_req** %2, align 8
  %41 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %42, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  br label %59

45:                                               ; preds = %28
  %46 = load i32, i32* @CFISCSI_TARGET_STATE_DYING, align 4
  %47 = load %struct.cfiscsi_target*, %struct.cfiscsi_target** %3, align 8
  %48 = getelementptr inbounds %struct.cfiscsi_target, %struct.cfiscsi_target* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cfiscsi_target*, %struct.cfiscsi_target** %3, align 8
  %50 = getelementptr inbounds %struct.cfiscsi_target, %struct.cfiscsi_target* %49, i32 0, i32 0
  %51 = call i32 @ctl_port_offline(i32* %50)
  %52 = load %struct.cfiscsi_target*, %struct.cfiscsi_target** %3, align 8
  %53 = call i32 @cfiscsi_target_release(%struct.cfiscsi_target* %52)
  %54 = load %struct.cfiscsi_target*, %struct.cfiscsi_target** %3, align 8
  %55 = call i32 @cfiscsi_target_release(%struct.cfiscsi_target* %54)
  %56 = load i8*, i8** @CTL_LUN_OK, align 8
  %57 = load %struct.ctl_req*, %struct.ctl_req** %2, align 8
  %58 = getelementptr inbounds %struct.ctl_req, %struct.ctl_req* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %45, %36, %20
  ret void
}

declare dso_local i8* @dnvlist_get_string(i32, i8*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local %struct.cfiscsi_target* @cfiscsi_target_find(i32*, i8*, i32) #1

declare dso_local i32 @ctl_port_offline(i32*) #1

declare dso_local i32 @cfiscsi_target_release(%struct.cfiscsi_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
