; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_find_iomap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_find_iomap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_iomap = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rsocket = type { i32, %struct.rs_iomap* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rs_iomap* (%struct.rsocket*, i64)* @rs_find_iomap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rs_iomap* @rs_find_iomap(%struct.rsocket* %0, i64 %1) #0 {
  %3 = alloca %struct.rs_iomap*, align 8
  %4 = alloca %struct.rsocket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %53, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %10 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %7
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %16 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %15, i32 0, i32 1
  %17 = load %struct.rs_iomap*, %struct.rs_iomap** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %17, i64 %19
  %21 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %14, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %13
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %27 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %26, i32 0, i32 1
  %28 = load %struct.rs_iomap*, %struct.rs_iomap** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %28, i64 %30
  %32 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %35 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %34, i32 0, i32 1
  %36 = load %struct.rs_iomap*, %struct.rs_iomap** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %36, i64 %38
  %40 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %33, %42
  %44 = icmp slt i64 %25, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %24
  %46 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %47 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %46, i32 0, i32 1
  %48 = load %struct.rs_iomap*, %struct.rs_iomap** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.rs_iomap, %struct.rs_iomap* %48, i64 %50
  store %struct.rs_iomap* %51, %struct.rs_iomap** %3, align 8
  br label %57

52:                                               ; preds = %24, %13
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %7

56:                                               ; preds = %7
  store %struct.rs_iomap* null, %struct.rs_iomap** %3, align 8
  br label %57

57:                                               ; preds = %56, %45
  %58 = load %struct.rs_iomap*, %struct.rs_iomap** %3, align 8
  ret %struct.rs_iomap* %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
