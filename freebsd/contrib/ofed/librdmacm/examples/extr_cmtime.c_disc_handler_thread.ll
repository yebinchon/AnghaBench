; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_disc_handler_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_disc_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.list_head = type { i32 }

@disc_work = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @disc_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @disc_handler_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.list_head*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %23, %1
  %5 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @disc_work, i32 0, i32 0))
  %6 = call i64 @__list_empty(%struct.TYPE_4__* @disc_work)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 @pthread_cond_wait(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @disc_work, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @disc_work, i32 0, i32 0))
  br label %10

10:                                               ; preds = %8, %4
  %11 = call %struct.list_head* @__list_remove_head(%struct.TYPE_4__* @disc_work)
  store %struct.list_head* %11, %struct.list_head** %3, align 8
  %12 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @disc_work, i32 0, i32 0))
  %13 = load %struct.list_head*, %struct.list_head** %3, align 8
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rdma_disconnect(i32 %15)
  %17 = load %struct.list_head*, %struct.list_head** %3, align 8
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rdma_destroy_id(i32 %19)
  %21 = load %struct.list_head*, %struct.list_head** %3, align 8
  %22 = call i32 @free(%struct.list_head* %21)
  br label %23

23:                                               ; preds = %10
  br i1 true, label %4, label %24

24:                                               ; preds = %23
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @__list_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local %struct.list_head* @__list_remove_head(%struct.TYPE_4__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @rdma_destroy_id(i32) #1

declare dso_local i32 @free(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
