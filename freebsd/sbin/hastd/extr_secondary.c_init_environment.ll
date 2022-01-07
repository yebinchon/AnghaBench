; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_init_environment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_secondary.c_init_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hio = type { i32* }

@hio_free_list = common dso_local global i32 0, align 4
@hio_free_list_lock = common dso_local global i32 0, align 4
@hio_free_list_cond = common dso_local global i32 0, align 4
@hio_disk_list = common dso_local global i32 0, align 4
@hio_disk_list_lock = common dso_local global i32 0, align 4
@hio_disk_list_cond = common dso_local global i32 0, align 4
@hio_send_list = common dso_local global i32 0, align 4
@hio_send_list_lock = common dso_local global i32 0, align 4
@hio_send_list_cond = common dso_local global i32 0, align 4
@HAST_HIO_MAX = common dso_local global i32 0, align 4
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unable to allocate memory (%zu bytes) for hio request.\00", align 1
@MAXPHYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Unable to allocate memory (%zu bytes) for gctl_data.\00", align 1
@hio_next = common dso_local global i32 0, align 4
@hio_free_list_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_environment() #0 {
  %1 = alloca %struct.hio*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @TAILQ_INIT(i32* @hio_free_list)
  %4 = call i32 @mtx_init(i32* @hio_free_list_lock)
  %5 = call i32 @cv_init(i32* @hio_free_list_cond)
  %6 = call i32 @TAILQ_INIT(i32* @hio_disk_list)
  %7 = call i32 @mtx_init(i32* @hio_disk_list_lock)
  %8 = call i32 @cv_init(i32* @hio_disk_list_cond)
  %9 = call i32 @TAILQ_INIT(i32* @hio_send_list)
  %10 = call i32 @mtx_init(i32* @hio_send_list_lock)
  %11 = call i32 @cv_init(i32* @hio_send_list_cond)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %47, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @HAST_HIO_MAX, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = call i8* @malloc(i32 8)
  %18 = bitcast i8* %17 to %struct.hio*
  store %struct.hio* %18, %struct.hio** %1, align 8
  %19 = load %struct.hio*, %struct.hio** %1, align 8
  %20 = icmp eq %struct.hio* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EX_TEMPFAIL, align 4
  %23 = call i32 @pjdlog_exitx(i32 %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 8)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* @MAXPHYS, align 4
  %26 = call i8* @malloc(i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.hio*, %struct.hio** %1, align 8
  %29 = getelementptr inbounds %struct.hio, %struct.hio* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.hio*, %struct.hio** %1, align 8
  %31 = getelementptr inbounds %struct.hio, %struct.hio* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32, i32* @EX_TEMPFAIL, align 4
  %36 = load i32, i32* @MAXPHYS, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 @pjdlog_exitx(i32 %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %34, %24
  %40 = load %struct.hio*, %struct.hio** %1, align 8
  %41 = call i32 @hio_clear(%struct.hio* %40)
  %42 = load %struct.hio*, %struct.hio** %1, align 8
  %43 = load i32, i32* @hio_next, align 4
  %44 = call i32 @TAILQ_INSERT_HEAD(i32* @hio_free_list, %struct.hio* %42, i32 %43)
  %45 = load i32, i32* @hio_free_list_size, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @hio_free_list_size, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %2, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %12

50:                                               ; preds = %12
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*) #1

declare dso_local i32 @cv_init(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*, i64) #1

declare dso_local i32 @hio_clear(%struct.hio*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.hio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
