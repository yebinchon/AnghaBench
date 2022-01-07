; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_receive_writer_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_receive_writer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_writer_arg = type { i64, i32, i32, i32, i32 }
%struct.receive_record_arg = type { i32, %struct.receive_record_arg*, i32*, i32 }

@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @receive_writer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_writer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.receive_writer_arg*, align 8
  %4 = alloca %struct.receive_record_arg*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.receive_writer_arg*
  store %struct.receive_writer_arg* %6, %struct.receive_writer_arg** %3, align 8
  %7 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %8 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %7, i32 0, i32 4
  %9 = call %struct.receive_record_arg* @bqueue_dequeue(i32* %8)
  store %struct.receive_record_arg* %9, %struct.receive_record_arg** %4, align 8
  br label %10

10:                                               ; preds = %61, %1
  %11 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %12 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %65

16:                                               ; preds = %10
  %17 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %18 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %23 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %24 = call i64 @receive_process_record(%struct.receive_writer_arg* %22, %struct.receive_record_arg* %23)
  %25 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %26 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %58

27:                                               ; preds = %16
  %28 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %29 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %34 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @dmu_return_arcbuf(i32* %35)
  %37 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %38 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %40 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %39, i32 0, i32 1
  store %struct.receive_record_arg* null, %struct.receive_record_arg** %40, align 8
  br label %57

41:                                               ; preds = %27
  %42 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %43 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %42, i32 0, i32 1
  %44 = load %struct.receive_record_arg*, %struct.receive_record_arg** %43, align 8
  %45 = icmp ne %struct.receive_record_arg* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %48 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %47, i32 0, i32 1
  %49 = load %struct.receive_record_arg*, %struct.receive_record_arg** %48, align 8
  %50 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %51 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @kmem_free(%struct.receive_record_arg* %49, i32 %52)
  %54 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %55 = getelementptr inbounds %struct.receive_record_arg, %struct.receive_record_arg* %54, i32 0, i32 1
  store %struct.receive_record_arg* null, %struct.receive_record_arg** %55, align 8
  br label %56

56:                                               ; preds = %46, %41
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57, %21
  %59 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %60 = call i32 @kmem_free(%struct.receive_record_arg* %59, i32 32)
  br label %61

61:                                               ; preds = %58
  %62 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %63 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %62, i32 0, i32 4
  %64 = call %struct.receive_record_arg* @bqueue_dequeue(i32* %63)
  store %struct.receive_record_arg* %64, %struct.receive_record_arg** %4, align 8
  br label %10

65:                                               ; preds = %10
  %66 = load %struct.receive_record_arg*, %struct.receive_record_arg** %4, align 8
  %67 = call i32 @kmem_free(%struct.receive_record_arg* %66, i32 32)
  %68 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %69 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %68, i32 0, i32 1
  %70 = call i32 @mutex_enter(i32* %69)
  %71 = load i32, i32* @B_TRUE, align 4
  %72 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %73 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %75 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %74, i32 0, i32 2
  %76 = call i32 @cv_signal(i32* %75)
  %77 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %3, align 8
  %78 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %77, i32 0, i32 1
  %79 = call i32 @mutex_exit(i32* %78)
  %80 = call i32 (...) @thread_exit()
  ret void
}

declare dso_local %struct.receive_record_arg* @bqueue_dequeue(i32*) #1

declare dso_local i64 @receive_process_record(%struct.receive_writer_arg*, %struct.receive_record_arg*) #1

declare dso_local i32 @dmu_return_arcbuf(i32*) #1

declare dso_local i32 @kmem_free(%struct.receive_record_arg*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
