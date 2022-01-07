; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_search_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_search_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_UP_SEARCH_HIST = common dso_local global i32 0, align 4
@Cursor = common dso_local global i8* null, align 8
@InputBuf = common dso_local global i8* null, align 8
@CC_NORM = common dso_local global i32 0, align 4
@CC_ERROR = common dso_local global i32 0, align 4
@InputLim = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @c_search_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_search_line(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @Strlen(i8* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @F_UP_SEARCH_HIST, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load i8*, i8** @Cursor, align 8
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %34, %13
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** @InputBuf, align 8
  %18 = icmp uge i8* %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @Strncmp(i8* %20, i8* %21, i64 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @Gmatch(i8* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %19
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** @Cursor, align 8
  %32 = load i32, i32* @CC_NORM, align 4
  store i32 %32, i32* %3, align 4
  br label %72

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %6, align 8
  br label %15

37:                                               ; preds = %15
  %38 = load i32, i32* @CC_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %2
  %40 = load i8*, i8** @Cursor, align 8
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %67, %39
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** @InputLim, align 8
  %49 = icmp ult i8* %47, %48
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ false, %41 ], [ %49, %46 ]
  br i1 %51, label %52, label %70

52:                                               ; preds = %50
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @Strncmp(i8* %53, i8* %54, i64 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @Gmatch(i8* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %52
  %64 = load i8*, i8** %6, align 8
  store i8* %64, i8** @Cursor, align 8
  %65 = load i32, i32* @CC_NORM, align 4
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  br label %41

70:                                               ; preds = %50
  %71 = load i32, i32* @CC_ERROR, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %63, %37, %30
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @Strlen(i8*) #1

declare dso_local i64 @Strncmp(i8*, i8*, i64) #1

declare dso_local i64 @Gmatch(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
