; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_array.c_dba_array_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_array.c_dba_array_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dba_array = type { i64, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dba_array_del(%struct.dba_array* %0) #0 {
  %2 = alloca %struct.dba_array*, align 8
  store %struct.dba_array* %0, %struct.dba_array** %2, align 8
  %3 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %4 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %7 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %12 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %15 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %32

20:                                               ; preds = %10
  %21 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %22 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %25 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 -1, i32* %27, align 4
  %28 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %29 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %20, %10, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
