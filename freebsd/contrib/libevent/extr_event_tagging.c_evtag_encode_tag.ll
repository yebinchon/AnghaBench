; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_tagging.c_evtag_encode_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_tagging.c_evtag_encode_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evtag_encode_tag(%struct.evbuffer* %0, i32 %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %9 = call i32 @memset(i32* %8, i32 0, i32 20)
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 127
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 7
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, 128
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %24
  store i32 %21, i32* %25, align 4
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %10, label %29

29:                                               ; preds = %26
  %30 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %31 = icmp ne %struct.evbuffer* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @evbuffer_add(%struct.evbuffer* %33, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
