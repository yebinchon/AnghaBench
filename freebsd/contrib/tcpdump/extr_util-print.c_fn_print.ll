; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_fn_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_fn_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"M-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fn_print(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %46, %3
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ult i8* %13, %14
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ true, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %52

18:                                               ; preds = %16
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  %21 = load i8, i8* %19, align 1
  store i8 %21, i8* %8, align 1
  %22 = load i8, i8* %8, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %52

26:                                               ; preds = %18
  %27 = load i8, i8* %8, align 1
  %28 = call i32 @ND_ISASCII(i8 signext %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i8, i8* %8, align 1
  %32 = call signext i8 @ND_TOASCII(i8 signext %31)
  store i8 %32, i8* %8, align 1
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str to i32*))
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i8, i8* %8, align 1
  %37 = call i32 @ND_ISPRINT(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load i8, i8* %8, align 1
  %41 = sext i8 %40 to i32
  %42 = xor i32 %41, 64
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %8, align 1
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i32*, i32** %4, align 8
  %48 = load i8, i8* %8, align 1
  %49 = sext i8 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  %51 = call i32 @ND_PRINT(i32* %50)
  br label %9

52:                                               ; preds = %25, %16
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @ND_ISASCII(i8 signext) #1

declare dso_local signext i8 @ND_TOASCII(i8 signext) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_ISPRINT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
