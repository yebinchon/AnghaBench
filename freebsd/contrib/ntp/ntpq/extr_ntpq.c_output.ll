; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out_chars = common dso_local global i64 0, align 8
@out_linecount = common dso_local global i64 0, align 8
@MAXOUTLINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = add nsw i64 %9, 1
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add nsw i64 %10, %12
  %14 = call i32 @size2int_sat(i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* @out_chars, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load i64, i64* @out_chars, align 8
  %19 = add nsw i64 %18, 2
  store i64 %19, i64* @out_chars, align 8
  %20 = load i64, i64* @out_linecount, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = add nsw i64 %23, 2
  %25 = load i64, i64* @MAXOUTLINE, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %28)
  store i64 0, i64* @out_linecount, align 8
  br label %35

30:                                               ; preds = %17
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = load i64, i64* @out_linecount, align 8
  %34 = add nsw i64 %33, 2
  store i64 %34, i64* @out_linecount, align 8
  br label %35

35:                                               ; preds = %30, %27
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i8*, i8** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @fputs(i8* %37, i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @putc(i8 signext 61, i32* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fputs(i8* %42, i32* %43)
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @out_chars, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* @out_chars, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @out_linecount, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* @out_linecount, align 8
  ret void
}

declare dso_local i32 @size2int_sat(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
