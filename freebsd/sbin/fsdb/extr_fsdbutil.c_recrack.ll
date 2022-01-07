; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdbutil.c_recrack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdbutil.c_recrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@recrack.argv = internal global [8 x i8*] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @recrack(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %46, %3
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br label %22

22:                                               ; preds = %17, %14, %11
  %23 = phi i1 [ false, %14 ], [ false, %11 ], [ %21, %17 ]
  br i1 %23, label %24, label %49

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %35, %24
  %26 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  br label %25

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8*], [8 x i8*]* @recrack.argv, i64 0, i64 %42
  store i8* %40, i8** %43, align 8
  br label %45

44:                                               ; preds = %36
  br label %49

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %11

49:                                               ; preds = %44, %22
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i8*], [8 x i8*]* @recrack.argv, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i8*], [8 x i8*]* @recrack.argv, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %54, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i8*], [8 x i8*]* @recrack.argv, i64 0, i64 %65
  store i8* %63, i8** %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i8*], [8 x i8*]* @recrack.argv, i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i8*], [8 x i8*]* @recrack.argv, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcspn(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %76 = getelementptr inbounds i8, i8* %70, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  ret i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @recrack.argv, i64 0, i64 0)
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
