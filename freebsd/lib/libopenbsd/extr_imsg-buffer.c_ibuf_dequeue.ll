; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg-buffer.c_ibuf_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg-buffer.c_ibuf_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i32, i32 }
%struct.ibuf = type { i32 }

@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibuf_dequeue(%struct.msgbuf* %0, %struct.ibuf* %1) #0 {
  %3 = alloca %struct.msgbuf*, align 8
  %4 = alloca %struct.ibuf*, align 8
  store %struct.msgbuf* %0, %struct.msgbuf** %3, align 8
  store %struct.ibuf* %1, %struct.ibuf** %4, align 8
  %5 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %6 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %5, i32 0, i32 1
  %7 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %8 = load i32, i32* @entry, align 4
  %9 = call i32 @TAILQ_REMOVE(i32* %6, %struct.ibuf* %7, i32 %8)
  %10 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %11 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %16 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @close(i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.msgbuf*, %struct.msgbuf** %3, align 8
  %21 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %25 = call i32 @ibuf_free(%struct.ibuf* %24)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ibuf*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ibuf_free(%struct.ibuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
