; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_guard_check_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_guard_check_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32* }

@adhost = common dso_local global %struct.TYPE_2__* null, align 8
@ADIST_ROLE_SENDER = common dso_local global i64 0, align 8
@adist_remote_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"remote_guard: Connection to %s is ok.\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"remote_guard: Reconnecting to %s.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Successfully reconnected to %s.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"remote_guard: Reconnect to %s failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @guard_check_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guard_check_connection() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @ADIST_ROLE_SENDER, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @PJDLOG_ASSERT(i32 %6)
  %8 = call i32 @rw_rlock(i32* @adist_remote_lock)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = call i32 @rw_unlock(i32* @adist_remote_lock)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pjdlog_debug(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %37

19:                                               ; preds = %0
  %20 = call i32 @rw_unlock(i32* @adist_remote_lock)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i64 (...) @sender_connect()
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pjdlog_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %37

32:                                               ; preds = %19
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %13, %32, %27
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @rw_unlock(i32*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i32) #1

declare dso_local i64 @sender_connect(...) #1

declare dso_local i32 @pjdlog_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
