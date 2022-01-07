; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_add_incomplete_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_add_incomplete_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insert_base_baton_t = type { i8*, i8*, i8*, i32*, i32*, i8*, i8*, i32, i32, i32, i32 }

@svn_wc__db_status_incomplete = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_base_add_incomplete_directory(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i8* %7, i8* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.insert_base_baton_t, align 8
  store i32* %0, i32** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @svn_dirent_is_absolute(i8* %28)
  %30 = call i32 @SVN_ERR_ASSERT(i32 %29)
  %31 = load i32, i32* %18, align 4
  %32 = call i32 @SVN_IS_VALID_REVNUM(i32 %31)
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %12
  %37 = load i8*, i8** %16, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %17, align 8
  %41 = icmp ne i8* %40, null
  br label %42

42:                                               ; preds = %39, %36, %12
  %43 = phi i1 [ false, %36 ], [ false, %12 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @SVN_ERR_ASSERT(i32 %44)
  %46 = load i32*, i32** %13, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load i32*, i32** %24, align 8
  %49 = load i32*, i32** %24, align 8
  %50 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %25, i8** %26, i32* %46, i8* %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %25, align 8
  %53 = call i32 @VERIFY_USABLE_WCROOT(i32* %52)
  %54 = call i32 @blank_ibb(%struct.insert_base_baton_t* %27)
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* @svn_wc__db_status_incomplete, align 4
  %60 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 10
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @svn_node_dir, align 4
  %62 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 9
  store i32 %61, i32* %62, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* %18, align 4
  %66 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %19, align 4
  %68 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 7
  store i32 %67, i32* %68, align 8
  %69 = load i8*, i8** %20, align 8
  %70 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 6
  store i8* %69, i8** %70, align 8
  %71 = load i8*, i8** %21, align 8
  %72 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 5
  store i8* %71, i8** %72, align 8
  %73 = load i32*, i32** %22, align 8
  %74 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 4
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** %23, align 8
  %76 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %27, i32 0, i32 3
  store i32* %75, i32** %76, align 8
  %77 = load i32*, i32** %25, align 8
  %78 = load i8*, i8** %26, align 8
  %79 = load i32*, i32** %24, align 8
  %80 = call i32 @insert_base_node(%struct.insert_base_baton_t* %27, i32* %77, i8* %78, i32* %79)
  %81 = load i32*, i32** %25, align 8
  %82 = call i32 @SVN_WC__DB_WITH_TXN(i32 %80, i32* %81)
  %83 = load i32*, i32** %25, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = load i32, i32* @svn_depth_empty, align 4
  %86 = load i32*, i32** %24, align 8
  %87 = call i32 @flush_entries(i32* %83, i8* %84, i32 %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %89
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32 @blank_ibb(%struct.insert_base_baton_t*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, i32*) #1

declare dso_local i32 @insert_base_node(%struct.insert_base_baton_t*, i32*, i8*, i32*) #1

declare dso_local i32 @flush_entries(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
