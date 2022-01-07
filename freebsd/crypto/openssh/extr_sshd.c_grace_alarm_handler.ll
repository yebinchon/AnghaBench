; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_grace_alarm_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshd.c_grace_alarm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@use_privsep = common dso_local global i64 0, align 8
@pmonitor = common dso_local global %struct.TYPE_2__* null, align 8
@SIGALRM = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@BLACKLIST_AUTH_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Timeout before authentication for %s port %d\00", align 1
@active_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @grace_alarm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grace_alarm_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @use_privsep, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmonitor, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmonitor, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmonitor, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @SIGALRM, align 4
  %18 = call i32 @kill(i64 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %8, %5, %1
  %20 = call i64 @getpgid(i32 0)
  %21 = call i64 (...) @getpid()
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @SIGTERM, align 4
  %25 = load i32, i32* @SIG_IGN, align 4
  %26 = call i32 @signal(i32 %24, i32 %25)
  %27 = load i32, i32* @SIGTERM, align 4
  %28 = call i32 @kill(i64 0, i32 %27)
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, i32* @BLACKLIST_AUTH_FAIL, align 4
  %31 = call i32 @BLACKLIST_NOTIFY(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @active_state, align 4
  %33 = call i32 @ssh_remote_ipaddr(i32 %32)
  %34 = load i32, i32* @active_state, align 4
  %35 = call i32 @ssh_remote_port(i32 %34)
  %36 = call i32 @sigdie(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  ret void
}

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i64 @getpgid(i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @BLACKLIST_NOTIFY(i32, i8*) #1

declare dso_local i32 @sigdie(i8*, i32, i32) #1

declare dso_local i32 @ssh_remote_ipaddr(i32) #1

declare dso_local i32 @ssh_remote_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
