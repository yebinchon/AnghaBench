; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_array.c_dba_array_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dba_array.c_dba_array_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dba_array = type { i64, i64, i32*, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dba_array_next(%struct.dba_array* %0) #0 {
  %2 = alloca %struct.dba_array*, align 8
  store %struct.dba_array* %0, %struct.dba_array** %2, align 8
  %3 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %4 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %7 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %12 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %12, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %17 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %39, %18
  %20 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %21 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %24 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %29 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %32 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br label %37

37:                                               ; preds = %27, %19
  %38 = phi i1 [ false, %19 ], [ %36, %27 ]
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %41 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %19

44:                                               ; preds = %37
  %45 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %46 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %49 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %54 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %53, i32 0, i32 3
  %55 = load i8**, i8*** %54, align 8
  %56 = load %struct.dba_array*, %struct.dba_array** %2, align 8
  %57 = getelementptr inbounds %struct.dba_array, %struct.dba_array* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  %60 = load i8*, i8** %59, align 8
  br label %62

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %52
  %63 = phi i8* [ %60, %52 ], [ null, %61 ]
  ret i8* %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
