; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_types.c_svn_tristate__from_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_types.c_svn_tristate__from_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_tristate_unknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@svn_tristate_true = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@svn_tristate_false = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_tristate__from_word(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @svn_tristate_unknown, align 4
  store i32 %7, i32* %2, align 4
  br label %48

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @svn_cstring_casecmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 0, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @svn_cstring_casecmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 0, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @svn_cstring_casecmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 0, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp eq i64 0, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16, %12, %8
  %25 = load i32, i32* @svn_tristate_true, align 4
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @svn_cstring_casecmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp eq i64 0, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @svn_cstring_casecmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %33 = icmp eq i64 0, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @svn_cstring_casecmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %37 = icmp eq i64 0, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %41 = icmp eq i64 0, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34, %30, %26
  %43 = load i32, i32* @svn_tristate_false, align 4
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* @svn_tristate_unknown, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %42, %24, %6
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @svn_cstring_casecmp(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
