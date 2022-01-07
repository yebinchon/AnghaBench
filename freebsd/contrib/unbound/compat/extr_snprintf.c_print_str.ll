; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_snprintf.c_print_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_snprintf.c_print_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*, i32*, i8*, i32, i32, i32, i32)* @print_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_str(i8** %0, i64* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %15, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @my_strnlen(i8* %21, i32 %22)
  store i32 %23, i32* %17, align 4
  br label %28

24:                                               ; preds = %8
  %25 = load i8*, i8** %12, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %17, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load i8**, i8*** %9, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %17, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @print_pad(i8** %36, i64* %37, i32* %38, i8 signext 32, i32 %41)
  br label %43

43:                                               ; preds = %35, %32, %28
  %44 = load i8**, i8*** %9, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @spool_str(i8** %44, i64* %45, i32* %46, i8* %47, i32 %48)
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %43
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8**, i8*** %9, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %17, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @print_pad(i8** %57, i64* %58, i32* %59, i8 signext 32, i32 %62)
  br label %64

64:                                               ; preds = %56, %53, %43
  ret void
}

declare dso_local i32 @my_strnlen(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @print_pad(i8**, i64*, i32*, i8 signext, i32) #1

declare dso_local i32 @spool_str(i8**, i64*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
