; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_file_segment_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_file_segment_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_file_segment = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.stat = type { i32 }

@EVBUFFER_CHAIN_MAX = common dso_local global i32 0, align 4
@EVBUF_FS_DISABLE_LOCKING = common dso_local global i32 0, align 4
@EVBUF_FS_DISABLE_SENDFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evbuffer_file_segment* @evbuffer_file_segment_new(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.evbuffer_file_segment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.evbuffer_file_segment*, align 8
  %11 = alloca %struct.stat, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call %struct.evbuffer_file_segment* @mm_calloc(i32 48, i32 1)
  store %struct.evbuffer_file_segment* %12, %struct.evbuffer_file_segment** %10, align 8
  %13 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %14 = icmp ne %struct.evbuffer_file_segment* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.evbuffer_file_segment* null, %struct.evbuffer_file_segment** %5, align 8
  br label %82

16:                                               ; preds = %4
  %17 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %18 = getelementptr inbounds %struct.evbuffer_file_segment, %struct.evbuffer_file_segment* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %21 = getelementptr inbounds %struct.evbuffer_file_segment, %struct.evbuffer_file_segment* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %24 = getelementptr inbounds %struct.evbuffer_file_segment, %struct.evbuffer_file_segment* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %27 = getelementptr inbounds %struct.evbuffer_file_segment, %struct.evbuffer_file_segment* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %29 = getelementptr inbounds %struct.evbuffer_file_segment, %struct.evbuffer_file_segment* %28, i32 0, i32 8
  store i32* null, i32** %29, align 8
  %30 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %31 = getelementptr inbounds %struct.evbuffer_file_segment, %struct.evbuffer_file_segment* %30, i32 0, i32 7
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %16
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @fstat(i32 %35, %struct.stat* %11)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %79

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %16
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %45 = getelementptr inbounds %struct.evbuffer_file_segment, %struct.evbuffer_file_segment* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EVBUFFER_CHAIN_MAX, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @EVBUFFER_CHAIN_MAX, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %51, %48, %42
  br label %79

62:                                               ; preds = %55
  %63 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %64 = call i64 @evbuffer_file_segment_materialize(%struct.evbuffer_file_segment* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %79

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @EVBUF_FS_DISABLE_LOCKING, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %74 = getelementptr inbounds %struct.evbuffer_file_segment, %struct.evbuffer_file_segment* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @EVTHREAD_ALLOC_LOCK(i32 %75, i32 0)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  store %struct.evbuffer_file_segment* %78, %struct.evbuffer_file_segment** %5, align 8
  br label %82

79:                                               ; preds = %66, %61, %38
  %80 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %81 = call i32 @mm_free(%struct.evbuffer_file_segment* %80)
  store %struct.evbuffer_file_segment* null, %struct.evbuffer_file_segment** %5, align 8
  br label %82

82:                                               ; preds = %79, %77, %15
  %83 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %5, align 8
  ret %struct.evbuffer_file_segment* %83
}

declare dso_local %struct.evbuffer_file_segment* @mm_calloc(i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @evbuffer_file_segment_materialize(%struct.evbuffer_file_segment*) #1

declare dso_local i32 @EVTHREAD_ALLOC_LOCK(i32, i32) #1

declare dso_local i32 @mm_free(%struct.evbuffer_file_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
