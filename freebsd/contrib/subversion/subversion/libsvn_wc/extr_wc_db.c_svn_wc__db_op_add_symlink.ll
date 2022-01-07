; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_add_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_add_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32*, i32*, i32, i32, i32, i32 }

@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@svn_node_symlink = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_add_symlink(i32* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @svn_dirent_is_absolute(i8* %18)
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @svn_dirent_split(i8** %16, i8** %17, i8* %25, i32* %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %13, i8** %14, i32* %28, i8* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @VERIFY_USABLE_WCROOT(i32* %34)
  %36 = call i32 @blank_iwb(%struct.TYPE_4__* %15)
  %37 = load i8*, i8** %14, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i8* @svn_relpath_join(i8* %37, i8* %38, i32* %39)
  store i8* %40, i8** %14, align 8
  %41 = load i32, i32* @svn_wc__db_status_normal, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @svn_node_symlink, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @relpath_depth(i8* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %6
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @apr_hash_count(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @TRUE, align 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i32 %55, i32* %56, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32* %57, i32** %58, align 8
  br label %59

59:                                               ; preds = %54, %50, %6
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32* %62, i32** %63, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @insert_working_node(%struct.TYPE_4__* %15, i32* %64, i8* %65, i32* %66)
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @SVN_WC__DB_WITH_TXN(i32 %67, i32* %68)
  %70 = load i32*, i32** %13, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* @svn_depth_empty, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @flush_entries(i32* %70, i8* %71, i32 %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %76
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32 @blank_iwb(%struct.TYPE_4__*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, i32*) #1

declare dso_local i32 @insert_working_node(%struct.TYPE_4__*, i32*, i8*, i32*) #1

declare dso_local i32 @flush_entries(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
