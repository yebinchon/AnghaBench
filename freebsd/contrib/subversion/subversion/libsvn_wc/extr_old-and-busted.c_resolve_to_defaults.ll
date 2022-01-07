; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_resolve_to_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_resolve_to_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@SVN_WC_ENTRY_THIS_DIR = common dso_local global i32 0, align 4
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Missing default entry\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_MISSING_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Default entry has no revision number\00", align 1
@SVN_ERR_ENTRY_MISSING_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Default entry is missing URL\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @resolve_to_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_to_defaults(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @SVN_WC_ENTRY_THIS_DIR, align 4
  %11 = call %struct.TYPE_6__* @svn_hash_gets(i32* %9, i32 %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %16 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = call i32* @svn_error_create(i32 %15, i32* null, i32 %16)
  store i32* %17, i32** %3, align 8
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @SVN_ERR_ENTRY_MISSING_REVISION, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32* @svn_error_create(i32 %25, i32* null, i32 %26)
  store i32* %27, i32** %3, align 8
  br label %75

28:                                               ; preds = %18
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @SVN_ERR_ENTRY_MISSING_URL, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32* @svn_error_create(i32 %34, i32* null, i32 %35)
  store i32* %36, i32** %3, align 8
  br label %75

37:                                               ; preds = %28
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @apr_hash_first(i32* %38, i32* %39)
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %70, %37
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = call %struct.TYPE_6__* @apr_hash_this_val(i32* %45)
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %8, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = icmp eq %struct.TYPE_6__* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %70

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @svn_node_dir, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %70

58:                                               ; preds = %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @svn_node_file, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @take_from_entry(%struct.TYPE_6__* %65, %struct.TYPE_6__* %66, i32* %67)
  br label %69

69:                                               ; preds = %64, %58
  br label %70

70:                                               ; preds = %69, %57, %50
  %71 = load i32*, i32** %6, align 8
  %72 = call i32* @apr_hash_next(i32* %71)
  store i32* %72, i32** %6, align 8
  br label %41

73:                                               ; preds = %41
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %74, i32** %3, align 8
  br label %75

75:                                               ; preds = %73, %33, %24, %14
  %76 = load i32*, i32** %3, align 8
  ret i32* %76
}

declare dso_local %struct.TYPE_6__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @take_from_entry(%struct.TYPE_6__*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
