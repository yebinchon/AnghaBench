; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_external_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_external_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i32*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32*, i32*, i32, i8*, i32*, i32*, i8*, i32, i32 }

@svn_node_file = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_external_add_file(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7, i32* %8, i8* %9, i32 %10, i8* %11, i32* %12, i32* %13, i8* %14, i8* %15, i8* %16, i8* %17, i8* %18, i32* %19, i8* %20, i32* %21, i32* %22, i32* %23) #0 {
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca %struct.TYPE_9__*, align 8
  %50 = alloca i8*, align 8
  %51 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %25, align 8
  store i8* %1, i8** %26, align 8
  store i8* %2, i8** %27, align 8
  store i8* %3, i8** %28, align 8
  store i8* %4, i8** %29, align 8
  store i8* %5, i8** %30, align 8
  store i8* %6, i8** %31, align 8
  store i32* %7, i32** %32, align 8
  store i32* %8, i32** %33, align 8
  store i8* %9, i8** %34, align 8
  store i32 %10, i32* %35, align 4
  store i8* %11, i8** %36, align 8
  store i32* %12, i32** %37, align 8
  store i32* %13, i32** %38, align 8
  store i8* %14, i8** %39, align 8
  store i8* %15, i8** %40, align 8
  store i8* %16, i8** %41, align 8
  store i8* %17, i8** %42, align 8
  store i8* %18, i8** %43, align 8
  store i32* %19, i32** %44, align 8
  store i8* %20, i8** %45, align 8
  store i32* %21, i32** %46, align 8
  store i32* %22, i32** %47, align 8
  store i32* %23, i32** %48, align 8
  %52 = load i8*, i8** %26, align 8
  %53 = call i32 @svn_dirent_is_absolute(i8* %52)
  %54 = call i32 @SVN_ERR_ASSERT(i32 %53)
  %55 = load i8*, i8** %27, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %24
  %58 = load i8*, i8** %26, align 8
  %59 = load i32*, i32** %48, align 8
  %60 = call i8* @svn_dirent_dirname(i8* %58, i32* %59)
  store i8* %60, i8** %27, align 8
  br label %61

61:                                               ; preds = %57, %24
  %62 = load i32*, i32** %25, align 8
  %63 = load i8*, i8** %27, align 8
  %64 = load i32*, i32** %48, align 8
  %65 = load i32*, i32** %48, align 8
  %66 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_9__** %49, i8** %50, i32* %62, i8* %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %69 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_9__* %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %39, align 8
  %74 = call i32 @svn_dirent_is_ancestor(i32 %72, i8* %73)
  %75 = call i32 @SVN_ERR_ASSERT(i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %26, align 8
  %80 = call i32 @svn_dirent_is_ancestor(i32 %78, i8* %79)
  %81 = call i32 @SVN_ERR_ASSERT(i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %26, align 8
  %86 = call i8* @svn_dirent_skip_ancestor(i32 %84, i8* %85)
  store i8* %86, i8** %50, align 8
  %87 = call i32 @blank_ieb(%struct.TYPE_10__* %51)
  %88 = load i32, i32* @svn_node_file, align 4
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 21
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @svn_wc__db_status_normal, align 4
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 20
  store i32 %90, i32* %91, align 8
  %92 = load i8*, i8** %29, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** %30, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  store i8* %94, i8** %95, align 8
  %96 = load i8*, i8** %28, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i8* %96, i8** %97, align 8
  %98 = load i8*, i8** %31, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 19
  store i8* %98, i8** %99, align 8
  %100 = load i32*, i32** %32, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 18
  store i32* %100, i32** %101, align 8
  %102 = load i32*, i32** %33, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 17
  store i32* %102, i32** %103, align 8
  %104 = load i8*, i8** %34, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 16
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* %35, align 4
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 15
  store i32 %106, i32* %107, align 8
  %108 = load i8*, i8** %36, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  store i8* %108, i8** %109, align 8
  %110 = load i32*, i32** %37, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 14
  store i32* %110, i32** %111, align 8
  %112 = load i32*, i32** %38, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 13
  store i32* %112, i32** %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %39, align 8
  %118 = call i8* @svn_dirent_skip_ancestor(i32 %116, i8* %117)
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 12
  store i8* %118, i8** %119, align 8
  %120 = load i8*, i8** %40, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 4
  store i8* %120, i8** %121, align 8
  %122 = load i8*, i8** %41, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 11
  store i8* %122, i8** %123, align 8
  %124 = load i8*, i8** %42, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 10
  store i8* %124, i8** %125, align 8
  %126 = load i8*, i8** %43, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 9
  store i8* %126, i8** %127, align 8
  %128 = load i32*, i32** %44, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 8
  store i32* %128, i32** %129, align 8
  %130 = load i8*, i8** %45, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 7
  store i8* %130, i8** %131, align 8
  %132 = load i32*, i32** %46, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 6
  store i32* %132, i32** %133, align 8
  %134 = load i32*, i32** %47, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  store i32* %134, i32** %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %137 = load i8*, i8** %50, align 8
  %138 = load i32*, i32** %48, align 8
  %139 = call i32 @insert_external_node(%struct.TYPE_10__* %51, %struct.TYPE_9__* %136, i8* %137, i32* %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %141 = call i32 @SVN_WC__DB_WITH_TXN(i32 %139, %struct.TYPE_9__* %140)
  %142 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %142
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
