; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_find_existing_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_find_existing_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* (i32)*, i32* }

@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_CLIENT_NO_VERSIONED_PARENT = common dso_local global i32 0, align 4
@SVN_ERR_RESERVED_FILENAME_SPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"'%s' ends in a reserved name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_3__*, i8*, i32*, i32*)* @find_existing_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_existing_parent(i8** %0, %struct.TYPE_3__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = call i32* @svn_wc_read_kind2(i64* %12, i32* %18, i8* %19, i32 %20, i32 %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32* %23)
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @svn_node_dir, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @apr_pstrdup(i32* %29, i8* %30)
  %32 = load i8**, i8*** %7, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %33, i32** %6, align 8
  br label %83

34:                                               ; preds = %5
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i64 @svn_dirent_is_root(i8* %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @SVN_ERR_CLIENT_NO_VERSIONED_PARENT, align 4
  %42 = call i32* @svn_error_create(i32 %41, i32* null, i32* null)
  store i32* %42, i32** %6, align 8
  br label %83

43:                                               ; preds = %34
  %44 = load i8*, i8** %9, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @svn_dirent_basename(i8* %44, i32* %45)
  %47 = load i32*, i32** %11, align 8
  %48 = call i64 @svn_wc_is_adm_dir(i32 %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32, i32* @SVN_ERR_RESERVED_FILENAME_SPECIFIED, align 4
  %52 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** %9, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @svn_dirent_local_style(i8* %53, i32* %54)
  %56 = call i32* @svn_error_createf(i32 %51, i32* null, i32 %52, i32 %55)
  store i32* %56, i32** %6, align 8
  br label %83

57:                                               ; preds = %43
  %58 = load i8*, i8** %9, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i8* @svn_dirent_dirname(i8* %58, i32* %59)
  store i8* %60, i8** %13, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32* (i32)*, i32* (i32)** %62, align 8
  %64 = icmp ne i32* (i32)* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32* (i32)*, i32* (i32)** %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32* %68(i32 %71)
  %73 = call i32 @SVN_ERR(i32* %72)
  br label %74

74:                                               ; preds = %65, %57
  %75 = load i8**, i8*** %7, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32* @find_existing_parent(i8** %75, %struct.TYPE_3__* %76, i8* %77, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32* %80)
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %74, %50, %40, %28
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc_read_kind2(i64*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i64 @svn_dirent_is_root(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i64 @svn_wc_is_adm_dir(i32, i32*) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
