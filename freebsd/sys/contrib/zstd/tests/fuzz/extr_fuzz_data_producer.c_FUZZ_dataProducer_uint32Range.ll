; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_fuzz_data_producer.c_FUZZ_dataProducer_uint32Range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_fuzz_data_producer.c_FUZZ_dataProducer_uint32Range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FUZZ_dataProducer_uint32Range(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp sle i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @FUZZ_ASSERT(i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = sub nsw i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %31, %3
  %22 = load i64, i64* %9, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %51

31:                                               ; preds = %29
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = getelementptr inbounds i64, i64* %38, i64 -1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load i64, i64* %10, align 8
  %46 = shl i64 %45, 8
  %47 = load i64, i64* %11, align 8
  %48 = or i64 %46, %47
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = ashr i64 %49, 8
  store i64 %50, i64* %9, align 8
  br label %21

51:                                               ; preds = %29
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 4294967295
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %4, align 8
  br label %63

56:                                               ; preds = %51
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, 1
  %61 = srem i64 %58, %60
  %62 = add nsw i64 %57, %61
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %56, %54
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32 @FUZZ_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
