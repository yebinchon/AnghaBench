; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_radixsort.c_simplesort.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_radixsort.c_simplesort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64**, i32, i32, i64*, i64)* @simplesort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simplesort(i64** %0, i32 %1, i32 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i64**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  store i64** %0, i64*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i64**, i64*** %6, align 8
  %17 = getelementptr inbounds i64*, i64** %16, i64 1
  store i64** %17, i64*** %12, align 8
  br label %18

18:                                               ; preds = %86, %5
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %7, align 4
  %21 = icmp sge i32 %20, 1
  br i1 %21, label %22, label %89

22:                                               ; preds = %18
  %23 = load i64**, i64*** %12, align 8
  store i64** %23, i64*** %13, align 8
  br label %24

24:                                               ; preds = %82, %22
  %25 = load i64**, i64*** %13, align 8
  %26 = load i64**, i64*** %6, align 8
  %27 = icmp ugt i64** %25, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %24
  %29 = load i64**, i64*** %13, align 8
  %30 = getelementptr inbounds i64*, i64** %29, i64 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64* %34, i64** %14, align 8
  %35 = load i64**, i64*** %13, align 8
  %36 = getelementptr inbounds i64*, i64** %35, i64 -1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64* %40, i64** %15, align 8
  br label %41

41:                                               ; preds = %59, %28
  %42 = load i64*, i64** %9, align 8
  %43 = load i64*, i64** %14, align 8
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %41
  %50 = load i64, i64* %11, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load i64*, i64** %15, align 8
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %64

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load i64*, i64** %14, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %14, align 8
  %62 = load i64*, i64** %15, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %15, align 8
  br label %41

64:                                               ; preds = %57, %41
  %65 = load i64, i64* %11, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = load i64*, i64** %15, align 8
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp uge i64 %65, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %85

73:                                               ; preds = %64
  %74 = load i64**, i64*** %13, align 8
  %75 = getelementptr inbounds i64*, i64** %74, i64 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64**, i64*** %13, align 8
  %78 = getelementptr inbounds i64*, i64** %77, i64 -1
  %79 = load i64*, i64** %78, align 8
  %80 = load i64*, i64** %14, align 8
  %81 = call i32 @swap(i64* %76, i64* %79, i64* %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i64**, i64*** %13, align 8
  %84 = getelementptr inbounds i64*, i64** %83, i32 -1
  store i64** %84, i64*** %13, align 8
  br label %24

85:                                               ; preds = %72, %24
  br label %86

86:                                               ; preds = %85
  %87 = load i64**, i64*** %12, align 8
  %88 = getelementptr inbounds i64*, i64** %87, i32 1
  store i64** %88, i64*** %12, align 8
  br label %18

89:                                               ; preds = %18
  ret void
}

declare dso_local i32 @swap(i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
