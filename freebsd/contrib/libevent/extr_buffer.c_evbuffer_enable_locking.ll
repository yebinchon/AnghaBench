; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_enable_locking.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_enable_locking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32, i8* }

@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_enable_locking(%struct.evbuffer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i8*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %7 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %34

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %17 = call i32 @EVTHREAD_ALLOC_LOCK(i8* %15, i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %34

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %24 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %26 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %33

27:                                               ; preds = %11
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %30 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %32 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %27, %21
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %20, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @EVTHREAD_ALLOC_LOCK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
