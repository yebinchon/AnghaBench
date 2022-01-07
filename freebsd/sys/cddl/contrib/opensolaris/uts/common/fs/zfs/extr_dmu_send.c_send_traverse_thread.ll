; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_send_traverse_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_send_traverse_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_thread_arg = type { i32, i32, i32, i32, i32, i32* }
%struct.send_block_record = type { i32 }

@send_cb = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @send_traverse_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_traverse_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.send_thread_arg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.send_block_record*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.send_thread_arg*
  store %struct.send_thread_arg* %7, %struct.send_thread_arg** %3, align 8
  %8 = load %struct.send_thread_arg*, %struct.send_thread_arg** %3, align 8
  %9 = getelementptr inbounds %struct.send_thread_arg, %struct.send_thread_arg* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load %struct.send_thread_arg*, %struct.send_thread_arg** %3, align 8
  %14 = getelementptr inbounds %struct.send_thread_arg, %struct.send_thread_arg* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.send_thread_arg*, %struct.send_thread_arg** %3, align 8
  %17 = getelementptr inbounds %struct.send_thread_arg, %struct.send_thread_arg* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.send_thread_arg*, %struct.send_thread_arg** %3, align 8
  %20 = getelementptr inbounds %struct.send_thread_arg, %struct.send_thread_arg* %19, i32 0, i32 3
  %21 = load %struct.send_thread_arg*, %struct.send_thread_arg** %3, align 8
  %22 = getelementptr inbounds %struct.send_thread_arg, %struct.send_thread_arg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @send_cb, align 4
  %25 = load %struct.send_thread_arg*, %struct.send_thread_arg** %3, align 8
  %26 = call i32 @traverse_dataset_resume(i32* %15, i32 %18, i32* %20, i32 %23, i32 %24, %struct.send_thread_arg* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EINTR, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %12
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.send_thread_arg*, %struct.send_thread_arg** %3, align 8
  %33 = getelementptr inbounds %struct.send_thread_arg, %struct.send_thread_arg* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %12
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i32, i32* @KM_SLEEP, align 4
  %37 = call %struct.send_block_record* @kmem_zalloc(i32 4, i32 %36)
  store %struct.send_block_record* %37, %struct.send_block_record** %5, align 8
  %38 = load i32, i32* @B_TRUE, align 4
  %39 = load %struct.send_block_record*, %struct.send_block_record** %5, align 8
  %40 = getelementptr inbounds %struct.send_block_record, %struct.send_block_record* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.send_thread_arg*, %struct.send_thread_arg** %3, align 8
  %42 = getelementptr inbounds %struct.send_thread_arg, %struct.send_thread_arg* %41, i32 0, i32 1
  %43 = load %struct.send_block_record*, %struct.send_block_record** %5, align 8
  %44 = call i32 @bqueue_enqueue(i32* %42, %struct.send_block_record* %43, i32 1)
  %45 = call i32 (...) @thread_exit()
  ret void
}

declare dso_local i32 @traverse_dataset_resume(i32*, i32, i32*, i32, i32, %struct.send_thread_arg*) #1

declare dso_local %struct.send_block_record* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @bqueue_enqueue(i32*, %struct.send_block_record*, i32) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
