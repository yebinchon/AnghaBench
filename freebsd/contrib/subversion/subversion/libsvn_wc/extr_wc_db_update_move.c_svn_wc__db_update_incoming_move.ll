; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_update_incoming_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_update_incoming_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_13__ = type { i32 }

@svn_wc_notify_update_completed = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_update_incoming_move(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 (i8*, %struct.TYPE_12__*, i32*)* %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32 (i8*, %struct.TYPE_12__*, i32*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32 (i8*, %struct.TYPE_12__*, i32*)* %8, i32 (i8*, %struct.TYPE_12__*, i32*)** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i32*, i32** %22, align 8
  %32 = load i32*, i32** %22, align 8
  %33 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_13__** %23, i8** %26, i32* %29, i8* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %36 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_13__* %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = call i8* @svn_dirent_skip_ancestor(i32 %39, i8* %40)
  store i8* %41, i8** %27, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %44 = load i8*, i8** %26, align 8
  %45 = load i8*, i8** %27, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i8*, i8** %19, align 8
  %51 = load i32*, i32** %22, align 8
  %52 = call i32 @update_incoming_move(i32* %24, i32* %25, i32* %42, %struct.TYPE_13__* %43, i8* %44, i8* %45, i32 %46, i32 %47, i32 %48, i32 %49, i8* %50, i32* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %54 = call i32 @SVN_WC__DB_WITH_TXN(i32 %52, %struct.TYPE_13__* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %56 = load i32, i32* %24, align 4
  %57 = load i32, i32* %25, align 4
  %58 = load i32 (i8*, %struct.TYPE_12__*, i32*)*, i32 (i8*, %struct.TYPE_12__*, i32*)** %20, align 8
  %59 = load i8*, i8** %21, align 8
  %60 = load i32*, i32** %22, align 8
  %61 = call i32 @svn_wc__db_update_move_list_notify(%struct.TYPE_13__* %55, i32 %56, i32 %57, i32 (i8*, %struct.TYPE_12__*, i32*)* %58, i8* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32 (i8*, %struct.TYPE_12__*, i32*)*, i32 (i8*, %struct.TYPE_12__*, i32*)** %20, align 8
  %64 = icmp ne i32 (i8*, %struct.TYPE_12__*, i32*)* %63, null
  br i1 %64, label %65, label %92

65:                                               ; preds = %11
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %26, align 8
  %70 = load i32*, i32** %22, align 8
  %71 = call i32 @svn_dirent_join(i32 %68, i8* %69, i32* %70)
  %72 = load i32, i32* @svn_wc_notify_update_completed, align 4
  %73 = load i32*, i32** %22, align 8
  %74 = call %struct.TYPE_12__* @svn_wc_create_notify(i32 %71, i32 %72, i32* %73)
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %28, align 8
  %75 = load i32, i32* @svn_node_none, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** @svn_wc_notify_state_inapplicable, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @svn_wc_notify_state_inapplicable, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %25, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32 (i8*, %struct.TYPE_12__*, i32*)*, i32 (i8*, %struct.TYPE_12__*, i32*)** %20, align 8
  %88 = load i8*, i8** %21, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %90 = load i32*, i32** %22, align 8
  %91 = call i32 %87(i8* %88, %struct.TYPE_12__* %89, i32* %90)
  br label %92

92:                                               ; preds = %65, %11
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %93
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_13__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_13__*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @update_incoming_move(i32*, i32*, i32*, %struct.TYPE_13__*, i8*, i8*, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_update_move_list_notify(%struct.TYPE_13__*, i32, i32, i32 (i8*, %struct.TYPE_12__*, i32*)*, i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_wc_create_notify(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
