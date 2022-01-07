; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getttyent.c_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getttyent.c_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QUOTED = common dso_local global i32 0, align 4
@zapchar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @skip(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %3, align 8
  br label %7

7:                                                ; preds = %83, %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %86

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 34
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @QUOTED, align 4
  %17 = load i32, i32* %5, align 4
  %18 = xor i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %83

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @QUOTED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i8*, i8** %2, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 92
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %2, align 8
  br label %37

37:                                               ; preds = %34, %28, %23, %19
  %38 = load i8*, i8** %2, align 8
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @QUOTED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %83

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 35
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* @zapchar, align 4
  %51 = load i8*, i8** %2, align 8
  store i8 0, i8* %51, align 1
  br label %86

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %82

61:                                               ; preds = %58, %55, %52
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* @zapchar, align 4
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %2, align 8
  store i8 0, i8* %63, align 1
  br label %65

65:                                               ; preds = %78, %61
  %66 = load i8*, i8** %2, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  store i32 %68, i32* %4, align 4
  %69 = icmp eq i32 %68, 9
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 10
  br label %76

76:                                               ; preds = %73, %70, %65
  %77 = phi i1 [ true, %70 ], [ true, %65 ], [ %75, %73 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i8*, i8** %2, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %2, align 8
  br label %65

81:                                               ; preds = %76
  br label %86

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82, %45, %15
  %84 = load i8*, i8** %2, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %2, align 8
  br label %7

86:                                               ; preds = %81, %49, %7
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %3, align 8
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %2, align 8
  ret i8* %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
