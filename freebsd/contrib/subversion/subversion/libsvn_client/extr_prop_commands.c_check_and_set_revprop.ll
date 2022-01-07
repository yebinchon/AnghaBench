; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_check_and_set_revprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_check_and_set_revprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SVN_ERR_RA_OUT_OF_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"revprop '%s' in r%ld is unexpectedly absent in repository (maybe someone else deleted it?)\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"revprop '%s' in r%ld has unexpected value in repository (maybe someone else changed it?)\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"revprop '%s' in r%ld is unexpectedly present in repository (maybe someone else set it?)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*)* @check_and_set_revprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_and_set_revprop(i32* %0, i32* %1, i8* %2, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %74

17:                                               ; preds = %6
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @svn_ra_rev_prop(i32* %18, i32 %20, i8* %21, %struct.TYPE_8__** %14, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %17
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @SVN_ERR_RA_OUT_OF_DATE, align 4
  %34 = call i32 @_(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %10, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @svn_error_createf(i32 %33, i32* null, i32 %34, i8* %35, i32 %37)
  store i32* %38, i32** %7, align 8
  br label %84

39:                                               ; preds = %29, %17
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %47 = call i32 @svn_string_compare(%struct.TYPE_8__* %45, %struct.TYPE_8__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @SVN_ERR_RA_OUT_OF_DATE, align 4
  %51 = call i32 @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i8*, i8** %10, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @svn_error_createf(i32 %50, i32* null, i32 %51, i8* %52, i32 %54)
  store i32* %55, i32** %7, align 8
  br label %84

56:                                               ; preds = %44, %39
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* @SVN_ERR_RA_OUT_OF_DATE, align 4
  %66 = call i32 @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i8*, i8** %10, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @svn_error_createf(i32 %65, i32* null, i32 %66, i8* %67, i32 %69)
  store i32* %70, i32** %7, align 8
  br label %84

71:                                               ; preds = %61, %56
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73, %6
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @svn_ra_change_rev_prop2(i32* %75, i32 %77, i8* %78, i32* null, %struct.TYPE_8__* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %83, i32** %7, align 8
  br label %84

84:                                               ; preds = %74, %64, %49, %32
  %85 = load i32*, i32** %7, align 8
  ret i32* %85
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_rev_prop(i32*, i32, i8*, %struct.TYPE_8__**, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_string_compare(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @svn_ra_change_rev_prop2(i32*, i32, i8*, i32*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
