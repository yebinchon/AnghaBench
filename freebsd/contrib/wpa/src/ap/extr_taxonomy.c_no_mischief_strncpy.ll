; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_taxonomy.c_no_mischief_strncpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_taxonomy.c_no_mischief_strncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @no_mischief_strncpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @no_mischief_strncpy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %69, %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %8, align 1
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %22, 97
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sle i32 %26, 122
  br label %28

28:                                               ; preds = %24, %16
  %29 = phi i1 [ false, %16 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sge i32 %32, 65
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sle i32 %36, 90
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i1 [ false, %28 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sge i32 %42, 48
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp sle i32 %46, 57
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i1 [ false, %38 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %53, %48
  %60 = load i8, i8* %8, align 1
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 %60, i8* %63, align 1
  br label %68

64:                                               ; preds = %56
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 95, i8* %67, align 1
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %12

72:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
