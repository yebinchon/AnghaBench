; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_init_environment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_sender.c_init_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adreq = type { i64, i64, i32, i32 }

@adist_remote_lock = common dso_local global i32 0, align 4
@adist_remote_mtx = common dso_local global i32 0, align 4
@adist_remote_cond = common dso_local global i32 0, align 4
@adist_free_list = common dso_local global i32 0, align 4
@adist_free_list_lock = common dso_local global i32 0, align 4
@adist_free_list_cond = common dso_local global i32 0, align 4
@adist_send_list = common dso_local global i32 0, align 4
@adist_send_list_lock = common dso_local global i32 0, align 4
@adist_send_list_cond = common dso_local global i32 0, align 4
@adist_recv_list = common dso_local global i32 0, align 4
@adist_recv_list_lock = common dso_local global i32 0, align 4
@adist_recv_list_cond = common dso_local global i32 0, align 4
@ADIST_QUEUE_SIZE = common dso_local global i32 0, align 4
@ADIST_BUF_SIZE = common dso_local global i64 0, align 8
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unable to allocate %zu bytes of memory for adreq object.\00", align 1
@ADIST_BYTEORDER = common dso_local global i32 0, align 4
@ADIST_CMD_UNDEFINED = common dso_local global i32 0, align 4
@adr_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_environment() #0 {
  %1 = alloca %struct.adreq*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @rw_init(i32* @adist_remote_lock)
  %4 = call i32 @mtx_init(i32* @adist_remote_mtx)
  %5 = call i32 @cv_init(i32* @adist_remote_cond)
  %6 = call i32 @TAILQ_INIT(i32* @adist_free_list)
  %7 = call i32 @mtx_init(i32* @adist_free_list_lock)
  %8 = call i32 @cv_init(i32* @adist_free_list_cond)
  %9 = call i32 @TAILQ_INIT(i32* @adist_send_list)
  %10 = call i32 @mtx_init(i32* @adist_send_list_lock)
  %11 = call i32 @cv_init(i32* @adist_send_list_cond)
  %12 = call i32 @TAILQ_INIT(i32* @adist_recv_list)
  %13 = call i32 @mtx_init(i32* @adist_recv_list_lock)
  %14 = call i32 @cv_init(i32* @adist_recv_list_cond)
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %44, %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @ADIST_QUEUE_SIZE, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load i64, i64* @ADIST_BUF_SIZE, align 8
  %21 = add i64 24, %20
  %22 = call %struct.adreq* @malloc(i64 %21)
  store %struct.adreq* %22, %struct.adreq** %1, align 8
  %23 = load %struct.adreq*, %struct.adreq** %1, align 8
  %24 = icmp eq %struct.adreq* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @EX_TEMPFAIL, align 4
  %27 = load i64, i64* @ADIST_BUF_SIZE, align 8
  %28 = add i64 24, %27
  %29 = call i32 @pjdlog_exitx(i32 %26, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32, i32* @ADIST_BYTEORDER, align 4
  %32 = load %struct.adreq*, %struct.adreq** %1, align 8
  %33 = getelementptr inbounds %struct.adreq, %struct.adreq* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @ADIST_CMD_UNDEFINED, align 4
  %35 = load %struct.adreq*, %struct.adreq** %1, align 8
  %36 = getelementptr inbounds %struct.adreq, %struct.adreq* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.adreq*, %struct.adreq** %1, align 8
  %38 = getelementptr inbounds %struct.adreq, %struct.adreq* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.adreq*, %struct.adreq** %1, align 8
  %40 = getelementptr inbounds %struct.adreq, %struct.adreq* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.adreq*, %struct.adreq** %1, align 8
  %42 = load i32, i32* @adr_next, align 4
  %43 = call i32 @TAILQ_INSERT_TAIL(i32* @adist_free_list, %struct.adreq* %41, i32 %42)
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %2, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %15

47:                                               ; preds = %15
  ret void
}

declare dso_local i32 @rw_init(i32*) #1

declare dso_local i32 @mtx_init(i32*) #1

declare dso_local i32 @cv_init(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local %struct.adreq* @malloc(i64) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*, i64) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.adreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
