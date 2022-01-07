; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_comsubs.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_dfa.c_comsubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i8*)* @comsubs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @comsubs(i8* %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i8** null, i8*** %3, align 8
  br label %95

17:                                               ; preds = %13
  %18 = call i64 @malloc(i32 8)
  %19 = inttoptr i64 %18 to i8**
  store i8** %19, i8*** %6, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = icmp eq i8** %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8** null, i8*** %3, align 8
  br label %95

23:                                               ; preds = %17
  %24 = load i8**, i8*** %6, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* null, i8** %25, align 8
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %90, %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %93

32:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i8* @strchr(i8* %33, i8 signext %35)
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %72, %32
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  store i64 1, i64* %9, align 8
  br label %41

41:                                               ; preds = %63, %40
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %53, %58
  br label %60

60:                                               ; preds = %48, %41
  %61 = phi i1 [ false, %41 ], [ %59, %48 ]
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %41

66:                                               ; preds = %60
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i8* @strchr(i8* %74, i8 signext %76)
  store i8* %77, i8** %8, align 8
  br label %37

78:                                               ; preds = %37
  %79 = load i64, i64* %10, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %90

82:                                               ; preds = %78
  %83 = load i8**, i8*** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i8** @enlist(i8** %83, i8* %84, i64 %85)
  store i8** %86, i8*** %6, align 8
  %87 = icmp eq i8** %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %93

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %81
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  br label %27

93:                                               ; preds = %88, %27
  %94 = load i8**, i8*** %6, align 8
  store i8** %94, i8*** %3, align 8
  br label %95

95:                                               ; preds = %93, %22, %16
  %96 = load i8**, i8*** %3, align 8
  ret i8** %96
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8** @enlist(i8**, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
