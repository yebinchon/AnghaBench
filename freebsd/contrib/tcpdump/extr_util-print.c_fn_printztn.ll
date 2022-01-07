; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_fn_printztn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_fn_printztn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"M-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fn_printztn(i32* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %54, %4
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp uge i8* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %11
  store i64 0, i64* %9, align 8
  br label %60

22:                                               ; preds = %17, %14
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %10, align 1
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %7, align 8
  %30 = load i8, i8* %10, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %60

34:                                               ; preds = %22
  %35 = load i8, i8* %10, align 1
  %36 = call i32 @ND_ISASCII(i8 signext %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i8, i8* %10, align 1
  %40 = call signext i8 @ND_TOASCII(i8 signext %39)
  store i8 %40, i8* %10, align 1
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str to i32*))
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i8, i8* %10, align 1
  %45 = call i32 @ND_ISPRINT(i8 signext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %10, align 1
  %49 = sext i8 %48 to i32
  %50 = xor i32 %49, 64
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %10, align 1
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.1 to i32*))
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i32*, i32** %5, align 8
  %56 = load i8, i8* %10, align 1
  %57 = sext i8 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  %59 = call i32 @ND_PRINT(i32* %58)
  br label %11

60:                                               ; preds = %33, %21
  %61 = load i64, i64* %9, align 8
  ret i64 %61
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
