; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_aggregate_buckets.c_serf_bucket_aggregate_prepend_iovec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_aggregate_buckets.c_serf_bucket_aggregate_prepend_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.iovec = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serf_bucket_aggregate_prepend_iovec(%struct.TYPE_6__* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.iovec* %1, %struct.iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load %struct.iovec*, %struct.iovec** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i64 %17
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iovec*, %struct.iovec** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 %23
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_6__* @serf_bucket_simple_create(i32 %20, i32 %26, i32* null, i32* null, i32 %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %8, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = call i32 @serf_bucket_aggregate_prepend(%struct.TYPE_6__* %31, %struct.TYPE_6__* %32)
  br label %34

34:                                               ; preds = %14
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  br label %11

37:                                               ; preds = %11
  ret void
}

declare dso_local %struct.TYPE_6__* @serf_bucket_simple_create(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @serf_bucket_aggregate_prepend(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
