; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_auth-cmd.c_walk_credentials.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_auth-cmd.c_walk_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_credentials_baton_t = type { i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@svn_sort_compare_items_lexically = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Deleting %s credential for realm '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i8*, i32*, i32*)* @walk_credentials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @walk_credentials(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.walk_credentials_baton_t*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.walk_credentials_baton_t*
  store %struct.walk_credentials_baton_t* %19, %struct.walk_credentials_baton_t** %14, align 8
  store i32* null, i32** %16, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* @svn_sort_compare_items_lexically, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = call i32* @svn_sort__hash(i32* %22, i32 %23, i32* %24)
  store i32* %25, i32** %15, align 8
  %26 = load %struct.walk_credentials_baton_t*, %struct.walk_credentials_baton_t** %14, align 8
  %27 = getelementptr inbounds %struct.walk_credentials_baton_t, %struct.walk_credentials_baton_t* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %6
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.walk_credentials_baton_t*, %struct.walk_credentials_baton_t** %14, align 8
  %36 = getelementptr inbounds %struct.walk_credentials_baton_t, %struct.walk_credentials_baton_t* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @match_credential(i32* %17, i32** %16, i8* %33, i8* %34, %struct.TYPE_2__* %37, i32* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %32
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %7, align 8
  br label %84

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %6
  %49 = load %struct.walk_credentials_baton_t*, %struct.walk_credentials_baton_t** %14, align 8
  %50 = getelementptr inbounds %struct.walk_credentials_baton_t, %struct.walk_credentials_baton_t* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.walk_credentials_baton_t*, %struct.walk_credentials_baton_t** %14, align 8
  %54 = getelementptr inbounds %struct.walk_credentials_baton_t, %struct.walk_credentials_baton_t* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %48
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load %struct.walk_credentials_baton_t*, %struct.walk_credentials_baton_t** %14, align 8
  %62 = getelementptr inbounds %struct.walk_credentials_baton_t, %struct.walk_credentials_baton_t* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @list_credential(i8* %58, i8* %59, i32* %60, i32 %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %68

68:                                               ; preds = %57, %48
  %69 = load %struct.walk_credentials_baton_t*, %struct.walk_credentials_baton_t** %14, align 8
  %70 = getelementptr inbounds %struct.walk_credentials_baton_t, %struct.walk_credentials_baton_t* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32, i32* @TRUE, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @svn_cmdline_printf(i32* %76, i32 %77, i8* %78, i8* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %82

82:                                               ; preds = %73, %68
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %83, i32** %7, align 8
  br label %84

84:                                               ; preds = %82, %45
  %85 = load i32*, i32** %7, align 8
  ret i32* %85
}

declare dso_local i32* @svn_sort__hash(i32*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @match_credential(i32*, i32**, i8*, i8*, %struct.TYPE_2__*, i32*, i32*, i32*) #1

declare dso_local i32 @list_credential(i8*, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
