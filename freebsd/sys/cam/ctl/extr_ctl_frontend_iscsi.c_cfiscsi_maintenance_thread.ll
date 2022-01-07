; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_maintenance_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_maintenance_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfiscsi_session = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"nothing to do\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cfiscsi_maintenance_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_maintenance_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cfiscsi_session*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.cfiscsi_session*
  store %struct.cfiscsi_session* %5, %struct.cfiscsi_session** %3, align 8
  br label %6

6:                                                ; preds = %49, %1
  %7 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %8 = call i32 @CFISCSI_SESSION_LOCK(%struct.cfiscsi_session* %7)
  %9 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %10 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %15 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13, %6
  %19 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %20 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %19, i32 0, i32 5
  %21 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %22 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %21, i32 0, i32 4
  %23 = call i32 @cv_wait(i32* %20, i32* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %26 = call i32 @CFISCSI_SESSION_UNLOCK(%struct.cfiscsi_session* %25)
  %27 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %28 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %33 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %38 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %37, i32 0, i32 3
  %39 = call i32 @callout_drain(i32* %38)
  %40 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %41 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @icl_conn_close(i32 %42)
  %44 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %45 = call i32 @cfiscsi_session_terminate_tasks(%struct.cfiscsi_session* %44)
  %46 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %47 = call i32 @cfiscsi_session_delete(%struct.cfiscsi_session* %46)
  %48 = call i32 (...) @kthread_exit()
  ret void

49:                                               ; preds = %31, %24
  %50 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %3, align 8
  %51 = call i32 @CFISCSI_SESSION_DEBUG(%struct.cfiscsi_session* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %6
}

declare dso_local i32 @CFISCSI_SESSION_LOCK(%struct.cfiscsi_session*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @CFISCSI_SESSION_UNLOCK(%struct.cfiscsi_session*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @icl_conn_close(i32) #1

declare dso_local i32 @cfiscsi_session_terminate_tasks(%struct.cfiscsi_session*) #1

declare dso_local i32 @cfiscsi_session_delete(%struct.cfiscsi_session*) #1

declare dso_local i32 @kthread_exit(...) #1

declare dso_local i32 @CFISCSI_SESSION_DEBUG(%struct.cfiscsi_session*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
