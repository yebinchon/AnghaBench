; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_read_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_read_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unexpected end of entry\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*)* @read_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_val(i8** %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %17 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = call i32* @svn_error_create(i32 %16, i32* null, i32 %17)
  store i32* %18, i32** %4, align 8
  br label %67

19:                                               ; preds = %3
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %26, align 8
  %29 = load i8**, i8*** %5, align 8
  store i8* null, i8** %29, align 8
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %4, align 8
  br label %67

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i8**, i8*** %6, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 10
  br label %43

43:                                               ; preds = %37, %32
  %44 = phi i1 [ false, %32 ], [ %42, %37 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = load i8**, i8*** %6, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  br label %32

49:                                               ; preds = %43
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %57 = call i32* @svn_error_create(i32 %55, i32* null, i32 %56)
  store i32* %57, i32** %4, align 8
  br label %67

58:                                               ; preds = %49
  %59 = load i8**, i8*** %6, align 8
  %60 = load i8*, i8** %59, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %8, align 8
  %62 = load i8**, i8*** %5, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %63, align 8
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %66, i32** %4, align 8
  br label %67

67:                                               ; preds = %58, %54, %25, %15
  %68 = load i32*, i32** %4, align 8
  ret i32* %68
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
