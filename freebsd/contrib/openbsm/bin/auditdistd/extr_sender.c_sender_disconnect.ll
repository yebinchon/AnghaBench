; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_sender_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_sender_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i64, i32* }

@adist_remote_lock = common dso_local global i32 0, align 4
@adhost = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Closing connection to %s.\00", align 1
@adist_remote_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Disconnected from %s.\00", align 1
@adist_free_list = common dso_local global i32 0, align 4
@adist_send_list = common dso_local global i32 0, align 4
@adist_recv_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sender_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sender_disconnect() #0 {
  %1 = call i32 @rw_wlock(i32* @adist_remote_lock)
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 4
  %4 = load i32*, i32** %3, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @rw_unlock(i32* @adist_remote_lock)
  br label %35

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pjdlog_debug(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @proto_close(i32* %15)
  %17 = call i32 @mtx_lock(i32* @adist_remote_mtx)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = call i32 @mtx_unlock(i32* @adist_remote_mtx)
  %29 = call i32 @rw_unlock(i32* @adist_remote_lock)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pjdlog_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = call i32 @QUEUE_CONCAT2(i32* @adist_free_list, i32* @adist_send_list, i32* @adist_recv_list)
  br label %35

35:                                               ; preds = %8, %6
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @rw_unlock(i32*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i32) #1

declare dso_local i32 @proto_close(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @pjdlog_warning(i8*, i32) #1

declare dso_local i32 @QUEUE_CONCAT2(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
