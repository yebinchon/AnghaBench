; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32, i32, i32, i32 }

@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_add_file(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @svn_dirent_is_absolute(i8* %16)
  %18 = call i32 @SVN_ERR_ASSERT(i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @svn_dirent_split(i8** %14, i8** %15, i8* %19, i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %11, i8** %12, i32* %22, i8* %23, i32* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @VERIFY_USABLE_WCROOT(i32* %28)
  %30 = call i32 @blank_iwb(%struct.TYPE_4__* %13)
  %31 = load i8*, i8** %12, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i8* @svn_relpath_join(i8* %31, i8* %32, i32* %33)
  store i8* %34, i8** %12, align 8
  %35 = load i32, i32* @svn_wc__db_status_normal, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @svn_node_file, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @relpath_depth(i8* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %5
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @apr_hash_count(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @TRUE, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %48, %44, %5
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32* %54, i32** %55, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @insert_working_node(%struct.TYPE_4__* %13, i32* %56, i8* %57, i32* %58)
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @SVN_WC__DB_WITH_TXN(i32 %59, i32* %60)
  %62 = load i32*, i32** %11, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @svn_depth_empty, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @flush_entries(i32* %62, i8* %63, i32 %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %68
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
