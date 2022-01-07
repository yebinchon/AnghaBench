; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_add_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_add_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i32*, i32*, i8*, i8*, i8*, i32*, i32, i32*, i32*, i32, i8*, i32*, i8*, i32, i32 }

@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@svn_node_symlink = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_base_add_symlink(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7, i8* %8, i32 %9, i8* %10, i8* %11, i32* %12, i8* %13, i8* %14, i32* %15, i32* %16, i8* %17, i8* %18, i32* %19, i32* %20, i32* %21) #0 {
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
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca %struct.TYPE_10__*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca %struct.TYPE_11__, align 8
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
  store i32* %15, i32** %38, align 8
  store i32* %16, i32** %39, align 8
  store i8* %17, i8** %40, align 8
  store i8* %18, i8** %41, align 8
  store i32* %19, i32** %42, align 8
  store i32* %20, i32** %43, align 8
  store i32* %21, i32** %44, align 8
  %48 = load i8*, i8** %24, align 8
  %49 = call i32 @svn_dirent_is_absolute(i8* %48)
  %50 = call i32 @SVN_ERR_ASSERT(i32 %49)
  %51 = load i8*, i8** %26, align 8
  %52 = icmp ne i8* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @SVN_ERR_ASSERT(i32 %53)
  %55 = load i8*, i8** %27, align 8
  %56 = load i32*, i32** %44, align 8
  %57 = call i32 @svn_uri_is_canonical(i8* %55, i32* %56)
  %58 = call i32 @SVN_ERR_ASSERT(i32 %57)
  %59 = load i8*, i8** %28, align 8
  %60 = icmp ne i8* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @SVN_ERR_ASSERT(i32 %61)
  %63 = load i8*, i8** %29, align 8
  %64 = call i32 @SVN_IS_VALID_REVNUM(i8* %63)
  %65 = call i32 @SVN_ERR_ASSERT(i32 %64)
  %66 = load i32*, i32** %30, align 8
  %67 = icmp ne i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @SVN_ERR_ASSERT(i32 %68)
  %70 = load i8*, i8** %31, align 8
  %71 = call i32 @SVN_IS_VALID_REVNUM(i8* %70)
  %72 = call i32 @SVN_ERR_ASSERT(i32 %71)
  %73 = load i8*, i8** %34, align 8
  %74 = icmp ne i8* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @SVN_ERR_ASSERT(i32 %75)
  %77 = load i32*, i32** %23, align 8
  %78 = load i8*, i8** %25, align 8
  %79 = load i32*, i32** %44, align 8
  %80 = load i32*, i32** %44, align 8
  %81 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_10__** %45, i8** %46, i32* %77, i8* %78, i32* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %84 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_10__* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %24, align 8
  %89 = call i8* @svn_dirent_skip_ancestor(i32 %87, i8* %88)
  store i8* %89, i8** %46, align 8
  %90 = call i32 @blank_ibb(%struct.TYPE_11__* %47)
  %91 = load i8*, i8** %27, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  %93 = load i8*, i8** %28, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* @svn_wc__db_status_normal, align 4
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 19
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @svn_node_symlink, align 4
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 18
  store i32 %97, i32* %98, align 8
  %99 = load i8*, i8** %26, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store i8* %99, i8** %100, align 8
  %101 = load i8*, i8** %29, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 17
  store i8* %101, i8** %102, align 8
  %103 = load i32*, i32** %30, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 16
  store i32* %103, i32** %104, align 8
  %105 = load i8*, i8** %31, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 15
  store i8* %105, i8** %106, align 8
  %107 = load i32, i32* %32, align 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 14
  store i32 %107, i32* %108, align 8
  %109 = load i8*, i8** %33, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  store i8* %109, i8** %110, align 8
  %111 = load i8*, i8** %34, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  store i8* %111, i8** %112, align 8
  %113 = load i32*, i32** %35, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 13
  store i32* %113, i32** %114, align 8
  %115 = load i32*, i32** %39, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 12
  store i32* %115, i32** %116, align 8
  %117 = load i8*, i8** %37, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %22
  %120 = load i32, i32* @TRUE, align 4
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 11
  store i32 %120, i32* %121, align 8
  %122 = load i32*, i32** %38, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 10
  store i32* %122, i32** %123, align 8
  br label %124

124:                                              ; preds = %119, %22
  %125 = load i8*, i8** %40, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 9
  store i8* %125, i8** %126, align 8
  %127 = load i8*, i8** %41, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 8
  store i8* %127, i8** %128, align 8
  %129 = load i8*, i8** %36, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 7
  store i8* %129, i8** %130, align 8
  %131 = load i32*, i32** %42, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 6
  store i32* %131, i32** %132, align 8
  %133 = load i32*, i32** %43, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  store i32* %133, i32** %134, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %136 = load i8*, i8** %46, align 8
  %137 = load i32*, i32** %44, align 8
  %138 = call i32 @insert_base_node(%struct.TYPE_11__* %47, %struct.TYPE_10__* %135, i8* %136, i32* %137)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %140 = call i32 @SVN_WC__DB_WITH_TXN(i32 %138, %struct.TYPE_10__* %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %142 = load i8*, i8** %24, align 8
  %143 = load i32, i32* @svn_depth_infinity, align 4
  %144 = load i32*, i32** %44, align 8
  %145 = call i32 @flush_entries(%struct.TYPE_10__* %141, i8* %142, i32 %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  %147 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %147
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
