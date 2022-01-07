; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_refnumtoa.c_refnumtoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_refnumtoa.c_refnumtoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s(%lu)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"REFCLK(%lu,%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @refnumtoa(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @ISREFCLOCKADR(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @socktoa(i32* %11)
  store i8* %12, i8** %2, align 8
  br label %46

13:                                               ; preds = %1
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @LIB_GETBUF(i8* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @SRCADR(i32* %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = trunc i64 %18 to i32
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = call i8* @clockname(i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %13
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @LIB_BUFLENGTH, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 255
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %31)
  br label %44

33:                                               ; preds = %13
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @LIB_BUFLENGTH, align 4
  %36 = load i64, i64* %4, align 8
  %37 = trunc i64 %36 to i32
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = load i64, i64* %4, align 8
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 255
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %33, %25
  %45 = load i8*, i8** %5, align 8
  store i8* %45, i8** %2, align 8
  br label %46

46:                                               ; preds = %44, %10
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

declare dso_local i32 @ISREFCLOCKADR(i32*) #1

declare dso_local i8* @socktoa(i32*) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i64 @SRCADR(i32*) #1

declare dso_local i8* @clockname(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
