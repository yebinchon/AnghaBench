; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg.c_imsg_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg.c_imsg_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imsgbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imsg_flush(%struct.imsgbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imsgbuf*, align 8
  store %struct.imsgbuf* %0, %struct.imsgbuf** %3, align 8
  br label %4

4:                                                ; preds = %16, %1
  %5 = load %struct.imsgbuf*, %struct.imsgbuf** %3, align 8
  %6 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load %struct.imsgbuf*, %struct.imsgbuf** %3, align 8
  %12 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %11, i32 0, i32 0
  %13 = call i64 @msgbuf_write(%struct.TYPE_2__* %12)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %18

16:                                               ; preds = %10
  br label %4

17:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @msgbuf_write(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
