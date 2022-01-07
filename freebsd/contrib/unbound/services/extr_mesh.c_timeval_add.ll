; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_timeval_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_mesh.c_timeval_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*, %struct.timeval*)* @timeval_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeval_add(%struct.timeval* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load %struct.timeval*, %struct.timeval** %4, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.timeval*, %struct.timeval** %3, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load %struct.timeval*, %struct.timeval** %4, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.timeval*, %struct.timeval** %3, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.timeval*, %struct.timeval** %3, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1000000
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.timeval*, %struct.timeval** %3, align 8
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1000000
  store i32 %27, i32* %25, align 8
  %28 = load %struct.timeval*, %struct.timeval** %3, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %23, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
