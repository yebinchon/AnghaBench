; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_reserve_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_reserve_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64 }
%struct.evbuffer_iovec = type { i64, i8* }
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
  br label %71

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %71

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %57

26:                                               ; preds = %23
  %27 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.evbuffer_chain* @evbuffer_expand_singlechain(%struct.evbuffer* %27, i64 %28)
  store %struct.evbuffer_chain* %29, %struct.evbuffer_chain** %9, align 8
  %30 = icmp eq %struct.evbuffer_chain* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %71

32:                                               ; preds = %26
  %33 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %34 = call i64 @CHAIN_SPACE_PTR(%struct.evbuffer_chain* %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %7, align 8
  %37 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %36, i64 0
  %38 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  %39 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  %40 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %39)
  %41 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %7, align 8
  %42 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %41, i64 0
  %43 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %32
  %47 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %7, align 8
  %48 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %47, i64 0
  %49 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp uge i64 %50, %51
  br label %53

53:                                               ; preds = %46, %32
  %54 = phi i1 [ true, %32 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @EVUTIL_ASSERT(i32 %55)
  store i32 1, i32* %11, align 4
  br label %70

57:                                               ; preds = %23
  %58 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @evbuffer_expand_fast_(%struct.evbuffer* %58, i64 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %71

64:                                               ; preds = %57
  %65 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @evbuffer_read_setup_vecs_(%struct.evbuffer* %65, i64 %66, %struct.evbuffer_iovec* %67, i32 %68, %struct.evbuffer_chain*** %10, i32 0)
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %64, %53
  br label %71

71:                                               ; preds = %70, %63, %31, %22, %18
  %72 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %73 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %72)
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local %struct.evbuffer_chain* @evbuffer_expand_singlechain(%struct.evbuffer*, i64) #1

declare dso_local i64 @CHAIN_SPACE_PTR(%struct.evbuffer_chain*) #1

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
