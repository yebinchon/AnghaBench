; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_skel.c_getsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_skel.c_getsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i32)* @getsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsize(i8* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sdiv i32 %15, 10
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = srem i32 %17, 10
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %67, %4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sle i32 48, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp sle i32 %37, 57
  br label %39

39:                                               ; preds = %31, %23, %19
  %40 = phi i1 [ false, %23 ], [ false, %19 ], [ %38, %31 ]
  br i1 %40, label %41, label %70

41:                                               ; preds = %39
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = sub nsw i32 %47, 48
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %41
  %61 = load i8**, i8*** %8, align 8
  store i8* null, i8** %61, align 8
  store i32 0, i32* %5, align 4
  br label %82

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %13, align 4
  %64 = mul nsw i32 %63, 10
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %19

70:                                               ; preds = %39
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i8**, i8*** %8, align 8
  store i8* null, i8** %74, align 8
  store i32 0, i32* %5, align 4
  br label %82

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8**, i8*** %8, align 8
  store i8* %79, i8** %80, align 8
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %75, %73, %60
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
