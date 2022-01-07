; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_timeval_divide.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_timeval_divide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*, %struct.timeval*, i64)* @timeval_divide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeval_divide(%struct.timeval* %0, %struct.timeval* %1, i64 %2) #0 {
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.timeval*, %struct.timeval** %4, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.timeval*, %struct.timeval** %4, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  br label %47

15:                                               ; preds = %3
  %16 = load %struct.timeval*, %struct.timeval** %5, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = udiv i64 %18, %19
  %21 = load %struct.timeval*, %struct.timeval** %4, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.timeval*, %struct.timeval** %5, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = udiv i64 %25, %26
  %28 = load %struct.timeval*, %struct.timeval** %4, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.timeval*, %struct.timeval** %5, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.timeval*, %struct.timeval** %4, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 %35, %36
  %38 = sub i64 %32, %37
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = mul i64 %39, 1000000
  %41 = load i64, i64* %6, align 8
  %42 = udiv i64 %40, %41
  %43 = load %struct.timeval*, %struct.timeval** %4, align 8
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %15, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
