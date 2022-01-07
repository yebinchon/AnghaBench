; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_retransmit_buffered_messages.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_retransmit_buffered_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_retransmit_buffered_messages(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @pqueue_iterator(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = call %struct.TYPE_11__* @pqueue_next(i32* %5)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %6, align 8
  br label %17

17:                                               ; preds = %40, %1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %7, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @dtls1_get_queue_priority(i32 %29, i32 %33)
  %35 = trunc i64 %34 to i16
  %36 = call i64 @dtls1_retransmit_message(%struct.TYPE_13__* %25, i16 zeroext %35, i32* %8)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %43

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39
  %41 = call %struct.TYPE_11__* @pqueue_next(i32* %5)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %6, align 8
  br label %17

42:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @pqueue_iterator(i32*) #1

declare dso_local %struct.TYPE_11__* @pqueue_next(i32*) #1

declare dso_local i64 @dtls1_retransmit_message(%struct.TYPE_13__*, i16 zeroext, i32*) #1

declare dso_local i64 @dtls1_get_queue_priority(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
