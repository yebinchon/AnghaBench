; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_prop_mark_resolved.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_svn_wc__conflict_prop_mark_resolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_notify_resolved = common dso_local global i32 0, align 4
@svn_wc_notify_resolved_prop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__conflict_prop_mark_resolved(%struct.TYPE_8__* %0, i8* %1, i8* %2, i32 %3, i32* %4, i32 (i8*, %struct.TYPE_7__*, i32*)* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32 (i8*, %struct.TYPE_7__*, i32*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 (i8*, %struct.TYPE_7__*, i32*)* %5, i32 (i8*, %struct.TYPE_7__*, i32*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = call i32 @svn_wc__db_read_conflict(i32** %19, i32* null, i32* null, i32 %23, i8* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %19, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %8
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %9, align 8
  br label %80

33:                                               ; preds = %8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @resolve_prop_conflict_on_node(i64* %18, i32 %36, i8* %37, i32* %38, i8* %39, i32 %40, i32* null, i32* %41, i32* null, i32* null, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i64, i64* %18, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %33
  %48 = load i32 (i8*, %struct.TYPE_7__*, i32*)*, i32 (i8*, %struct.TYPE_7__*, i32*)** %15, align 8
  %49 = icmp ne i32 (i8*, %struct.TYPE_7__*, i32*)* %48, null
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = load i8*, i8** %12, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53, %50
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* @svn_wc_notify_resolved, align 4
  %62 = load i32*, i32** %17, align 8
  %63 = call %struct.TYPE_7__* @svn_wc_create_notify(i8* %60, i32 %61, i32* %62)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %20, align 8
  br label %72

64:                                               ; preds = %53
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* @svn_wc_notify_resolved_prop, align 4
  %67 = load i32*, i32** %17, align 8
  %68 = call %struct.TYPE_7__* @svn_wc_create_notify(i8* %65, i32 %66, i32* %67)
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %20, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %64, %59
  %73 = load i32 (i8*, %struct.TYPE_7__*, i32*)*, i32 (i8*, %struct.TYPE_7__*, i32*)** %15, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 %73(i8* %74, %struct.TYPE_7__* %75, i32* %76)
  br label %78

78:                                               ; preds = %72, %47, %33
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %79, i32** %9, align 8
  br label %80

80:                                               ; preds = %78, %31
  %81 = load i32*, i32** %9, align 8
  ret i32* %81
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_conflict(i32**, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @resolve_prop_conflict_on_node(i64*, i32, i8*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
