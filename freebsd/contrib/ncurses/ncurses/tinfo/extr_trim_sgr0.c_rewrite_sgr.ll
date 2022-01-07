; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_trim_sgr0.c_rewrite_sgr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_trim_sgr0.c_rewrite_sgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRACE_DATABASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rewrite:\0A\09%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"to:\0A\09%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @rewrite_sgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rewrite_sgr(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %73

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @PRESENT(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @strncmp(i8* %26, i8* %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %70, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @TRACE_DATABASE, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @TR(i32 %32, i8* %33)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %54, %31
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %38, %39
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %45, %46
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 %49, i8* %53, align 1
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = add nsw i32 %64, 1
  %66 = call i32 @_nc_STRCPY(i8* %61, i8* %62, i32 %65)
  %67 = load i32, i32* @TRACE_DATABASE, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @TR(i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %57, %25, %15
  br label %71

71:                                               ; preds = %70, %11
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %2
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @PRESENT(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @TR(i32, i8*) #1

declare dso_local i32 @_nc_STRCPY(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
