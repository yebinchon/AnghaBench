; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_most_similar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_most_similar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_STRING__SIM_RANGE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i64, i32*)* @most_similar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @most_similar(i8* %0, i8** %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @svn_string_create(i8* %16, i32* %17)
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @svn_membuf__create(i32* %12, i32 64, i32* %19)
  store i64 0, i64* %11, align 8
  br label %21

21:                                               ; preds = %53, %4
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load i8**, i8*** %6, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @svn_string_create(i8* %29, i32* %30)
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = call i64 @svn_string__similarity(i32* %32, i32* %33, i32* %12, i32* null)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i32, i32* @SVN_STRING__SIM_RANGE_MAX, align 4
  %37 = mul nsw i32 2, %36
  %38 = add nsw i32 %37, 1
  %39 = sdiv i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 %35, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %25
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i64, i64* %14, align 8
  store i64 %47, i64* %10, align 8
  %48 = load i8**, i8*** %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %46, %42, %25
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %21

56:                                               ; preds = %21
  %57 = load i8*, i8** %9, align 8
  ret i8* %57
}

declare dso_local i32* @svn_string_create(i8*, i32*) #1

declare dso_local i32 @svn_membuf__create(i32*, i32, i32*) #1

declare dso_local i64 @svn_string__similarity(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
