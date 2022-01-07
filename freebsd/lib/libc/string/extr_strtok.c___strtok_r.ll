; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strtok.c___strtok_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_strtok.c___strtok_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__strtok_r(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i8**, i8*** %7, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i8* null, i8** %4, align 8
  br label %75

19:                                               ; preds = %14, %3
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %37, %20
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %20

37:                                               ; preds = %32
  br label %26

38:                                               ; preds = %26
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8**, i8*** %7, align 8
  store i8* null, i8** %42, align 8
  store i8* null, i8** %4, align 8
  br label %75

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %74, %43
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %5, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %71, %46
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  %55 = load i8, i8* %53, align 1
  %56 = sext i8 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i8* null, i8** %5, align 8
  br label %66

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i8**, i8*** %7, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** %9, align 8
  store i8* %69, i8** %4, align 8
  br label %75

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %52, label %74

74:                                               ; preds = %71
  br label %46

75:                                               ; preds = %66, %41, %18
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
