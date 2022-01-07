; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@SVN_PROP_BOOLEAN_TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i64, %struct.TYPE_5__*, i32*)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file(i8* %0, i32* %1, i32* %2, i64 %3, %struct.TYPE_5__* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @svn_io_check_special_path(i8* %18, i32* %15, i64* %16, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i64, i64* %16, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %6
  store i8* null, i8** %14, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i32* @apr_hash_make(i32* %25)
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %29 = load i32, i32* @SVN_PROP_BOOLEAN_TRUE, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @svn_string_create(i32 %29, i32* %30)
  %32 = call i32 @svn_hash_sets(i32* %27, i32 %28, i32 %31)
  br label %60

33:                                               ; preds = %6
  store i32* null, i32** %17, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @svn_dirent_dirname(i8* %40, i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @svn_client__get_all_auto_props(i32** %17, i32 %42, %struct.TYPE_5__* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  br label %50

48:                                               ; preds = %36
  %49 = load i32*, i32** %9, align 8
  store i32* %49, i32** %17, align 8
  br label %50

50:                                               ; preds = %48, %39
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i8*, i8** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @svn_client__get_paths_auto_props(i32** %13, i8** %14, i8* %52, i32* %53, i32* %54, %struct.TYPE_5__* %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %51, %24
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @svn_wc_add_from_disk3(i32 %63, i8* %64, i32* %65, i32 %66, i32 %69, i32 %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %76
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_special_path(i8*, i32*, i64*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_string_create(i32, i32*) #1

declare dso_local i32 @svn_client__get_all_auto_props(i32**, i32, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_client__get_paths_auto_props(i32**, i8**, i8*, i32*, i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @svn_wc_add_from_disk3(i32, i8*, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
