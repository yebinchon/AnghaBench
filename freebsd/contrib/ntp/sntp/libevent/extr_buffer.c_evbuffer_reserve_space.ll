; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_reserve_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_reserve_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64 }
%struct.evbuffer_iovec = type { i64, i32 }
%struct.evbuffer_chain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_reserve_space(%struct.evbuffer* %0, i64 %1, %struct.evbuffer_iovec* %2, i32 %3) #0 {
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.evbuffer_iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.evbuffer_chain*, align 8
  %10 = alloca %struct.evbuffer_chain**, align 8
  %11 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.evbuffer_iovec* %2, %struct.evbuffer_iovec** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %11, align 4
  %12 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %13 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %12)
  %14 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %15 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %70

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %70

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %56

26:                                               ; preds = %23
  %27 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.evbuffer_chain* @evbuffer_expand_singlechain(%struct.evbuffer* %27, i64 %28)
  store %struct.evbuffer_chain* %29, %struct.evbuffer_chain** %9, align 8
  %30 = icmp eq %struct.evbuffer_chain* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %70

32:                                               ; preds = %26
  %33 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %34 = call i32 @CHAIN_SPACE_PTR(%struct.evbuffer_chain* %33)
  %35 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %7, align 8
  %36 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %35, i64 0
  %37 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  %38 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %39 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %38)
  %40 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %7, align 8
  %41 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %40, i64 0
  %42 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %32
  %46 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %7, align 8
  %47 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %46, i64 0
  %48 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp uge i64 %49, %50
  br label %52

52:                                               ; preds = %45, %32
  %53 = phi i1 [ true, %32 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @EVUTIL_ASSERT(i32 %54)
  store i32 1, i32* %11, align 4
  br label %69

56:                                               ; preds = %23
  %57 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @evbuffer_expand_fast_(%struct.evbuffer* %57, i64 %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %70

63:                                               ; preds = %56
  %64 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @evbuffer_read_setup_vecs_(%struct.evbuffer* %64, i64 %65, %struct.evbuffer_iovec* %66, i32 %67, %struct.evbuffer_chain*** %10, i32 0)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %63, %52
  br label %70

70:                                               ; preds = %69, %62, %31, %22, %18
  %71 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %72 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %71)
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local %struct.evbuffer_chain* @evbuffer_expand_singlechain(%struct.evbuffer*, i64) #1

declare dso_local i32 @CHAIN_SPACE_PTR(%struct.evbuffer_chain*) #1

declare dso_local i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i64 @evbuffer_expand_fast_(%struct.evbuffer*, i64, i32) #1

declare dso_local i32 @evbuffer_read_setup_vecs_(%struct.evbuffer*, i64, %struct.evbuffer_iovec*, i32, %struct.evbuffer_chain***, i32) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
