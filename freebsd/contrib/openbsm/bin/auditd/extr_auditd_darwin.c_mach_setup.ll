; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_darwin.c_mach_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_darwin.c_mach_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACH_PORT_RIGHT_PORT_SET = common dso_local global i32 0, align 4
@port_set = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Allocation of port set failed\00", align 1
@MACH_PORT_RIGHT_RECEIVE = common dso_local global i32 0, align 4
@signal_port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Allocation of signal port failed\00", align 1
@__AUDIT_LAUNCHD_LABEL = common dso_local global i32 0, align 4
@control_port = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Cannot get Mach control port via launchd\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Mach control port registered via launchd\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Allocation of trigger port failed\00", align 1
@MACH_MSG_TYPE_MAKE_SEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot set Mach control port\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Mach control port registered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mach_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mach_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @mach_task_self()
  %6 = load i32, i32* @MACH_PORT_RIGHT_PORT_SET, align 4
  %7 = call i64 @mach_port_allocate(i32 %5, i32 %6, i32* @port_set)
  %8 = load i64, i64* @KERN_SUCCESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @auditd_log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

12:                                               ; preds = %1
  %13 = call i32 (...) @mach_task_self()
  %14 = load i32, i32* @MACH_PORT_RIGHT_RECEIVE, align 4
  %15 = call i64 @mach_port_allocate(i32 %13, i32 %14, i32* @signal_port)
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = call i32 (...) @mach_task_self()
  %20 = load i32, i32* @signal_port, align 4
  %21 = load i32, i32* @port_set, align 4
  %22 = call i64 @mach_port_move_member(i32 %19, i32 %20, i32 %21)
  %23 = load i64, i64* @KERN_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %12
  %26 = call i32 @auditd_log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i32, i32* @__AUDIT_LAUNCHD_LABEL, align 4
  %32 = call i32 @lookup_machport(i32 %31)
  store i32 %32, i32* @control_port, align 4
  %33 = load i32, i32* @MACH_PORT_NULL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = call i32 (...) @mach_task_self()
  %37 = load i32, i32* @control_port, align 4
  %38 = load i32, i32* @port_set, align 4
  %39 = call i64 @mach_port_move_member(i32 %36, i32 %37, i32 %38)
  %40 = load i64, i64* @KERN_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35, %30
  %43 = call i32 @auditd_log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

44:                                               ; preds = %35
  %45 = call i32 @auditd_log_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44
  br label %77

47:                                               ; preds = %27
  %48 = call i32 (...) @mach_task_self()
  %49 = load i32, i32* @MACH_PORT_RIGHT_RECEIVE, align 4
  %50 = call i64 @mach_port_allocate(i32 %48, i32 %49, i32* @control_port)
  %51 = load i64, i64* @KERN_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = call i32 (...) @mach_task_self()
  %55 = load i32, i32* @control_port, align 4
  %56 = load i32, i32* @port_set, align 4
  %57 = call i64 @mach_port_move_member(i32 %54, i32 %55, i32 %56)
  %58 = load i64, i64* @KERN_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53, %47
  %61 = call i32 @auditd_log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %53
  %63 = call i32 (...) @mach_task_self()
  %64 = load i32, i32* @control_port, align 4
  %65 = load i32, i32* @MACH_MSG_TYPE_MAKE_SEND, align 4
  %66 = call i32 @mach_port_extract_right(i32 %63, i32 %64, i32 %65, i32* @control_port, i32* %4)
  %67 = call i32 (...) @mach_host_self()
  %68 = load i32, i32* @control_port, align 4
  %69 = call i64 @host_set_audit_control_port(i32 %67, i32 %68)
  %70 = load i64, i64* @KERN_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = call i32 @auditd_log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %78

74:                                               ; preds = %62
  %75 = call i32 @auditd_log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76, %46
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %72, %42, %25, %10
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @mach_port_allocate(i32, i32, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @auditd_log_err(i8*) #1

declare dso_local i64 @mach_port_move_member(i32, i32, i32) #1

declare dso_local i32 @lookup_machport(i32) #1

declare dso_local i32 @auditd_log_debug(i8*) #1

declare dso_local i32 @mach_port_extract_right(i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @host_set_audit_control_port(i32, i32) #1

declare dso_local i32 @mach_host_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
