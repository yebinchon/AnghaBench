; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_timeval_subtract.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_timeval_subtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*, %struct.timeval*, %struct.timeval*)* @timeval_subtract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeval_subtract(%struct.timeval* %0, %struct.timeval* %1, %struct.timeval* %2) #0 {
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store %struct.timeval* %2, %struct.timeval** %6, align 8
  %8 = load %struct.timeval*, %struct.timeval** %5, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.timeval*, %struct.timeval** %5, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.timeval*, %struct.timeval** %6, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load %struct.timeval*, %struct.timeval** %4, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.timeval*, %struct.timeval** %6, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 1000000
  store i64 %27, i64* %7, align 8
  %28 = load %struct.timeval*, %struct.timeval** %4, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %25, %3
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.timeval*, %struct.timeval** %6, align 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.timeval*, %struct.timeval** %4, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
