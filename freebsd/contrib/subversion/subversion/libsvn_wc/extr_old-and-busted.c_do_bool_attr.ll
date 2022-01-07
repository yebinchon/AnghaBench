; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_do_bool_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_do_bool_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_ENTRY_ATTRIBUTE_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Entry '%s' has invalid '%s' value\00", align 1
@SVN_WC_ENTRY_THIS_DIR = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i8*)* @do_bool_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_bool_attr(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i8* @svn_hash_gets(i32* %11, i8* %12)
  store i8* %13, i8** %10, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %51

18:                                               ; preds = %4
  %19 = load i8*, i8** %10, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  br label %50

25:                                               ; preds = %18
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %49

36:                                               ; preds = %29
  %37 = load i32, i32* @SVN_ERR_ENTRY_ATTRIBUTE_INVALID, align 4
  %38 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  br label %45

43:                                               ; preds = %36
  %44 = load i8*, i8** @SVN_WC_ENTRY_THIS_DIR, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i8* [ %42, %41 ], [ %44, %43 ]
  %47 = load i8*, i8** %8, align 8
  %48 = call i32* @svn_error_createf(i32 %37, i32* null, i32 %38, i8* %46, i8* %47)
  store i32* %48, i32** %5, align 8
  br label %53

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %22
  br label %51

51:                                               ; preds = %50, %4
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %5, align 8
  br label %53

53:                                               ; preds = %51, %45
  %54 = load i32*, i32** %5, align 8
  ret i32* %54
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
