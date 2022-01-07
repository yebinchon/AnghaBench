; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32, i32, %struct.evbuffer_chain**, i64 }
%struct.evbuffer_chain = type { i8*, i32, i32, %struct.evbuffer_chain* }

@EVBUFFER_MAX_READ = common dso_local global i32 0, align 4
@EVBUFFER_CHAIN_MAX = common dso_local global i64 0, align 8
@NUM_READ_IOVEC = common dso_local global i32 0, align 4
@WSAECONNABORTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_read(%struct.evbuffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.evbuffer_chain**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.evbuffer_chain*, align 8
  %11 = alloca i8*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %13 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %12)
  %14 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %15 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %9, align 4
  br label %91

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @get_n_bytes_readable_on_socket(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @EVBUFFER_MAX_READ, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @EVBUFFER_MAX_READ, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.evbuffer_chain* @evbuffer_expand_singlechain(%struct.evbuffer* %40, i32 %41)
  store %struct.evbuffer_chain* %42, %struct.evbuffer_chain** %10, align 8
  %43 = icmp eq %struct.evbuffer_chain* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 -1, i32* %9, align 4
  br label %91

45:                                               ; preds = %39
  %46 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %47 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %50 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %55 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  store i8* %58, i8** %11, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @read(i32 %59, i8* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  store i32 -1, i32* %9, align 4
  br label %91

66:                                               ; preds = %45
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %91

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %73 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %77 = call i32 @advance_last_with_data(%struct.evbuffer* %76)
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %80 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %85 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %89 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %70, %69, %65, %44, %18
  %92 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %93 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %92)
  %94 = load i32, i32* %9, align 4
  ret i32 %94
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @get_n_bytes_readable_on_socket(i32) #1

declare dso_local %struct.evbuffer_chain* @evbuffer_expand_singlechain(%struct.evbuffer*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @advance_last_with_data(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_invoke_callbacks_(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
