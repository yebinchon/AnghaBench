; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_get_incoming_old_repos_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_get_incoming_old_repos_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_get_incoming_old_repos_location(i8** %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %6
  %16 = load i32*, i32** %10, align 8
  %17 = call %struct.TYPE_4__* @get_conflict_desc2_t(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32*, i32** %10, align 8
  %23 = call %struct.TYPE_4__* @get_conflict_desc2_t(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8**, i8*** %7, align 8
  store i8* %27, i8** %28, align 8
  br label %31

29:                                               ; preds = %15
  %30 = load i8**, i8*** %7, align 8
  store i8* null, i8** %30, align 8
  br label %31

31:                                               ; preds = %29, %21
  br label %32

32:                                               ; preds = %31, %6
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = call %struct.TYPE_4__* @get_conflict_desc2_t(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32*, i32** %10, align 8
  %43 = call %struct.TYPE_4__* @get_conflict_desc2_t(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  br label %52

49:                                               ; preds = %35
  %50 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i32*, i32** %10, align 8
  %58 = call %struct.TYPE_4__* @get_conflict_desc2_t(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = icmp ne %struct.TYPE_3__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32*, i32** %10, align 8
  %64 = call %struct.TYPE_4__* @get_conflict_desc2_t(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %73

70:                                               ; preds = %56
  %71 = load i32, i32* @svn_node_none, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %62
  br label %74

74:                                               ; preds = %73, %53
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %75
}

declare dso_local %struct.TYPE_4__* @get_conflict_desc2_t(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
