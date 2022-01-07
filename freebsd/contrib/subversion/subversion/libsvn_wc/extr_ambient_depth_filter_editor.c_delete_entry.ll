; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_delete_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i64, i32, i64, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* (i8*, i32, i32, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i8*, i32*)* @delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delete_entry(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dir_baton*, align 8
  %11 = alloca %struct.edit_baton*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.dir_baton*
  store %struct.dir_baton* %16, %struct.dir_baton** %10, align 8
  %17 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %18 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %17, i32 0, i32 3
  %19 = load %struct.edit_baton*, %struct.edit_baton** %18, align 8
  store %struct.edit_baton* %19, %struct.edit_baton** %11, align 8
  %20 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %21 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %25, i32** %5, align 8
  br label %77

26:                                               ; preds = %4
  %27 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %28 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @svn_depth_immediates, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %26
  %33 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %34 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i8* @svn_dirent_join(i32 %35, i8* %36, i32* %37)
  store i8* %38, i8** %14, align 8
  %39 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %40 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @ambient_read_info(i64* %13, i64* %12, i32* null, i32 %41, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @svn_node_unknown, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %32
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %53, %49, %32
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %5, align 8
  br label %77

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %26
  %65 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %66 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32* (i8*, i32, i32, i32*)*, i32* (i8*, i32, i32, i32*)** %68, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %73 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32* %69(i8* %70, i32 %71, i32 %74, i32* %75)
  store i32* %76, i32** %5, align 8
  br label %77

77:                                               ; preds = %64, %61, %24
  %78 = load i32*, i32** %5, align 8
  ret i32* %78
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ambient_read_info(i64*, i64*, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
