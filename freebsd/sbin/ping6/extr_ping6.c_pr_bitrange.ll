; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_bitrange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_bitrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"-%u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pr_bitrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_bitrange(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %73, %43, %38, %33, %28, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %83

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %16
  store i32 0, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 15
  switch i32 %27, label %43 [
    i32 0, label %28
    i32 8, label %33
    i32 4, label %38
    i32 12, label %38
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 4
  store i32 %32, i32* %7, align 4
  br label %9

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 3
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 3
  store i32 %37, i32* %7, align 4
  br label %9

38:                                               ; preds = %25, %25
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 2
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %7, align 4
  br label %9

43:                                               ; preds = %25
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %9

48:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 32, %51
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %65

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %49

65:                                               ; preds = %60, %49
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %9

83:                                               ; preds = %9
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
