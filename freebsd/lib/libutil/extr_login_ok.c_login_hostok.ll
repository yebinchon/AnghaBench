; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_ok.c_login_hostok.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_ok.c_login_hostok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FNM_CASEFOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @login_hostok(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 1, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %5
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18, %15
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %26, %18
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i8** @login_getcaplist(i32* %32, i8* %33, i32* null)
  store i8** %34, i8*** %12, align 8
  %35 = load i8**, i8*** %12, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i8**, i8*** %12, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @FNM_CASEFOLD, align 4
  %42 = call i64 @login_str2inlist(i8** %38, i8* %39, i8* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %60

45:                                               ; preds = %37, %31
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i8** @login_getcaplist(i32* %46, i8* %47, i32* null)
  store i8** %48, i8*** %12, align 8
  %49 = load i8**, i8*** %12, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i8**, i8*** %12, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @FNM_CASEFOLD, align 4
  %56 = call i64 @login_str2inlist(i8** %52, i8* %53, i8* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %51, %45
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %26, %23, %5
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i8** @login_getcaplist(i32*, i8*, i32*) #1

declare dso_local i64 @login_str2inlist(i8**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
