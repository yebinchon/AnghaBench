; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_chat.c_cleanchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_chat.c_cleanchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cleanchr.tmpbuf = internal global [5 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [3 x i8] c"M-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8)* @cleanchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cleanchr(i8** %0, i8 zeroext %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load i8**, i8*** %3, align 8
  %8 = icmp ne i8** %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i8* [ %11, %9 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @cleanchr.tmpbuf, i64 0, i64 0), %12 ]
  store i8* %14, i8** %6, align 8
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %5, align 4
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 127
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %4, align 1
  br label %27

26:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 94, i8* %36, align 1
  %37 = load i8, i8* %4, align 1
  %38 = zext i8 %37 to i32
  %39 = add nsw i32 %38, 64
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 %40, i8* %45, align 1
  br label %69

46:                                               ; preds = %27
  %47 = load i8, i8* %4, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 127
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 94, i8* %55, align 1
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 63, i8* %60, align 1
  br label %68

61:                                               ; preds = %46
  %62 = load i8, i8* %4, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 %62, i8* %67, align 1
  br label %68

68:                                               ; preds = %61, %50
  br label %69

69:                                               ; preds = %68, %31
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8**, i8*** %3, align 8
  %75 = icmp ne i8** %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8**, i8*** %3, align 8
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %76, %69
  %83 = load i8*, i8** %6, align 8
  ret i8* %83
}

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
