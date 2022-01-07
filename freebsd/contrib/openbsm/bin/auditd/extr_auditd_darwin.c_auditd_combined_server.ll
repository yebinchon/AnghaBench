; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_darwin.c_auditd_combined_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditd/extr_auditd_darwin.c_auditd_combined_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@max_idletime = common dso_local global i64 0, align 8
@signal_port = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Received signal %d\00", align 1
@control_port = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Recevied msg on bad port 0x%x.\00", align 1
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.TYPE_8__*)* @auditd_combined_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @auditd_combined_server(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @max_idletime, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* @max_idletime, align 8
  %16 = call i32 @alarm(i64 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @signal_port, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %34 [
    i32 128, label %26
    i32 131, label %26
    i32 130, label %28
    i32 129, label %31
  ]

26:                                               ; preds = %21, %21
  %27 = call i32 (...) @auditd_terminate()
  br label %28

28:                                               ; preds = %21, %26
  %29 = call i32 (...) @auditd_reap_children()
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %3, align 8
  br label %60

31:                                               ; preds = %21
  %32 = call i32 (...) @auditd_config_controls()
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %3, align 8
  br label %60

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = call i32 @auditd_log_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %3, align 8
  br label %60

39:                                               ; preds = %17
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @control_port, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = call i64 @audit_triggers_server(%struct.TYPE_8__* %44, %struct.TYPE_8__* %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = call i64 @auditd_control_server(%struct.TYPE_8__* %50, %struct.TYPE_8__* %51)
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %3, align 8
  br label %60

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @auditd_log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %56, %53, %34, %31, %28
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i32 @alarm(i64) #1

declare dso_local i32 @auditd_terminate(...) #1

declare dso_local i32 @auditd_reap_children(...) #1

declare dso_local i32 @auditd_config_controls(...) #1

declare dso_local i32 @auditd_log_info(i8*, i64) #1

declare dso_local i64 @audit_triggers_server(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i64 @auditd_control_server(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
