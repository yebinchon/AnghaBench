; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_list_add_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_list_add_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_list = type { i32, i32, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_list*, %struct.list_head*)* @list_add_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_add_tail(%struct.work_list* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.work_list*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  store %struct.work_list* %0, %struct.work_list** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.work_list*, %struct.work_list** %3, align 8
  %7 = getelementptr inbounds %struct.work_list, %struct.work_list* %6, i32 0, i32 1
  %8 = call i32 @pthread_mutex_lock(i32* %7)
  %9 = load %struct.work_list*, %struct.work_list** %3, align 8
  %10 = call i32 @__list_empty(%struct.work_list* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.work_list*, %struct.work_list** %3, align 8
  %12 = getelementptr inbounds %struct.work_list, %struct.work_list* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.list_head, %struct.list_head* %12, i32 0, i32 0
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8
  %15 = load %struct.list_head*, %struct.list_head** %4, align 8
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i32 0, i32 0
  store %struct.list_head* %14, %struct.list_head** %16, align 8
  %17 = load %struct.work_list*, %struct.work_list** %3, align 8
  %18 = getelementptr inbounds %struct.work_list, %struct.work_list* %17, i32 0, i32 2
  %19 = load %struct.list_head*, %struct.list_head** %4, align 8
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i32 0, i32 1
  store %struct.list_head* %18, %struct.list_head** %20, align 8
  %21 = load %struct.list_head*, %struct.list_head** %4, align 8
  %22 = load %struct.work_list*, %struct.work_list** %3, align 8
  %23 = getelementptr inbounds %struct.work_list, %struct.work_list* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0
  store %struct.list_head* %21, %struct.list_head** %24, align 8
  %25 = load %struct.list_head*, %struct.list_head** %4, align 8
  %26 = getelementptr inbounds %struct.list_head, %struct.list_head* %25, i32 0, i32 0
  %27 = load %struct.list_head*, %struct.list_head** %26, align 8
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i32 0, i32 1
  store %struct.list_head* %21, %struct.list_head** %28, align 8
  %29 = load %struct.work_list*, %struct.work_list** %3, align 8
  %30 = getelementptr inbounds %struct.work_list, %struct.work_list* %29, i32 0, i32 1
  %31 = call i32 @pthread_mutex_unlock(i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.work_list*, %struct.work_list** %3, align 8
  %36 = getelementptr inbounds %struct.work_list, %struct.work_list* %35, i32 0, i32 0
  %37 = call i32 @pthread_cond_signal(i32* %36)
  br label %38

38:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @__list_empty(%struct.work_list*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
