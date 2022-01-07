; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_scm-exp.c_scm_istr2int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_scm-exp.c_scm_istr2int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCM_BOOL_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @scm_istr2int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scm_istr2int(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 0, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @SCM_BOOL_F, align 4
  store i32 %15, i32* %4, align 4
  br label %82

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %33 [
    i32 45, label %21
    i32 43, label %21
  ]

21:                                               ; preds = %16, %16
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @SCM_BOOL_F, align 4
  store i32 %31, i32* %4, align 4
  br label %82

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %16
  br label %34

34:                                               ; preds = %69, %33
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  store i32 %41, i32* %10, align 4
  switch i32 %41, label %66 [
    i32 48, label %42
    i32 49, label %42
    i32 50, label %42
    i32 51, label %42
    i32 52, label %42
    i32 53, label %42
    i32 54, label %42
    i32 55, label %42
    i32 56, label %42
    i32 57, label %42
    i32 65, label %45
    i32 66, label %45
    i32 67, label %45
    i32 68, label %45
    i32 69, label %45
    i32 70, label %45
    i32 97, label %49
    i32 98, label %49
    i32 99, label %49
    i32 100, label %49
    i32 101, label %49
    i32 102, label %49
  ]

42:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34, %34
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, 48
  store i32 %44, i32* %10, align 4
  br label %53

45:                                               ; preds = %34, %34, %34, %34, %34, %34
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 65
  %48 = add nsw i32 %47, 10
  store i32 %48, i32* %10, align 4
  br label %53

49:                                               ; preds = %34, %34, %34, %34, %34, %34
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 97
  %52 = add nsw i32 %51, 10
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %45, %42
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @SCM_BOOL_F, align 4
  store i32 %58, i32* %4, align 4
  br label %82

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %68

66:                                               ; preds = %34
  %67 = load i32, i32* @SCM_BOOL_F, align 4
  store i32 %67, i32* %4, align 4
  br label %82

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %34, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 45
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @SCM_MAKINUM(i32 %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %66, %57, %30, %14
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @SCM_MAKINUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
