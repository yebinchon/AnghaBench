; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_write_atmost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_write_atmost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, %struct.evbuffer_chain*, i64 }
%struct.evbuffer_chain = type { i32 }

@EVBUFFER_SENDFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_write_atmost(%struct.evbuffer* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 -1, i32* %7, align 4
  %9 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %10 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %9)
  %11 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %12 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %58

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %22 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %16
  %26 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %27 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i64, i64* %6, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i8* @evbuffer_pullup(%struct.evbuffer* %33, i64 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i1 [ true, %32 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @EVUTIL_ASSERT(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @write(i32 %46, i8* %47, i64 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %42, %29
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @evbuffer_drain(%struct.evbuffer* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %15
  %59 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %60 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %59)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i8* @evbuffer_pullup(%struct.evbuffer*, i64) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
