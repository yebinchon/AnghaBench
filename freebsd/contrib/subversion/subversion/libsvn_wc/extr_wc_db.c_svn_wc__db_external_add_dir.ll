; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_external_add_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_external_add_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i32*, i8*, i8*, i8*, i32, i32 }

@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_external_add_dir(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @svn_dirent_is_absolute(i8* %26)
  %28 = call i32 @SVN_ERR_ASSERT(i32 %27)
  %29 = load i8*, i8** %14, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %11
  %32 = load i8*, i8** %13, align 8
  %33 = load i32*, i32** %22, align 8
  %34 = call i8* @svn_dirent_dirname(i8* %32, i32* %33)
  store i8* %34, i8** %14, align 8
  br label %35

35:                                               ; preds = %31, %11
  %36 = load i32*, i32** %12, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i32*, i32** %22, align 8
  %39 = load i32*, i32** %22, align 8
  %40 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_9__** %23, i8** %24, i32* %36, i8* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %43 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_9__* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %17, align 8
  %48 = call i32 @svn_dirent_is_ancestor(i32 %46, i8* %47)
  %49 = call i32 @SVN_ERR_ASSERT(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @svn_dirent_is_ancestor(i32 %52, i8* %53)
  %55 = call i32 @SVN_ERR_ASSERT(i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i8* @svn_dirent_skip_ancestor(i32 %58, i8* %59)
  store i8* %60, i8** %24, align 8
  %61 = call i32 @blank_ieb(%struct.TYPE_10__* %25)
  %62 = load i32, i32* @svn_node_dir, align 4
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @svn_wc__db_status_normal, align 4
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 7
  store i32 %64, i32* %65, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %17, align 8
  %74 = call i8* @svn_dirent_skip_ancestor(i32 %72, i8* %73)
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 6
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 5
  store i8* %78, i8** %79, align 8
  %80 = load i8*, i8** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  store i8* %80, i8** %81, align 8
  %82 = load i32*, i32** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  store i32* %82, i32** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %85 = load i8*, i8** %24, align 8
  %86 = load i32*, i32** %22, align 8
  %87 = call i32 @insert_external_node(%struct.TYPE_10__* %25, %struct.TYPE_9__* %84, i8* %85, i32* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %89 = call i32 @SVN_WC__DB_WITH_TXN(i32 %87, %struct.TYPE_9__* %88)
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %90
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
