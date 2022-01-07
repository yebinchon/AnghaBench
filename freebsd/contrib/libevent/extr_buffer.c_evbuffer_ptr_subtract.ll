; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_ptr_subtract.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_ptr_subtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_ptr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EVBUFFER_PTR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evbuffer*, %struct.evbuffer_ptr*, i64)* @evbuffer_ptr_subtract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evbuffer_ptr_subtract(%struct.evbuffer* %0, %struct.evbuffer_ptr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca %struct.evbuffer_ptr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store %struct.evbuffer_ptr* %1, %struct.evbuffer_ptr** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %6, align 8
  %10 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %57

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %6, align 8
  %17 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %57

21:                                               ; preds = %14
  %22 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %6, align 8
  %23 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %6, align 8
  %30 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ule i64 %28, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %6, align 8
  %37 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, %35
  store i64 %40, i64* %38, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %6, align 8
  %43 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %44, %41
  store i64 %45, i64* %43, align 8
  store i32 0, i32* %4, align 4
  br label %57

46:                                               ; preds = %27, %21
  %47 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %6, align 8
  %48 = getelementptr inbounds %struct.evbuffer_ptr, %struct.evbuffer_ptr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %8, align 8
  %52 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %53 = load %struct.evbuffer_ptr*, %struct.evbuffer_ptr** %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @EVBUFFER_PTR_SET, align 4
  %56 = call i32 @evbuffer_ptr_set(%struct.evbuffer* %52, %struct.evbuffer_ptr* %53, i64 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %46, %34, %20, %13
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @evbuffer_ptr_set(%struct.evbuffer*, %struct.evbuffer_ptr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
