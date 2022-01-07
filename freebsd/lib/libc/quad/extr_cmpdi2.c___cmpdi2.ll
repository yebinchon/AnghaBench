; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_cmpdi2.c___cmpdi2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_cmpdi2.c___cmpdi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uu = type { i64* }

@H = common dso_local global i64 0, align 8
@L = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cmpdi2(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %union.uu, align 8
  %6 = alloca %union.uu, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast %union.uu* %5 to i8**
  store i8* %7, i8** %8, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast %union.uu* %6 to i8**
  store i8* %9, i8** %10, align 8
  %11 = bitcast %union.uu* %5 to i64**
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @H, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = bitcast %union.uu* %6 to i64**
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @H, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %67

23:                                               ; preds = %2
  %24 = bitcast %union.uu* %5 to i64**
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @H, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = bitcast %union.uu* %6 to i64**
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @H, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %65

36:                                               ; preds = %23
  %37 = bitcast %union.uu* %5 to i64**
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @L, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = bitcast %union.uu* %6 to i64**
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @L, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %63

49:                                               ; preds = %36
  %50 = bitcast %union.uu* %5 to i64**
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @L, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %union.uu* %6 to i64**
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @L, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %54, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 2, i32 1
  br label %63

63:                                               ; preds = %49, %48
  %64 = phi i32 [ 0, %48 ], [ %62, %49 ]
  br label %65

65:                                               ; preds = %63, %35
  %66 = phi i32 [ 2, %35 ], [ %64, %63 ]
  br label %67

67:                                               ; preds = %65, %22
  %68 = phi i32 [ 0, %22 ], [ %66, %65 ]
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
