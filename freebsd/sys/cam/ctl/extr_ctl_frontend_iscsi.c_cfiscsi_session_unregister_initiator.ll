; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_session_unregister_initiator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_iscsi.c_cfiscsi_session_unregister_initiator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfiscsi_session = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"ctl_remove_initiator failed with error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfiscsi_session*)* @cfiscsi_session_unregister_initiator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfiscsi_session_unregister_initiator(%struct.cfiscsi_session* %0) #0 {
  %2 = alloca %struct.cfiscsi_session*, align 8
  %3 = alloca i32, align 4
  store %struct.cfiscsi_session* %0, %struct.cfiscsi_session** %2, align 8
  %4 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %5 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %11 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %15 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ctl_remove_initiator(i32* %13, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %9
  %25 = load %struct.cfiscsi_session*, %struct.cfiscsi_session** %2, align 8
  %26 = getelementptr inbounds %struct.cfiscsi_session, %struct.cfiscsi_session* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %8
  ret void
}

declare dso_local i32 @ctl_remove_initiator(i32*, i32) #1

declare dso_local i32 @CFISCSI_SESSION_WARN(%struct.cfiscsi_session*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
