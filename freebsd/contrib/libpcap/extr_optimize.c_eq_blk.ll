; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_eq_blk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_eq_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block*, %struct.block*)* @eq_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eq_blk(%struct.block* %0, %struct.block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.block*, align 8
  store %struct.block* %0, %struct.block** %4, align 8
  store %struct.block* %1, %struct.block** %5, align 8
  %6 = load %struct.block*, %struct.block** %4, align 8
  %7 = getelementptr inbounds %struct.block, %struct.block* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.block*, %struct.block** %5, align 8
  %11 = getelementptr inbounds %struct.block, %struct.block* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %9, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.block*, %struct.block** %4, align 8
  %17 = getelementptr inbounds %struct.block, %struct.block* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.block*, %struct.block** %5, align 8
  %21 = getelementptr inbounds %struct.block, %struct.block* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %15
  %26 = load %struct.block*, %struct.block** %4, align 8
  %27 = getelementptr inbounds %struct.block, %struct.block* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.block*, %struct.block** %5, align 8
  %31 = getelementptr inbounds %struct.block, %struct.block* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %25
  %36 = load %struct.block*, %struct.block** %4, align 8
  %37 = getelementptr inbounds %struct.block, %struct.block* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.block*, %struct.block** %5, align 8
  %41 = getelementptr inbounds %struct.block, %struct.block* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.block*, %struct.block** %4, align 8
  %47 = getelementptr inbounds %struct.block, %struct.block* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.block*, %struct.block** %5, align 8
  %50 = getelementptr inbounds %struct.block, %struct.block* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @eq_slist(i32 %48, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %35, %25, %15, %2
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @eq_slist(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
