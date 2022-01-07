; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_add_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_add_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, i64, i32, i64, i64 }
%struct.evbuffer_chain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_add_buffer(%struct.evbuffer* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_chain*, align 8
  %6 = alloca %struct.evbuffer_chain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %11 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %12 = call i32 @EVBUFFER_LOCK2(%struct.evbuffer* %10, %struct.evbuffer* %11)
  %13 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %14 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %17 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %23 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %24 = icmp eq %struct.evbuffer* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %2
  br label %76

26:                                               ; preds = %21
  %27 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %28 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %33 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26
  store i32 -1, i32* %9, align 4
  br label %76

37:                                               ; preds = %31
  %38 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %39 = call i64 @PRESERVE_PINNED(%struct.evbuffer* %38, %struct.evbuffer_chain** %5, %struct.evbuffer_chain** %6)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %9, align 4
  br label %76

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %47 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @evbuffer_free_all_chains(i32 %48)
  %50 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %51 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %52 = call i32 @COPY_CHAIN(%struct.evbuffer* %50, %struct.evbuffer* %51)
  br label %57

53:                                               ; preds = %42
  %54 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %55 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %56 = call i32 @APPEND_CHAIN(%struct.evbuffer* %54, %struct.evbuffer* %55)
  br label %57

57:                                               ; preds = %53, %45
  %58 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %59 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %60 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  %61 = call i32 @RESTORE_PINNED(%struct.evbuffer* %58, %struct.evbuffer_chain* %59, %struct.evbuffer_chain* %60)
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %64 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %69 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %73 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %72)
  %74 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %75 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %74)
  br label %76

76:                                               ; preds = %57, %41, %36, %25
  %77 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %78 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %79 = call i32 @EVBUFFER_UNLOCK2(%struct.evbuffer* %77, %struct.evbuffer* %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @EVBUFFER_LOCK2(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i64 @PRESERVE_PINNED(%struct.evbuffer*, %struct.evbuffer_chain**, %struct.evbuffer_chain**) #1

declare dso_local i32 @evbuffer_free_all_chains(i32) #1

declare dso_local i32 @COPY_CHAIN(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @APPEND_CHAIN(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @RESTORE_PINNED(%struct.evbuffer*, %struct.evbuffer_chain*, %struct.evbuffer_chain*) #1

declare dso_local i32 @evbuffer_invoke_callbacks_(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK2(%struct.evbuffer*, %struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
