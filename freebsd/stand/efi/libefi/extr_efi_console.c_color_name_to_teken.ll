; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_color_name_to_teken.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_color_name_to_teken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"black\00", align 1
@TC_BLACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@TC_RED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@TC_GREEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"brown\00", align 1
@TC_BROWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@TC_BLUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@TC_MAGENTA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@TC_CYAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@TC_WHITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @color_name_to_teken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_name_to_teken(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strcasecmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @TC_BLACK, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  store i32 1, i32* %3, align 4
  br label %62

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcasecmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @TC_RED, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %62

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcasecmp(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @TC_GREEN, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  store i32 1, i32* %3, align 4
  br label %62

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @TC_BROWN, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  store i32 1, i32* %3, align 4
  br label %62

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @TC_BLUE, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  store i32 1, i32* %3, align 4
  br label %62

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strcasecmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @TC_MAGENTA, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  store i32 1, i32* %3, align 4
  br label %62

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @TC_CYAN, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  store i32 1, i32* %3, align 4
  br label %62

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @strcasecmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @TC_WHITE, align 4
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  store i32 1, i32* %3, align 4
  br label %62

61:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %58, %51, %44, %37, %30, %23, %16, %9
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
