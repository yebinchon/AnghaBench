; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_memset_s.c_memset_s.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_memset_s.c_memset_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"memset_s : s is NULL\00", align 1
@RSIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"memset_s : smax > RSIZE_MAX\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"memset_s : n > RSIZE_MAX\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"memset_s : n > smax\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @memset_s(i8* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* @EINVAL, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  br label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %11, align 1
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @__throw_constraint_handler_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %66

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @RSIZE_MAX, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @__throw_constraint_handler_s(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %65

38:                                               ; preds = %31
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @RSIZE_MAX, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @__throw_constraint_handler_s(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  br label %64

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %49, %45
  %47 = load i64, i64* %10, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i8, i8* %11, align 1
  %51 = load i8*, i8** %12, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %10, align 8
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store volatile i8 %50, i8* %54, align 1
  br label %46

55:                                               ; preds = %46
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @__throw_constraint_handler_s(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  br label %63

62:                                               ; preds = %55
  store i64 0, i64* %9, align 8
  br label %63

63:                                               ; preds = %62, %59
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64, %35
  br label %66

66:                                               ; preds = %65, %28
  %67 = load i64, i64* %9, align 8
  ret i64 %67
}

declare dso_local i32 @__throw_constraint_handler_s(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
