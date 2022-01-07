; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex_attr = type { i32 }
%struct.pthread_mutex = type { i32 }

@_pthread_mutexattr_default = common dso_local global %struct.pthread_mutex_attr zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread_mutex**, %struct.pthread_mutex_attr*, i8* (i64, i64)*)* @mutex_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mutex_init(%struct.pthread_mutex** %0, %struct.pthread_mutex_attr* %1, i8* (i64, i64)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pthread_mutex**, align 8
  %6 = alloca %struct.pthread_mutex_attr*, align 8
  %7 = alloca i8* (i64, i64)*, align 8
  %8 = alloca %struct.pthread_mutex_attr*, align 8
  %9 = alloca %struct.pthread_mutex*, align 8
  %10 = alloca i32, align 4
  store %struct.pthread_mutex** %0, %struct.pthread_mutex*** %5, align 8
  store %struct.pthread_mutex_attr* %1, %struct.pthread_mutex_attr** %6, align 8
  store i8* (i64, i64)* %2, i8* (i64, i64)** %7, align 8
  %11 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %6, align 8
  %12 = icmp eq %struct.pthread_mutex_attr* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.pthread_mutex_attr* @_pthread_mutexattr_default, %struct.pthread_mutex_attr** %8, align 8
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %6, align 8
  store %struct.pthread_mutex_attr* %15, %struct.pthread_mutex_attr** %8, align 8
  %16 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %8, align 8
  %17 = call i32 @mutex_check_attr(%struct.pthread_mutex_attr* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i8* (i64, i64)*, i8* (i64, i64)** %7, align 8
  %25 = call i8* %24(i64 1, i64 4)
  %26 = bitcast i8* %25 to %struct.pthread_mutex*
  store %struct.pthread_mutex* %26, %struct.pthread_mutex** %9, align 8
  %27 = icmp eq %struct.pthread_mutex* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %4, align 4
  br label %36

30:                                               ; preds = %23
  %31 = load %struct.pthread_mutex*, %struct.pthread_mutex** %9, align 8
  %32 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %8, align 8
  %33 = call i32 @mutex_init_body(%struct.pthread_mutex* %31, %struct.pthread_mutex_attr* %32)
  %34 = load %struct.pthread_mutex*, %struct.pthread_mutex** %9, align 8
  %35 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %5, align 8
  store %struct.pthread_mutex* %34, %struct.pthread_mutex** %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %28, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @mutex_check_attr(%struct.pthread_mutex_attr*) #1

declare dso_local i32 @mutex_init_body(%struct.pthread_mutex*, %struct.pthread_mutex_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
