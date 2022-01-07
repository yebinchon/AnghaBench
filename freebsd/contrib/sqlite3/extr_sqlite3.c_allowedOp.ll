; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_allowedOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_allowedOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TK_GT = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TK_LT = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@TK_IN = common dso_local global i32 0, align 4
@TK_ISNULL = common dso_local global i32 0, align 4
@TK_IS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @allowedOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allowedOp(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @TK_GT, align 4
  %4 = load i32, i32* @TK_EQ, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @TK_GT, align 4
  %8 = load i32, i32* @TK_GE, align 4
  %9 = icmp slt i32 %7, %8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @TK_LT, align 4
  %15 = load i32, i32* @TK_EQ, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32, i32* @TK_LT, align 4
  %19 = load i32, i32* @TK_GE, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i1 [ false, %10 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @TK_LE, align 4
  %26 = load i32, i32* @TK_EQ, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @TK_LE, align 4
  %30 = load i32, i32* @TK_GE, align 4
  %31 = icmp slt i32 %29, %30
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i1 [ false, %21 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* @TK_GE, align 4
  %37 = load i32, i32* @TK_EQ, align 4
  %38 = add nsw i32 %37, 4
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @TK_IN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @TK_EQ, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @TK_GE, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @TK_ISNULL, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @TK_IS, align 4
  %60 = icmp eq i32 %58, %59
  br label %61

61:                                               ; preds = %57, %53, %49, %32
  %62 = phi i1 [ true, %53 ], [ true, %49 ], [ true, %32 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  ret i32 %63
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
