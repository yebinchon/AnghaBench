; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_util/extr_fs-util.c_svn_fs__compatible_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_util/extr_fs-util.c_svn_fs__compatible_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@SVN_FS_CONFIG_COMPATIBLE_VERSION = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_PRE_1_4_COMPATIBLE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_PRE_1_5_COMPATIBLE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_PRE_1_6_COMPATIBLE = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_PRE_1_8_COMPATIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs__compatible_version(%struct.TYPE_8__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @SVN_FS_CONFIG_COMPATIBLE_VERSION, align 4
  %11 = call i8* @svn_hash_gets(i32* %9, i32 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i8*, i8** %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @svn_version__parse_version_string(%struct.TYPE_8__** %7, i8* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = call %struct.TYPE_9__* (...) @svn_subr_version()
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_9__* (...) @svn_subr_version()
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @add_compatility(%struct.TYPE_8__* %19, i32 %22, i32 %25)
  br label %31

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = call %struct.TYPE_9__* (...) @svn_subr_version()
  %30 = call %struct.TYPE_8__* @apr_pmemdup(i32* %28, %struct.TYPE_9__* %29, i32 16)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %7, align 8
  br label %31

31:                                               ; preds = %27, %14
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @SVN_FS_CONFIG_PRE_1_4_COMPATIBLE, align 4
  %34 = call i8* @svn_hash_gets(i32* %32, i32 %33)
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = call i32 @add_compatility(%struct.TYPE_8__* %37, i32 1, i32 3)
  br label %66

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @SVN_FS_CONFIG_PRE_1_5_COMPATIBLE, align 4
  %42 = call i8* @svn_hash_gets(i32* %40, i32 %41)
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = call i32 @add_compatility(%struct.TYPE_8__* %45, i32 1, i32 4)
  br label %65

47:                                               ; preds = %39
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @SVN_FS_CONFIG_PRE_1_6_COMPATIBLE, align 4
  %50 = call i8* @svn_hash_gets(i32* %48, i32 %49)
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = call i32 @add_compatility(%struct.TYPE_8__* %53, i32 1, i32 5)
  br label %64

55:                                               ; preds = %47
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @SVN_FS_CONFIG_PRE_1_8_COMPATIBLE, align 4
  %58 = call i8* @svn_hash_gets(i32* %56, i32 %57)
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = call i32 @add_compatility(%struct.TYPE_8__* %61, i32 1, i32 7)
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %36
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %72, align 8
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %73
}

declare dso_local i8* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_version__parse_version_string(%struct.TYPE_8__**, i8*, i32*) #1

declare dso_local i32 @add_compatility(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @svn_subr_version(...) #1

declare dso_local %struct.TYPE_8__* @apr_pmemdup(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
