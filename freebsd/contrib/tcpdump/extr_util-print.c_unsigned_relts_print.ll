; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_unsigned_relts_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_util-print.c_unsigned_relts_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unsigned_relts_print.lengths = internal global [6 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@unsigned_relts_print.seconds = internal constant [6 x i32] [i32 31536000, i32 604800, i32 86400, i32 3600, i32 60, i32 1], align 16
@.str.6 = private unnamed_addr constant [3 x i8] c"0s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unsigned_relts_print(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @unsigned_relts_print.lengths, i64 0, i64 0), i8*** %5, align 8
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @unsigned_relts_print.seconds, i64 0, i64 0), i32** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @ND_PRINT(i32* bitcast ([3 x i8]* @.str.6 to i32*))
  br label %49

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %44, %12
  %14 = load i64, i64* %4, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load i64, i64* %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = sdiv i64 %24, %27
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = call i32 @ND_PRINT(i32* %31)
  %33 = load i64, i64* %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = sdiv i64 %33, %36
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %37, %40
  %42 = load i64, i64* %4, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %22, %16
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %5, align 8
  br label %13

49:                                               ; preds = %9, %13
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
