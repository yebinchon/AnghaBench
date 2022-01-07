; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_del_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_ebuf.c_ebuf_del_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebuf = type { i64, i64, i64 }

@EBUF_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ebuf_del_head(%struct.ebuf* %0, i64 %1) #0 {
  %3 = alloca %struct.ebuf*, align 8
  %4 = alloca i64, align 8
  store %struct.ebuf* %0, %struct.ebuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ebuf*, %struct.ebuf** %3, align 8
  %6 = icmp ne %struct.ebuf* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.ebuf*, %struct.ebuf** %3, align 8
  %9 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EBUF_MAGIC, align 8
  %12 = icmp eq i64 %10, %11
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i1 [ false, %2 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.ebuf*, %struct.ebuf** %3, align 8
  %19 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @PJDLOG_ASSERT(i32 %22)
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.ebuf*, %struct.ebuf** %3, align 8
  %26 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.ebuf*, %struct.ebuf** %3, align 8
  %31 = getelementptr inbounds %struct.ebuf, %struct.ebuf* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %32, %29
  store i64 %33, i64* %31, align 8
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
