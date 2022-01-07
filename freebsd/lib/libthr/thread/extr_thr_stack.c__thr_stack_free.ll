; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_stack.c__thr_stack_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_stack.c__thr_stack_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_attr = type { i32, i32, i32, i32* }
%struct.stack = type { i64, i64, i32* }

@THR_STACK_USER = common dso_local global i32 0, align 4
@THR_STACK_DEFAULT = common dso_local global i64 0, align 8
@_thr_guard_default = common dso_local global i64 0, align 8
@dstackq = common dso_local global i32 0, align 4
@qe = common dso_local global i32 0, align 4
@mstackq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_stack_free(%struct.pthread_attr* %0) #0 {
  %2 = alloca %struct.pthread_attr*, align 8
  %3 = alloca %struct.stack*, align 8
  store %struct.pthread_attr* %0, %struct.pthread_attr** %2, align 8
  %4 = load %struct.pthread_attr*, %struct.pthread_attr** %2, align 8
  %5 = icmp ne %struct.pthread_attr* %4, null
  br i1 %5, label %6, label %71

6:                                                ; preds = %1
  %7 = load %struct.pthread_attr*, %struct.pthread_attr** %2, align 8
  %8 = getelementptr inbounds %struct.pthread_attr, %struct.pthread_attr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @THR_STACK_USER, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %71

13:                                               ; preds = %6
  %14 = load %struct.pthread_attr*, %struct.pthread_attr** %2, align 8
  %15 = getelementptr inbounds %struct.pthread_attr, %struct.pthread_attr* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %71

18:                                               ; preds = %13
  %19 = load %struct.pthread_attr*, %struct.pthread_attr** %2, align 8
  %20 = getelementptr inbounds %struct.pthread_attr, %struct.pthread_attr* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load %struct.pthread_attr*, %struct.pthread_attr** %2, align 8
  %24 = getelementptr inbounds %struct.pthread_attr, %struct.pthread_attr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -24
  %29 = bitcast i8* %28 to %struct.stack*
  store %struct.stack* %29, %struct.stack** %3, align 8
  %30 = load %struct.pthread_attr*, %struct.pthread_attr** %2, align 8
  %31 = getelementptr inbounds %struct.pthread_attr, %struct.pthread_attr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @round_up(i32 %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.stack*, %struct.stack** %3, align 8
  %36 = getelementptr inbounds %struct.stack, %struct.stack* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.pthread_attr*, %struct.pthread_attr** %2, align 8
  %38 = getelementptr inbounds %struct.pthread_attr, %struct.pthread_attr* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @round_up(i32 %39)
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.stack*, %struct.stack** %3, align 8
  %43 = getelementptr inbounds %struct.stack, %struct.stack* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.pthread_attr*, %struct.pthread_attr** %2, align 8
  %45 = getelementptr inbounds %struct.pthread_attr, %struct.pthread_attr* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.stack*, %struct.stack** %3, align 8
  %48 = getelementptr inbounds %struct.stack, %struct.stack* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load %struct.stack*, %struct.stack** %3, align 8
  %50 = getelementptr inbounds %struct.stack, %struct.stack* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @THR_STACK_DEFAULT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %18
  %55 = load %struct.stack*, %struct.stack** %3, align 8
  %56 = getelementptr inbounds %struct.stack, %struct.stack* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @_thr_guard_default, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.stack*, %struct.stack** %3, align 8
  %62 = load i32, i32* @qe, align 4
  %63 = call i32 @LIST_INSERT_HEAD(i32* @dstackq, %struct.stack* %61, i32 %62)
  br label %68

64:                                               ; preds = %54, %18
  %65 = load %struct.stack*, %struct.stack** %3, align 8
  %66 = load i32, i32* @qe, align 4
  %67 = call i32 @LIST_INSERT_HEAD(i32* @mstackq, %struct.stack* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.pthread_attr*, %struct.pthread_attr** %2, align 8
  %70 = getelementptr inbounds %struct.pthread_attr, %struct.pthread_attr* %69, i32 0, i32 3
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %68, %13, %6, %1
  ret void
}

declare dso_local i8* @round_up(i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.stack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
