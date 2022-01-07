; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_add_excluded_or_not_present_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_add_excluded_or_not_present_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32, i64 }

@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i8*, i8*, i32, i32, i64, i32*, i32*, i32*)* @add_excluded_or_not_present_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_excluded_or_not_present_node(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i64 %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_4__, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i64 %7, i64* %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @svn_dirent_is_absolute(i8* %28)
  %30 = call i32 @SVN_ERR_ASSERT(i32 %29)
  %31 = load i8*, i8** %14, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @SVN_ERR_ASSERT(i32 %33)
  %35 = load i8*, i8** %15, align 8
  %36 = load i32*, i32** %22, align 8
  %37 = call i32 @svn_uri_is_canonical(i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load i8*, i8** %16, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @SVN_ERR_ASSERT(i32 %41)
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @SVN_IS_VALID_REVNUM(i32 %43)
  %45 = call i32 @SVN_ERR_ASSERT(i32 %44)
  %46 = load i64, i64* %19, align 8
  %47 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %11
  %50 = load i64, i64* %19, align 8
  %51 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %19, align 8
  %55 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %53, %49, %11
  %58 = phi i1 [ true, %49 ], [ true, %11 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @SVN_ERR_ASSERT(i32 %59)
  %61 = load i8*, i8** %13, align 8
  %62 = load i32*, i32** %22, align 8
  %63 = call i32 @svn_dirent_split(i8** %26, i8** %27, i8* %61, i32* %62)
  %64 = load i32*, i32** %12, align 8
  %65 = load i8*, i8** %26, align 8
  %66 = load i32*, i32** %22, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %23, i8** %24, i32* %64, i8* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %23, align 8
  %71 = call i32 @VERIFY_USABLE_WCROOT(i32* %70)
  %72 = load i8*, i8** %24, align 8
  %73 = load i8*, i8** %27, align 8
  %74 = load i32*, i32** %22, align 8
  %75 = call i8* @svn_relpath_join(i8* %72, i8* %73, i32* %74)
  store i8* %75, i8** %24, align 8
  %76 = call i32 @blank_ibb(%struct.TYPE_4__* %25)
  %77 = load i8*, i8** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i8* %77, i8** %78, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = load i64, i64* %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 11
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* %18, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 10
  store i32 %83, i32* %84, align 4
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* %17, align 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 9
  store i32 %87, i32* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 8
  store i32* null, i32** %89, align 8
  %90 = load i32, i32* @svn_depth_unknown, align 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 7
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  store i32* null, i32** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  store i32* null, i32** %93, align 8
  %94 = load i32*, i32** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  store i32* %94, i32** %95, align 8
  %96 = load i32*, i32** %21, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32* %96, i32** %97, align 8
  %98 = load i32*, i32** %23, align 8
  %99 = load i8*, i8** %24, align 8
  %100 = load i32*, i32** %22, align 8
  %101 = call i32 @insert_base_node(%struct.TYPE_4__* %25, i32* %98, i8* %99, i32* %100)
  %102 = load i32*, i32** %23, align 8
  %103 = call i32 @SVN_WC__DB_WITH_TXN(i32 %101, i32* %102)
  %104 = load i32*, i32** %23, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* @svn_depth_infinity, align 4
  %107 = load i32*, i32** %22, align 8
  %108 = call i32 @flush_entries(i32* %104, i8* %105, i32 %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %110
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @svn_uri_is_canonical(i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @blank_ibb(%struct.TYPE_4__*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, i32*) #1

declare dso_local i32 @insert_base_node(%struct.TYPE_4__*, i32*, i8*, i32*) #1

declare dso_local i32 @flush_entries(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
