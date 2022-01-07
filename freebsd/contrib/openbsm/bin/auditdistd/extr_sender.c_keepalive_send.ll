; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_keepalive_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_keepalive_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.adreq = type { i32 }

@adist_remote_lock = common dso_local global i32 0, align 4
@adhost = common dso_local global %struct.TYPE_2__* null, align 8
@adist_free_list_lock = common dso_local global i32 0, align 4
@adist_free_list = common dso_local global i32 0, align 4
@adr_next = common dso_local global i32 0, align 4
@ADIST_CMD_KEEPALIVE = common dso_local global i32 0, align 4
@adist_send_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"keepalive_send: Request sent.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @keepalive_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keepalive_send() #0 {
  %1 = alloca %struct.adreq*, align 8
  %2 = call i32 @rw_rlock(i32* @adist_remote_lock)
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adhost, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @rw_unlock(i32* @adist_remote_lock)
  br label %31

9:                                                ; preds = %0
  %10 = call i32 @rw_unlock(i32* @adist_remote_lock)
  %11 = call i32 @mtx_lock(i32* @adist_free_list_lock)
  %12 = call %struct.adreq* @TAILQ_FIRST(i32* @adist_free_list)
  store %struct.adreq* %12, %struct.adreq** %1, align 8
  %13 = load %struct.adreq*, %struct.adreq** %1, align 8
  %14 = icmp ne %struct.adreq* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.adreq*, %struct.adreq** %1, align 8
  %17 = load i32, i32* @adr_next, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* @adist_free_list, %struct.adreq* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %9
  %20 = call i32 @mtx_unlock(i32* @adist_free_list_lock)
  %21 = load %struct.adreq*, %struct.adreq** %1, align 8
  %22 = icmp eq %struct.adreq* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %31

24:                                               ; preds = %19
  %25 = load %struct.adreq*, %struct.adreq** %1, align 8
  %26 = load i32, i32* @ADIST_CMD_KEEPALIVE, align 4
  %27 = call i32 @adreq_fill(%struct.adreq* %25, i32 %26, i32* null, i32 0)
  %28 = load %struct.adreq*, %struct.adreq** %1, align 8
  %29 = call i32 @QUEUE_INSERT(%struct.adreq* %28, i32* @adist_send_list)
  %30 = call i32 @pjdlog_debug(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %24, %23, %7
  ret void
}

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @rw_unlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.adreq* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.adreq*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @adreq_fill(%struct.adreq*, i32, i32*, i32) #1

declare dso_local i32 @QUEUE_INSERT(%struct.adreq*, i32*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
