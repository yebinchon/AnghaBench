; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_resolve_conflict_interactively.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_resolve_conflict_interactively.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@svn_wc_conflict_action_edit = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_edited = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i64*, i64*, i64*, i64*, i64*, i32*, i8*, i32*, i8*, i32*, i32*, i32*, i32*, i32*)* @resolve_conflict_interactively to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_conflict_interactively(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i32* %6, i8* %7, i32* %8, i8* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14) #0 {
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_3__*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  store i64* %0, i64** %16, align 8
  store i64* %1, i64** %17, align 8
  store i64* %2, i64** %18, align 8
  store i64* %3, i64** %19, align 8
  store i64* %4, i64** %20, align 8
  store i64* %5, i64** %21, align 8
  store i32* %6, i32** %22, align 8
  store i8* %7, i8** %23, align 8
  store i32* %8, i32** %24, align 8
  store i8* %9, i8** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32* %11, i32** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  store i32* %14, i32** %30, align 8
  %35 = load i32*, i32** %22, align 8
  %36 = load i32*, i32** %30, align 8
  %37 = load i32*, i32** %30, align 8
  %38 = call i32 @svn_client_conflict_get_conflicted(i64* %31, %struct.TYPE_3__** %32, i64* %33, i32* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i64*, i64** %20, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %15
  %44 = load i32*, i32** %27, align 8
  %45 = load i32*, i32** %30, align 8
  %46 = call i32 @svn_cl__print_conflict_stats(i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i64, i64* @TRUE, align 8
  %49 = load i64*, i64** %20, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %15
  %51 = load i64, i64* @FALSE, align 8
  %52 = load i64*, i64** %16, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* %31, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %50
  %56 = load i32*, i32** %22, align 8
  %57 = call i64 @svn_client_conflict_get_incoming_change(i32* %56)
  %58 = load i64, i64* @svn_wc_conflict_action_edit, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load i32*, i32** %22, align 8
  %62 = call i64 @svn_client_conflict_get_local_change(i32* %61)
  %63 = load i64, i64* @svn_wc_conflict_reason_edited, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load i64*, i64** %16, align 8
  %67 = load i64*, i64** %17, align 8
  %68 = load i64*, i64** %18, align 8
  %69 = load i64*, i64** %21, align 8
  %70 = load i32*, i32** %22, align 8
  %71 = load i8*, i8** %25, align 8
  %72 = load i32*, i32** %26, align 8
  %73 = load i8*, i8** %23, align 8
  %74 = load i32*, i32** %24, align 8
  %75 = load i32*, i32** %27, align 8
  %76 = load i32*, i32** %28, align 8
  %77 = load i32*, i32** %30, align 8
  %78 = call i32 @handle_text_conflict(i64* %66, i64* %67, i64* %68, i64* %69, i32* %70, i8* %71, i32* %72, i8* %73, i32* %74, i32* %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %65, %60, %55, %50
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load i64*, i64** %16, align 8
  %87 = load i64*, i64** %17, align 8
  %88 = load i64*, i64** %18, align 8
  %89 = load i8*, i8** %25, align 8
  %90 = load i32*, i32** %26, align 8
  %91 = load i8*, i8** %23, align 8
  %92 = load i32*, i32** %24, align 8
  %93 = load i32*, i32** %22, align 8
  %94 = load i32*, i32** %27, align 8
  %95 = load i32*, i32** %28, align 8
  %96 = load i32*, i32** %29, align 8
  %97 = load i32*, i32** %30, align 8
  %98 = call i32 @handle_prop_conflicts(i64* %86, i64* %87, i64* %88, i32** %34, i8* %89, i32* %90, i8* %91, i32* %92, i32* %93, i32* %94, i32* %95, i32* %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %100

100:                                              ; preds = %85, %80
  %101 = load i64, i64* %33, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load i64*, i64** %16, align 8
  %105 = load i64*, i64** %17, align 8
  %106 = load i64*, i64** %18, align 8
  %107 = load i64*, i64** %21, align 8
  %108 = load i32*, i32** %22, align 8
  %109 = load i8*, i8** %25, align 8
  %110 = load i32*, i32** %26, align 8
  %111 = load i32*, i32** %27, align 8
  %112 = load i32*, i32** %28, align 8
  %113 = load i32*, i32** %30, align 8
  %114 = call i32 @handle_tree_conflict(i64* %104, i64* %105, i64* %106, i64* %107, i32* %108, i8* %109, i32* %110, i32* %111, i32* %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  br label %116

116:                                              ; preds = %103, %100
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %117
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_conflicted(i64*, %struct.TYPE_3__**, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_cl__print_conflict_stats(i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_incoming_change(i32*) #1

declare dso_local i64 @svn_client_conflict_get_local_change(i32*) #1

declare dso_local i32 @handle_text_conflict(i64*, i64*, i64*, i64*, i32*, i8*, i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @handle_prop_conflicts(i64*, i64*, i64*, i32**, i8*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @handle_tree_conflict(i64*, i64*, i64*, i64*, i32*, i8*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
