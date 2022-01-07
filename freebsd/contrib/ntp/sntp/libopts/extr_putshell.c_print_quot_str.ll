; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_putshell.c_print_quot_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_putshell.c_print_quot_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@EMPTY_ARG = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@APOSTROPHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_quot_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_quot_str(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8, i8* @NUL, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %6, %1
  %14 = load i8*, i8** @EMPTY_ARG, align 8
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @fputs(i8* %14, i32 %15)
  br label %70

17:                                               ; preds = %6
  %18 = load i8*, i8** %2, align 8
  %19 = call i8* @print_quoted_apostrophes(i8* %18)
  store i8* %19, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @NUL, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %70

27:                                               ; preds = %17
  %28 = load i32, i32* @APOSTROPHE, align 4
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fputc(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %59, %27
  %32 = load i8*, i8** %2, align 8
  %33 = load i32, i32* @APOSTROPHE, align 4
  %34 = call i8* @strchr(i8* %32, i32 %33)
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %63

38:                                               ; preds = %31
  %39 = load i8*, i8** %2, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fwrite(i8* %39, i64 %44, i64 1, i32 %45)
  %47 = load i32, i32* @APOSTROPHE, align 4
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @fputc(i32 %47, i32 %48)
  %50 = load i8*, i8** %3, align 8
  %51 = call i8* @print_quoted_apostrophes(i8* %50)
  store i8* %51, i8** %2, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @NUL, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %70

59:                                               ; preds = %38
  %60 = load i32, i32* @APOSTROPHE, align 4
  %61 = load i32, i32* @stdout, align 4
  %62 = call i32 @fputc(i32 %60, i32 %61)
  br label %31

63:                                               ; preds = %37
  %64 = load i8*, i8** %2, align 8
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @fputs(i8* %64, i32 %65)
  %67 = load i32, i32* @APOSTROPHE, align 4
  %68 = load i32, i32* @stdout, align 4
  %69 = call i32 @fputc(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %58, %26, %13
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i8* @print_quoted_apostrophes(i8*) #1

declare dso_local i32 @fputc(i32, i32) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
