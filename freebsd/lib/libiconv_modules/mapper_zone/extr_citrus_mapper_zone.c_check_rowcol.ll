; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_zone/extr_citrus_mapper_zone.c_check_rowcol.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_zone/extr_citrus_mapper_zone.c_check_rowcol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._zone = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._zone*, i64, i64)* @check_rowcol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rowcol(%struct._zone* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._zone*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._zone* %0, %struct._zone** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct._zone*, %struct._zone** %5, align 8
  %13 = getelementptr inbounds %struct._zone, %struct._zone* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %64

18:                                               ; preds = %11, %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct._zone*, %struct._zone** %5, align 8
  %26 = getelementptr inbounds %struct._zone, %struct._zone* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %36

30:                                               ; preds = %24
  %31 = load %struct._zone*, %struct._zone** %5, align 8
  %32 = getelementptr inbounds %struct._zone, %struct._zone* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 4294967295, %33
  %35 = add nsw i64 %34, 1
  br label %36

36:                                               ; preds = %30, %29
  %37 = phi i64 [ 4294967295, %29 ], [ %35, %30 ]
  store i64 %37, i64* %8, align 8
  br label %44

38:                                               ; preds = %21
  %39 = load i64, i64* %7, align 8
  %40 = load %struct._zone*, %struct._zone** %5, align 8
  %41 = getelementptr inbounds %struct._zone, %struct._zone* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %38, %36
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %64

49:                                               ; preds = %44
  br label %63

50:                                               ; preds = %18
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct._zone*, %struct._zone** %5, align 8
  %55 = getelementptr inbounds %struct._zone, %struct._zone* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 0, %57
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %64

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %49
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %60, %48, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
