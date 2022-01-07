; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_COPY_CHAIN.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_COPY_CHAIN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, %struct.evbuffer*)* @COPY_CHAIN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @COPY_CHAIN(%struct.evbuffer* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %4, align 8
  %5 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %6 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %5)
  %7 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %8 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %7)
  %9 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %10 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %13 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %15 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %18 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %17, i32 0, i32 3
  %19 = icmp eq i32* %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %22 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %21, i32 0, i32 3
  %23 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %24 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  br label %31

25:                                               ; preds = %2
  %26 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %27 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %30 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %33 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %36 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %38 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %41 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  ret void
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
