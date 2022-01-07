; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_atol8.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_atol8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pkg_atol8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkg_atol8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 8, i32* %10, align 4
  %11 = load i32, i32* @INT64_MAX, align 4
  %12 = load i32, i32* %10, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @INT64_MAX, align 4
  %15 = load i32, i32* %10, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %29, %2
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 9
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %17

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  store i32 -1, i32* %9, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  br label %41

40:                                               ; preds = %32
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %37
  store i32 0, i32* %5, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = sub nsw i32 %44, 48
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %73, %41
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %4, align 4
  %56 = icmp ugt i32 %54, 0
  br label %57

57:                                               ; preds = %53, %49, %46
  %58 = phi i1 [ false, %49 ], [ false, %46 ], [ %56, %53 ]
  br i1 %58, label %59, label %84

59:                                               ; preds = %57
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %59
  %72 = load i32, i32* @UINT64_MAX, align 4
  store i32 %72, i32* %5, align 4
  br label %84

73:                                               ; preds = %67, %63
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %5, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %3, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = sub nsw i32 %82, 48
  store i32 %83, i32* %8, align 4
  br label %46

84:                                               ; preds = %71, %57
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = sub nsw i32 0, %88
  br label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi i32 [ %89, %87 ], [ %91, %90 ]
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
