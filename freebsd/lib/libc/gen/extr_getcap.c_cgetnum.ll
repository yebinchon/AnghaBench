; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_cgetnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_cgetnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgetnum(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @cgetcap(i8* %12, i8* %13, i8 signext 35)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %110

18:                                               ; preds = %3
  %19 = load i8*, i8** %11, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 48
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 120
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 88
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %23
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  store i32 16, i32* %9, align 4
  br label %39

38:                                               ; preds = %30
  store i32 8, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %41

40:                                               ; preds = %18
  store i32 10, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %39
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %97, %41
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 48, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sle i32 %50, 57
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 48
  store i32 %56, i32* %10, align 4
  br label %92

57:                                               ; preds = %47, %42
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 97, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i8*, i8** %11, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %65, 102
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = add nsw i32 10, %70
  %72 = sub nsw i32 %71, 97
  store i32 %72, i32* %10, align 4
  br label %91

73:                                               ; preds = %62, %57
  %74 = load i8*, i8** %11, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sle i32 65, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sle i32 %81, 70
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i8*, i8** %11, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = add nsw i32 10, %86
  %88 = sub nsw i32 %87, 65
  store i32 %88, i32* %10, align 4
  br label %90

89:                                               ; preds = %78, %73
  br label %107

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %67
  br label %92

92:                                               ; preds = %91, %52
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %107

97:                                               ; preds = %92
  %98 = load i64, i64* %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %98, %100
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  store i64 %104, i64* %8, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %11, align 8
  br label %42

107:                                              ; preds = %96, %89
  %108 = load i64, i64* %8, align 8
  %109 = load i64*, i64** %7, align 8
  store i64 %108, i64* %109, align 8
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %107, %17
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i8* @cgetcap(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
