; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_mark_file_edited.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_mark_file_edited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i8*, i32, %struct.TYPE_3__*, i64, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.file_baton*, i32*)* @mark_file_edited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mark_file_edited(%struct.file_baton* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.file_baton*, align 8
  %5 = alloca i32*, align 8
  store %struct.file_baton* %0, %struct.file_baton** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %7 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %6, i32 0, i32 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %11, i32** %3, align 8
  br label %82

12:                                               ; preds = %2
  %13 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %14 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @mark_directory_edited(i32 %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i8*, i8** @TRUE, align 8
  %20 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %21 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %20, i32 0, i32 8
  store i8* %19, i8** %21, align 8
  %22 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %23 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %80

26:                                               ; preds = %12
  %27 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %28 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %31 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %34 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %37 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %40 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %43 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @svn_node_file, align 4
  %46 = load i32, i32* @svn_node_file, align 4
  %47 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %48 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @complete_conflict(i64 %29, %struct.TYPE_3__* %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %45, i32 %46, i32* null, i32 %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %54 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %59 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %62 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @svn_wc__db_op_mark_conflict(i32 %57, i32 %60, i64 %63, i32* null, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %68 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %71 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @svn_node_file, align 4
  %74 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @do_notification(%struct.TYPE_3__* %69, i32 %72, i32 %73, i32 %74, i32* %75)
  %77 = load i8*, i8** @TRUE, align 8
  %78 = load %struct.file_baton*, %struct.file_baton** %4, align 8
  %79 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %26, %12
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %3, align 8
  br label %82

82:                                               ; preds = %80, %10
  %83 = load i32*, i32** %3, align 8
  ret i32* %83
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_directory_edited(i32, i32*) #1

declare dso_local i32 @complete_conflict(i64, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_conflict(i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @do_notification(%struct.TYPE_3__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
