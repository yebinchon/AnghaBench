; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_binary_diff.c_base85_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_binary_diff.c_base85_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b85str = common dso_local global i8* null, align 8
@SVN_ERR_DIFF_UNEXPECTED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid base85 value\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8)* @base85_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base85_value(i32* %0, i8 signext %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load i8*, i8** @b85str, align 8
  %8 = load i8, i8* %5, align 1
  %9 = call i8* @strchr(i8* %7, i8 signext %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @SVN_ERR_DIFF_UNEXPECTED_DATA, align 4
  %14 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = call i32* @svn_error_create(i32 %13, i32* null, i32 %14)
  store i32* %15, i32** %3, align 8
  br label %25

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** @b85str, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %3, align 8
  br label %25

25:                                               ; preds = %16, %12
  %26 = load i32*, i32** %3, align 8
  ret i32* %26
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
