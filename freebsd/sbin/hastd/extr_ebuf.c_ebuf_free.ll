; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebuf = type { i64, %struct.ebuf* }

@EBUF_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ebuf_free(%struct.ebuf* %0) #0 {
  %2 = alloca %struct.ebuf*, align 8
  store %struct.ebuf* %0, %struct.ebuf** %2, align 8
  %3 = load %struct.ebuf*, %struct.ebuf** %2, align 8
  %4 = icmp ne %struct.ebuf* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.ebuf*, %struct.ebuf** %2, align 8
  %7 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EBUF_MAGIC, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @PJDLOG_ASSERT(i32 %13)
  %15 = load %struct.ebuf*, %struct.ebuf** %2, align 8
  %16 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.ebuf*, %struct.ebuf** %2, align 8
  %18 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %17, i32 0, i32 1
  %19 = load %struct.ebuf*, %struct.ebuf** %18, align 8
  %20 = call i32 @free(%struct.ebuf* %19)
  %21 = load %struct.ebuf*, %struct.ebuf** %2, align 8
  %22 = call i32 @free(%struct.ebuf* %21)
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @free(%struct.ebuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
