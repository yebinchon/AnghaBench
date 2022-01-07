; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_generate_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_generate_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%.10s %.8s UTC\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"                       \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s\09%s (txn %s)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s\09%s (rev %ld)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32*)* @generate_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_label(i8** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %11, align 8
  %15 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @svn_fs_root_fs(i32* %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @svn_fs_is_revision_root(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = call i8* @svn_fs_revision_root_revision(i32* %25)
  store i8* %26, i8** %12, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @svn_fs_revision_prop2(%struct.TYPE_4__** %9, i32* %27, i8* %28, i32 %29, i32 %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %49

35:                                               ; preds = %18
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i8* @svn_fs_txn_root_name(i32* %36, i32* %37)
  store i8* %38, i8** %11, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @svn_fs_open_txn(i32** %14, i32* %39, i8* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @svn_fs_txn_prop(%struct.TYPE_4__** %9, i32* %44, i32 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %49

49:                                               ; preds = %35, %24
  br label %51

50:                                               ; preds = %4
  store i8* null, i8** %12, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  br label %51

51:                                               ; preds = %50, %49
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 11
  %64 = inttoptr i64 %63 to i8*
  %65 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %59, i8* %64)
  store i8* %65, i8** %10, align 8
  br label %67

66:                                               ; preds = %51
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32*, i32** %8, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %72, i8* %73, i8* %74)
  %76 = load i8**, i8*** %5, align 8
  store i8* %75, i8** %76, align 8
  br label %84

77:                                               ; preds = %67
  %78 = load i32*, i32** %8, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i8* (i32*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %79, i8* %80, i8* %81)
  %83 = load i8**, i8*** %5, align 8
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %77, %70
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %85
}

declare dso_local i32* @svn_fs_root_fs(i32*) #1

declare dso_local i64 @svn_fs_is_revision_root(i32*) #1

declare dso_local i8* @svn_fs_revision_root_revision(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_prop2(%struct.TYPE_4__**, i32*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i8* @svn_fs_txn_root_name(i32*, i32*) #1

declare dso_local i32 @svn_fs_open_txn(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_txn_prop(%struct.TYPE_4__**, i32*, i32, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
