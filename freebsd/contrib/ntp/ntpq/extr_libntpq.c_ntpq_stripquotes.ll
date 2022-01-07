; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_libntpq.c_ntpq_stripquotes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_libntpq.c_ntpq_stripquotes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntpq_stripquotes(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %23, i64 %31
  store i8* %32, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %80

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %67, %64, %58, %36
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %12, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  store i32 %49, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %45, %41, %37
  %52 = phi i1 [ false, %41 ], [ false, %37 ], [ %50, %45 ]
  br i1 %52, label %53, label %72

53:                                               ; preds = %51
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  store i32 0, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  switch i32 %57, label %59 [
    i32 110, label %58
    i32 114, label %58
    i32 103, label %58
    i32 116, label %58
  ]

58:                                               ; preds = %56, %56, %56, %56
  br label %37

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59
  br label %67

61:                                               ; preds = %53
  %62 = load i32, i32* %15, align 4
  switch i32 %62, label %65 [
    i32 92, label %63
    i32 34, label %64
  ]

63:                                               ; preds = %61
  store i32 1, i32* %14, align 4
  br label %64

64:                                               ; preds = %61, %63
  br label %37

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %60
  %68 = load i32, i32* %15, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %10, align 8
  store i8 %69, i8* %70, align 1
  br label %37

72:                                               ; preds = %51
  %73 = load i8*, i8** %10, align 8
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %72, %35
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
