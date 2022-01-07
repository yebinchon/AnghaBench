; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_parse_git_mode_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_parse_git_mode_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_tristate_false = common dso_local global i32 0, align 4
@svn_tristate_true = common dso_local global i32 0, align 4
@svn_tristate_unknown = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*)* @parse_git_mode_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_git_mode_bits(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @svn_cstring_strtoui64(i32* %7, i8* %8, i32 0, i32 262143, i32 8)
  %10 = call i32 @SVN_ERR(i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 511
  switch i32 %12, label %19 [
    i32 420, label %13
    i32 493, label %16
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @svn_tristate_false, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @svn_tristate_true, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @svn_tristate_unknown, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %16, %13
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 61440
  switch i32 %24, label %31 [
    i32 40960, label %25
    i32 32768, label %28
    i32 16384, label %28
  ]

25:                                               ; preds = %22
  %26 = load i32, i32* @svn_tristate_true, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %34

28:                                               ; preds = %22, %22
  %29 = load i32, i32* @svn_tristate_false, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @svn_tristate_unknown, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28, %25
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %35
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cstring_strtoui64(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
