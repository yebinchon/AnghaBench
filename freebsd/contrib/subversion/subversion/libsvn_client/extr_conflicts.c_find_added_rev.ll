; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_find_added_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_find_added_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.find_added_rev_baton = type { i32, i32, i32, i32*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 (i32, %struct.TYPE_8__*, i32*)* }
%struct.TYPE_8__ = type { i32 }

@svn_wc_notify_tree_conflict_details_progress = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i8*, i32*)* @find_added_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_added_rev(%struct.TYPE_9__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.find_added_rev_baton*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.find_added_rev_baton*
  store %struct.find_added_rev_baton* %10, %struct.find_added_rev_baton** %7, align 8
  %11 = load %struct.find_added_rev_baton*, %struct.find_added_rev_baton** %7, align 8
  %12 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %11, i32 0, i32 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %14, align 8
  %16 = icmp ne i32 (i32, %struct.TYPE_8__*, i32*)* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load %struct.find_added_rev_baton*, %struct.find_added_rev_baton** %7, align 8
  %19 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @svn_wc_notify_tree_conflict_details_progress, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_8__* @svn_wc_create_notify(i32 %20, i32 %21, i32* %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.find_added_rev_baton*, %struct.find_added_rev_baton** %7, align 8
  %30 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %29, i32 0, i32 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %32, align 8
  %34 = load %struct.find_added_rev_baton*, %struct.find_added_rev_baton** %7, align 8
  %35 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %34, i32 0, i32 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 %33(i32 %38, %struct.TYPE_8__* %39, i32* %40)
  br label %42

42:                                               ; preds = %17, %3
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load %struct.find_added_rev_baton*, %struct.find_added_rev_baton** %7, align 8
  %49 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %47
  %53 = load %struct.find_added_rev_baton*, %struct.find_added_rev_baton** %7, align 8
  %54 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32* @svn_relpath_skip_ancestor(i32* %55, i32 %58)
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %52, %47
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.find_added_rev_baton*, %struct.find_added_rev_baton** %7, align 8
  %66 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.find_added_rev_baton*, %struct.find_added_rev_baton** %7, align 8
  %68 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @apr_pstrdup(i32 %69, i32 %72)
  %74 = load %struct.find_added_rev_baton*, %struct.find_added_rev_baton** %7, align 8
  %75 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %61, %52
  br label %77

77:                                               ; preds = %76, %42
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %78
}

declare dso_local %struct.TYPE_8__* @svn_wc_create_notify(i32, i32, i32*) #1

declare dso_local i32* @svn_relpath_skip_ancestor(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
