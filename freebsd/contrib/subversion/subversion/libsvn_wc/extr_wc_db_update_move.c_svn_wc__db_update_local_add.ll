; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_update_local_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_update_local_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_13__ = type { i32 }

@svn_wc_notify_update_completed = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_update_local_add(i32* %0, i8* %1, i32 %2, i8* %3, i32 (i8*, %struct.TYPE_12__*, i32*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, %struct.TYPE_12__*, i32*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 (i8*, %struct.TYPE_12__*, i32*)* %4, i32 (i8*, %struct.TYPE_12__*, i32*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_13__** %15, i8** %17, i32* %19, i8* %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %26 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_13__* %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @update_local_add(i32* %16, i32* %27, %struct.TYPE_13__* %28, i8* %29, i32 %30, i8* %31, i32* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %35 = call i32 @SVN_WC__DB_WITH_TXN(i32 %33, %struct.TYPE_13__* %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32 (i8*, %struct.TYPE_12__*, i32*)*, i32 (i8*, %struct.TYPE_12__*, i32*)** %12, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @svn_wc__db_update_move_list_notify(%struct.TYPE_13__* %36, i32 %37, i32 %38, i32 (i8*, %struct.TYPE_12__*, i32*)* %39, i8* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32 (i8*, %struct.TYPE_12__*, i32*)*, i32 (i8*, %struct.TYPE_12__*, i32*)** %12, align 8
  %45 = icmp ne i32 (i8*, %struct.TYPE_12__*, i32*)* %44, null
  br i1 %45, label %46, label %73

46:                                               ; preds = %7
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %17, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @svn_dirent_join(i32 %49, i8* %50, i32* %51)
  %53 = load i32, i32* @svn_wc_notify_update_completed, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = call %struct.TYPE_12__* @svn_wc_create_notify(i32 %52, i32 %53, i32* %54)
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %18, align 8
  %56 = load i32, i32* @svn_node_none, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @svn_wc_notify_state_inapplicable, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @svn_wc_notify_state_inapplicable, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32 (i8*, %struct.TYPE_12__*, i32*)*, i32 (i8*, %struct.TYPE_12__*, i32*)** %12, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 %68(i8* %69, %struct.TYPE_12__* %70, i32* %71)
  br label %73

73:                                               ; preds = %46, %7
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %74
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_13__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_13__*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @update_local_add(i32*, i32*, %struct.TYPE_13__*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_update_move_list_notify(%struct.TYPE_13__*, i32, i32, i32 (i8*, %struct.TYPE_12__*, i32*)*, i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_wc_create_notify(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
