; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_chain_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_chain_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_chain = type { i64, i32, i32 }

@EVBUFFER_CHAIN_MAX = common dso_local global i32 0, align 4
@EVBUFFER_CHAIN_SIZE = common dso_local global i64 0, align 8
@MIN_BUFFER_SIZE = common dso_local global i64 0, align 8
@u_char = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evbuffer_chain* (i64)* @evbuffer_chain_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evbuffer_chain* @evbuffer_chain_new(i64 %0) #0 {
  %2 = alloca %struct.evbuffer_chain*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.evbuffer_chain*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @EVBUFFER_CHAIN_MAX, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @EVBUFFER_CHAIN_SIZE, align 8
  %10 = sub i64 %8, %9
  %11 = icmp ugt i64 %6, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %2, align 8
  br label %56

13:                                               ; preds = %1
  %14 = load i64, i64* @EVBUFFER_CHAIN_SIZE, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @EVBUFFER_CHAIN_MAX, align 4
  %19 = sdiv i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load i64, i64* @MIN_BUFFER_SIZE, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %28, %22
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = shl i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %24

31:                                               ; preds = %24
  br label %34

32:                                               ; preds = %13
  %33 = load i64, i64* %3, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i64, i64* %5, align 8
  %36 = call %struct.evbuffer_chain* @mm_malloc(i64 %35)
  store %struct.evbuffer_chain* %36, %struct.evbuffer_chain** %4, align 8
  %37 = icmp eq %struct.evbuffer_chain* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %2, align 8
  br label %56

39:                                               ; preds = %34
  %40 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %41 = load i64, i64* @EVBUFFER_CHAIN_SIZE, align 8
  %42 = call i32 @memset(%struct.evbuffer_chain* %40, i32 0, i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @EVBUFFER_CHAIN_SIZE, align 8
  %45 = sub i64 %43, %44
  %46 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %47 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @u_char, align 4
  %49 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %50 = call i32 @EVBUFFER_CHAIN_EXTRA(i32 %48, %struct.evbuffer_chain* %49)
  %51 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %52 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %54 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  %55 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  store %struct.evbuffer_chain* %55, %struct.evbuffer_chain** %2, align 8
  br label %56

56:                                               ; preds = %39, %38, %12
  %57 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %2, align 8
  ret %struct.evbuffer_chain* %57
}

declare dso_local %struct.evbuffer_chain* @mm_malloc(i64) #1

declare dso_local i32 @memset(%struct.evbuffer_chain*, i32, i64) #1

declare dso_local i32 @EVBUFFER_CHAIN_EXTRA(i32, %struct.evbuffer_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
