; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_buffer.c_evbuffer_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, i64, i32, i32 (%struct.evbuffer*, i64, i64, i32)*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evbuffer_drain(%struct.evbuffer* %0, i64 %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %7 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %11 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %16 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %18 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %21 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %23 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  br label %40

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %27 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %32 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %37 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %38, %35
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %24, %14
  %41 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %42 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %48 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %47, i32 0, i32 4
  %49 = load i32 (%struct.evbuffer*, i64, i64, i32)*, i32 (%struct.evbuffer*, i64, i64, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.evbuffer*, i64, i64, i32)* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %53 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %52, i32 0, i32 4
  %54 = load i32 (%struct.evbuffer*, i64, i64, i32)*, i32 (%struct.evbuffer*, i64, i64, i32)** %53, align 8
  %55 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %58 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %61 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %54(%struct.evbuffer* %55, i64 %56, i64 %59, i32 %62)
  br label %64

64:                                               ; preds = %51, %46, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
