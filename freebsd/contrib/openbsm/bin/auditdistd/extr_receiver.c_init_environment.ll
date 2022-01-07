; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_init_environment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_receiver.c_init_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adreq = type { i32 }

@adist_free_list = common dso_local global i32 0, align 4
@adist_free_list_lock = common dso_local global i32 0, align 4
@adist_free_list_cond = common dso_local global i32 0, align 4
@adist_disk_list = common dso_local global i32 0, align 4
@adist_disk_list_lock = common dso_local global i32 0, align 4
@adist_disk_list_cond = common dso_local global i32 0, align 4
@adist_send_list = common dso_local global i32 0, align 4
@adist_send_list_lock = common dso_local global i32 0, align 4
@adist_send_list_cond = common dso_local global i32 0, align 4
@ADIST_QUEUE_SIZE = common dso_local global i32 0, align 4
@ADIST_BUF_SIZE = common dso_local global i64 0, align 8
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unable to allocate %zu bytes of memory for adreq object.\00", align 1
@adr_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_environment() #0 {
  %1 = alloca %struct.adreq*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @TAILQ_INIT(i32* @adist_free_list)
  %4 = call i32 @mtx_init(i32* @adist_free_list_lock)
  %5 = call i32 @cv_init(i32* @adist_free_list_cond)
  %6 = call i32 @TAILQ_INIT(i32* @adist_disk_list)
  %7 = call i32 @mtx_init(i32* @adist_disk_list_lock)
  %8 = call i32 @cv_init(i32* @adist_disk_list_cond)
  %9 = call i32 @TAILQ_INIT(i32* @adist_send_list)
  %10 = call i32 @mtx_init(i32* @adist_send_list_lock)
  %11 = call i32 @cv_init(i32* @adist_send_list_cond)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %33, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @ADIST_QUEUE_SIZE, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i64, i64* @ADIST_BUF_SIZE, align 8
  %18 = add i64 4, %17
  %19 = call %struct.adreq* @malloc(i64 %18)
  store %struct.adreq* %19, %struct.adreq** %1, align 8
  %20 = load %struct.adreq*, %struct.adreq** %1, align 8
  %21 = icmp eq %struct.adreq* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @EX_TEMPFAIL, align 4
  %24 = load i64, i64* @ADIST_BUF_SIZE, align 8
  %25 = add i64 4, %24
  %26 = call i32 @pjdlog_exitx(i32 %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.adreq*, %struct.adreq** %1, align 8
  %29 = call i32 @adreq_clear(%struct.adreq* %28)
  %30 = load %struct.adreq*, %struct.adreq** %1, align 8
  %31 = load i32, i32* @adr_next, align 4
  %32 = call i32 @TAILQ_INSERT_TAIL(i32* @adist_free_list, %struct.adreq* %30, i32 %31)
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %2, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %12

36:                                               ; preds = %12
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*) #1

declare dso_local i32 @cv_init(i32*) #1

declare dso_local %struct.adreq* @malloc(i64) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*, i64) #1

declare dso_local i32 @adreq_clear(%struct.adreq*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.adreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
