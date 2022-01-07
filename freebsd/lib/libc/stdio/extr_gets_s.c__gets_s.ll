; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_gets_s.c__gets_s.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_gets_s.c__gets_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"gets_s : end of buffer\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @_gets_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_gets_s(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @stdin, align 4
  %9 = call i32 @ORIENT(i32 %8, i32 -1)
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* @stdin, align 4
  %15 = call i32 @__sgetc(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 10
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = icmp sgt i64 %18, 0
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i1 [ false, %13 ], [ %19, %17 ]
  br i1 %21, label %22, label %41

22:                                               ; preds = %20
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EOF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* null, i8** %3, align 8
  br label %62

31:                                               ; preds = %26
  br label %41

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  store i8 %34, i8* %35, align 1
  br label %37

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %5, align 8
  br label %13

41:                                               ; preds = %31, %20
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %55, %44
  %46 = load i32, i32* @stdin, align 4
  %47 = call i32 @__sgetc(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %47, 10
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @EOF, align 4
  %52 = icmp ne i32 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  br label %45

56:                                               ; preds = %53
  %57 = load i32, i32* @E2BIG, align 4
  %58 = call i32 @__throw_constraint_handler_s(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i8* null, i8** %3, align 8
  br label %62

59:                                               ; preds = %41
  %60 = load i8*, i8** %7, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %4, align 8
  store i8* %61, i8** %3, align 8
  br label %62

62:                                               ; preds = %59, %56, %30
  %63 = load i8*, i8** %3, align 8
  ret i8* %63
}

declare dso_local i32 @ORIENT(i32, i32) #1

declare dso_local i32 @__sgetc(i32) #1

declare dso_local i32 @__throw_constraint_handler_s(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
