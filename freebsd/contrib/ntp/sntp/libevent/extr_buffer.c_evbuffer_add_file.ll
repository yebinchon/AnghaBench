; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_file_segment = type { i32 }

@EVBUF_FS_CLOSE_ON_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_add_file(%struct.evbuffer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.evbuffer_file_segment*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @EVBUF_FS_CLOSE_ON_FREE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call %struct.evbuffer_file_segment* @evbuffer_file_segment_new(i32 %14, i32 %15, i32 %16, i32 %17)
  store %struct.evbuffer_file_segment* %18, %struct.evbuffer_file_segment** %10, align 8
  %19 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %20 = icmp ne %struct.evbuffer_file_segment* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %34

22:                                               ; preds = %4
  %23 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %24 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @evbuffer_add_file_segment(%struct.evbuffer* %23, %struct.evbuffer_file_segment* %24, i32 0, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.evbuffer_file_segment*, %struct.evbuffer_file_segment** %10, align 8
  %31 = call i32 @evbuffer_file_segment_free(%struct.evbuffer_file_segment* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.evbuffer_file_segment* @evbuffer_file_segment_new(i32, i32, i32, i32) #1

declare dso_local i32 @evbuffer_add_file_segment(%struct.evbuffer*, %struct.evbuffer_file_segment*, i32, i32) #1

declare dso_local i32 @evbuffer_file_segment_free(%struct.evbuffer_file_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
