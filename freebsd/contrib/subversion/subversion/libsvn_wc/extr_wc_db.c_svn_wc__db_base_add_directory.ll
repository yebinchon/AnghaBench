; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_add_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_add_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i32*, i32, i32*, i32*, i32*, i32, i32*, i32, i8*, i32*, i32*, i8*, i32, i32 }

@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_base_add_directory(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7, i8* %8, i32 %9, i8* %10, i32* %11, i32 %12, i32* %13, i64 %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19) #0 {
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca %struct.TYPE_10__*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca %struct.TYPE_11__, align 8
  store i32* %0, i32** %21, align 8
  store i8* %1, i8** %22, align 8
  store i8* %2, i8** %23, align 8
  store i8* %3, i8** %24, align 8
  store i8* %4, i8** %25, align 8
  store i8* %5, i8** %26, align 8
  store i8* %6, i8** %27, align 8
  store i32* %7, i32** %28, align 8
  store i8* %8, i8** %29, align 8
  store i32 %9, i32* %30, align 4
  store i8* %10, i8** %31, align 8
  store i32* %11, i32** %32, align 8
  store i32 %12, i32* %33, align 4
  store i32* %13, i32** %34, align 8
  store i64 %14, i64* %35, align 8
  store i32* %15, i32** %36, align 8
  store i32* %16, i32** %37, align 8
  store i32* %17, i32** %38, align 8
  store i32* %18, i32** %39, align 8
  store i32* %19, i32** %40, align 8
  %44 = load i8*, i8** %22, align 8
  %45 = call i32 @svn_dirent_is_absolute(i8* %44)
  %46 = call i32 @SVN_ERR_ASSERT(i32 %45)
  %47 = load i8*, i8** %24, align 8
  %48 = icmp ne i8* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @SVN_ERR_ASSERT(i32 %49)
  %51 = load i8*, i8** %25, align 8
  %52 = load i32*, i32** %40, align 8
  %53 = call i32 @svn_uri_is_canonical(i8* %51, i32* %52)
  %54 = call i32 @SVN_ERR_ASSERT(i32 %53)
  %55 = load i8*, i8** %26, align 8
  %56 = icmp ne i8* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @SVN_ERR_ASSERT(i32 %57)
  %59 = load i8*, i8** %27, align 8
  %60 = call i32 @SVN_IS_VALID_REVNUM(i8* %59)
  %61 = call i32 @SVN_ERR_ASSERT(i32 %60)
  %62 = load i32*, i32** %28, align 8
  %63 = icmp ne i32* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @SVN_ERR_ASSERT(i32 %64)
  %66 = load i8*, i8** %29, align 8
  %67 = call i32 @SVN_IS_VALID_REVNUM(i8* %66)
  %68 = call i32 @SVN_ERR_ASSERT(i32 %67)
  %69 = load i32*, i32** %21, align 8
  %70 = load i8*, i8** %23, align 8
  %71 = load i32*, i32** %40, align 8
  %72 = load i32*, i32** %40, align 8
  %73 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_10__** %41, i8** %42, i32* %69, i8* %70, i32* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %76 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_10__* %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %22, align 8
  %81 = call i8* @svn_dirent_skip_ancestor(i32 %79, i8* %80)
  store i8* %81, i8** %42, align 8
  %82 = call i32 @blank_ibb(%struct.TYPE_11__* %43)
  %83 = load i8*, i8** %25, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i8* %83, i8** %84, align 8
  %85 = load i8*, i8** %26, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* @svn_wc__db_status_normal, align 4
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 17
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @svn_node_dir, align 4
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 16
  store i32 %89, i32* %90, align 8
  %91 = load i8*, i8** %24, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  store i8* %91, i8** %92, align 8
  %93 = load i8*, i8** %27, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 15
  store i8* %93, i8** %94, align 8
  %95 = load i32*, i32** %37, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 14
  store i32* %95, i32** %96, align 8
  %97 = load i32*, i32** %28, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 13
  store i32* %97, i32** %98, align 8
  %99 = load i8*, i8** %29, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 12
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* %30, align 4
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 11
  store i32 %101, i32* %102, align 8
  %103 = load i8*, i8** %31, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store i8* %103, i8** %104, align 8
  %105 = load i32*, i32** %32, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 10
  store i32* %105, i32** %106, align 8
  %107 = load i32, i32* %33, align 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 9
  store i32 %107, i32* %108, align 8
  %109 = load i32*, i32** %34, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 8
  store i32* %109, i32** %110, align 8
  %111 = load i32*, i32** %38, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 7
  store i32* %111, i32** %112, align 8
  %113 = load i32*, i32** %39, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 6
  store i32* %113, i32** %114, align 8
  %115 = load i64, i64* %35, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %20
  %118 = load i32, i32* @TRUE, align 4
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 5
  store i32 %118, i32* %119, align 8
  %120 = load i32*, i32** %36, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  store i32* %120, i32** %121, align 8
  br label %122

122:                                              ; preds = %117, %20
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %124 = load i8*, i8** %42, align 8
  %125 = load i32*, i32** %40, align 8
  %126 = call i32 @insert_base_node(%struct.TYPE_11__* %43, %struct.TYPE_10__* %123, i8* %124, i32* %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %128 = call i32 @SVN_WC__DB_WITH_TXN(i32 %126, %struct.TYPE_10__* %127)
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %130 = load i8*, i8** %22, align 8
  %131 = load i32, i32* %33, align 4
  %132 = load i32*, i32** %40, align 8
  %133 = call i32 @flush_entries(%struct.TYPE_10__* %129, i8* %130, i32 %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %135
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @svn_uri_is_canonical(i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_10__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_10__*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @blank_ibb(%struct.TYPE_11__*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @insert_base_node(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i32 @flush_entries(%struct.TYPE_10__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
