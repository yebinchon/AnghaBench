; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_external_add_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_external_add_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32*, i32, i8*, i32*, i8*, i32, i32 }

@svn_node_symlink = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_external_add_symlink(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7, i8* %8, i32 %9, i8* %10, i8* %11, i32* %12, i8* %13, i8* %14, i8* %15, i8* %16, i8* %17, i32* %18, i8* %19, i32* %20, i32* %21) #0 {
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca %struct.TYPE_9__*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %23, align 8
  store i8* %1, i8** %24, align 8
  store i8* %2, i8** %25, align 8
  store i8* %3, i8** %26, align 8
  store i8* %4, i8** %27, align 8
  store i8* %5, i8** %28, align 8
  store i8* %6, i8** %29, align 8
  store i32* %7, i32** %30, align 8
  store i8* %8, i8** %31, align 8
  store i32 %9, i32* %32, align 4
  store i8* %10, i8** %33, align 8
  store i8* %11, i8** %34, align 8
  store i32* %12, i32** %35, align 8
  store i8* %13, i8** %36, align 8
  store i8* %14, i8** %37, align 8
  store i8* %15, i8** %38, align 8
  store i8* %16, i8** %39, align 8
  store i8* %17, i8** %40, align 8
  store i32* %18, i32** %41, align 8
  store i8* %19, i8** %42, align 8
  store i32* %20, i32** %43, align 8
  store i32* %21, i32** %44, align 8
  %48 = load i8*, i8** %24, align 8
  %49 = call i32 @svn_dirent_is_absolute(i8* %48)
  %50 = call i32 @SVN_ERR_ASSERT(i32 %49)
  %51 = load i8*, i8** %25, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %22
  %54 = load i8*, i8** %24, align 8
  %55 = load i32*, i32** %44, align 8
  %56 = call i8* @svn_dirent_dirname(i8* %54, i32* %55)
  store i8* %56, i8** %25, align 8
  br label %57

57:                                               ; preds = %53, %22
  %58 = load i32*, i32** %23, align 8
  %59 = load i8*, i8** %25, align 8
  %60 = load i32*, i32** %44, align 8
  %61 = load i32*, i32** %44, align 8
  %62 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_9__** %45, i8** %46, i32* %58, i8* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %65 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_9__* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %36, align 8
  %70 = call i32 @svn_dirent_is_ancestor(i32 %68, i8* %69)
  %71 = call i32 @SVN_ERR_ASSERT(i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %24, align 8
  %76 = call i32 @svn_dirent_is_ancestor(i32 %74, i8* %75)
  %77 = call i32 @SVN_ERR_ASSERT(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %24, align 8
  %82 = call i8* @svn_dirent_skip_ancestor(i32 %80, i8* %81)
  store i8* %82, i8** %46, align 8
  %83 = call i32 @blank_ieb(%struct.TYPE_10__* %47)
  %84 = load i32, i32* @svn_node_symlink, align 4
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 19
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @svn_wc__db_status_normal, align 4
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 18
  store i32 %86, i32* %87, align 8
  %88 = load i8*, i8** %27, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** %28, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i8* %90, i8** %91, align 8
  %92 = load i8*, i8** %26, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** %29, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 17
  store i8* %94, i8** %95, align 8
  %96 = load i32*, i32** %30, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 16
  store i32* %96, i32** %97, align 8
  %98 = load i8*, i8** %31, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 15
  store i8* %98, i8** %99, align 8
  %100 = load i32, i32* %32, align 4
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 14
  store i32 %100, i32* %101, align 8
  %102 = load i8*, i8** %33, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  store i8* %102, i8** %103, align 8
  %104 = load i8*, i8** %34, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  store i8* %104, i8** %105, align 8
  %106 = load i32*, i32** %35, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 13
  store i32* %106, i32** %107, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %36, align 8
  %112 = call i8* @svn_dirent_skip_ancestor(i32 %110, i8* %111)
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 12
  store i8* %112, i8** %113, align 8
  %114 = load i8*, i8** %37, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  store i8* %114, i8** %115, align 8
  %116 = load i8*, i8** %38, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 11
  store i8* %116, i8** %117, align 8
  %118 = load i8*, i8** %39, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 10
  store i8* %118, i8** %119, align 8
  %120 = load i8*, i8** %40, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 9
  store i8* %120, i8** %121, align 8
  %122 = load i32*, i32** %41, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 8
  store i32* %122, i32** %123, align 8
  %124 = load i8*, i8** %42, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 7
  store i8* %124, i8** %125, align 8
  %126 = load i32*, i32** %43, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 6
  store i32* %126, i32** %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %129 = load i8*, i8** %46, align 8
  %130 = load i32*, i32** %44, align 8
  %131 = call i32 @insert_external_node(%struct.TYPE_10__* %47, %struct.TYPE_9__* %128, i8* %129, i32* %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %133 = call i32 @SVN_WC__DB_WITH_TXN(i32 %131, %struct.TYPE_9__* %132)
  %134 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %134
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_9__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_dirent_is_ancestor(i32, i8*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @blank_ieb(%struct.TYPE_10__*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @insert_external_node(%struct.TYPE_10__*, %struct.TYPE_9__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
