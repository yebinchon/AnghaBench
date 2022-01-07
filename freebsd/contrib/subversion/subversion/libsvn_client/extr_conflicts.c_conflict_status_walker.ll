; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_status_walker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_status_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.conflict_status_walker_baton = type { i32, i32, i32, i32* (i32, i32*, i32*)*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_client_conflict_option_unspecified = common dso_local global i64 0, align 8
@svn_client_conflict_option_postpone = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_3__*, i32*)* @conflict_status_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_status_walker(i8* %0, i8* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.conflict_status_walker_baton*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.conflict_status_walker_baton*
  store %struct.conflict_status_walker_baton* %16, %struct.conflict_status_walker_baton** %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %5, align 8
  br label %83

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %10, align 8
  %26 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @svn_client_conflict_get(i32** %11, i8* %24, i32 %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @svn_client_conflict_get_conflicted(i32* null, i32* null, i64* %13, i32* %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %10, align 8
  %38 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %37, i32 0, i32 3
  %39 = load i32* (i32, i32*, i32*)*, i32* (i32, i32*, i32*)** %38, align 8
  %40 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %10, align 8
  %41 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32* %39(i32 %42, i32* %43, i32* %44)
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %23
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %10, align 8
  %55 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @handle_tree_conflict_resolution_failure(i8* %52, i32* %53, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %62

59:                                               ; preds = %48
  %60 = load i32*, i32** %12, align 8
  %61 = call i32* @svn_error_trace(i32* %60)
  store i32* %61, i32** %5, align 8
  br label %83

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %23
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i32*, i32** %11, align 8
  %68 = call i64 @svn_client_conflict_tree_get_resolution(i32* %67)
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @TRUE, align 4
  %78 = load %struct.conflict_status_walker_baton*, %struct.conflict_status_walker_baton** %10, align 8
  %79 = getelementptr inbounds %struct.conflict_status_walker_baton, %struct.conflict_status_walker_baton* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %72, %66
  br label %81

81:                                               ; preds = %80, %63
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %5, align 8
  br label %83

83:                                               ; preds = %81, %59, %21
  %84 = load i32*, i32** %5, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_conflicted(i32*, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @handle_tree_conflict_resolution_failure(i8*, i32*, i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i64 @svn_client_conflict_tree_get_resolution(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
