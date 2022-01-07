; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event_tagging.c_evtag_unmarshal_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event_tagging.c_evtag_unmarshal_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evtag_unmarshal_int(%struct.evbuffer* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %12 = call i32 @decode_tag_internal(i64* %8, %struct.evbuffer* %11, i32 1)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %48

20:                                               ; preds = %15
  %21 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %22 = call i32 @evtag_decode_int(i64* %9, %struct.evbuffer* %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %48

25:                                               ; preds = %20
  %26 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %27 = call i64 @evbuffer_get_length(%struct.evbuffer* %26)
  %28 = load i64, i64* %9, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %48

31:                                               ; preds = %25
  %32 = load i64*, i64** %7, align 8
  %33 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %34 = call i32 @decode_int_internal(i64* %32, %struct.evbuffer* %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @evbuffer_drain(%struct.evbuffer* %35, i64 %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %9, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %31
  store i32 -1, i32* %4, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %45, %30, %24, %19, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @decode_tag_internal(i64*, %struct.evbuffer*, i32) #1

declare dso_local i32 @evtag_decode_int(i64*, %struct.evbuffer*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @decode_int_internal(i64*, %struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
