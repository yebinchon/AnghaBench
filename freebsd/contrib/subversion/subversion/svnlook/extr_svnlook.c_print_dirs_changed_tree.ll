; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_print_dirs_changed_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_print_dirs_changed_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8, %struct.TYPE_3__*, i32, %struct.TYPE_3__*, i64 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s/\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32*)* @print_dirs_changed_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_dirs_changed_tree(%struct.TYPE_3__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %9, align 8
  %13 = call i32* @check_cancel(i32* null)
  %14 = call i32 @SVN_ERR(i32* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %18, i32** %4, align 8
  br label %114

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @svn_node_dir, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %26, i32** %4, align 8
  br label %114

27:                                               ; preds = %19
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %8, align 8
  br label %38

38:                                               ; preds = %67, %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %47, label %71

47:                                               ; preds = %45
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @svn_node_file, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 8
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 65
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 8
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 68
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %53, %47
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %65, %59
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %8, align 8
  br label %38

71:                                               ; preds = %45
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32*, i32** %7, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32* @svn_cmdline_printf(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = call i32 @SVN_ERR(i32* %77)
  br label %79

79:                                               ; preds = %74, %71
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  store %struct.TYPE_3__* %82, %struct.TYPE_3__** %8, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = icmp ne %struct.TYPE_3__* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %4, align 8
  br label %114

87:                                               ; preds = %79
  %88 = load i32*, i32** %7, align 8
  %89 = call i32* @svn_pool_create(i32* %88)
  store i32* %89, i32** %11, align 8
  br label %90

90:                                               ; preds = %93, %87
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = icmp ne %struct.TYPE_3__* %91, null
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @svn_pool_clear(i32* %94)
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i8* @svn_dirent_join(i8* %96, i32 %99, i32* %100)
  store i8* %101, i8** %10, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32* @print_dirs_changed_tree(%struct.TYPE_3__* %102, i8* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32* %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  store %struct.TYPE_3__* %109, %struct.TYPE_3__** %8, align 8
  br label %90

110:                                              ; preds = %90
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @svn_pool_destroy(i32* %111)
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %4, align 8
  br label %114

114:                                              ; preds = %110, %85, %25, %17
  %115 = load i32*, i32** %4, align 8
  ret i32* %115
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @check_cancel(i32*) #1

declare dso_local i32* @svn_cmdline_printf(i32*, i8*, i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
