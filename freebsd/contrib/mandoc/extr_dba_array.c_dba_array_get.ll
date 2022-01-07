; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_array.c_dba_array_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_array.c_dba_array_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dba_array = type { i64, i32*, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dba_array_get(%struct.dba_array* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dba_array*, align 8
  %5 = alloca i64, align 8
  store %struct.dba_array* %0, %struct.dba_array** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ult i64 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.dba_array*, %struct.dba_array** %4, align 8
  %11 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = load %struct.dba_array*, %struct.dba_array** %4, align 8
  %16 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %8, %2
  store i8* null, i8** %3, align 8
  br label %30

23:                                               ; preds = %14
  %24 = load %struct.dba_array*, %struct.dba_array** %4, align 8
  %25 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %24, i32 0, i32 2
  %26 = load i8**, i8*** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %23, %22
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
