; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_commit4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_commit4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.downgrade_commit_copied_notify_baton*, i32 }
%struct.downgrade_commit_copied_notify_baton = type { %struct.downgrade_commit_copied_notify_baton*, i32 }
%struct.capture_baton_t = type { i32*, i32** }

@downgrade_commit_copied_notify_func = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@capture_commit_info = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_commit4(i32** %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, %struct.TYPE_4__* %7, i32* %8) #0 {
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.capture_baton_t, align 8
  %20 = alloca %struct.downgrade_commit_copied_notify_baton, align 8
  %21 = alloca i32*, align 8
  store i32** %0, i32*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.downgrade_commit_copied_notify_baton, %struct.downgrade_commit_copied_notify_baton* %20, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.downgrade_commit_copied_notify_baton*, %struct.downgrade_commit_copied_notify_baton** %27, align 8
  %29 = getelementptr inbounds %struct.downgrade_commit_copied_notify_baton, %struct.downgrade_commit_copied_notify_baton* %20, i32 0, i32 0
  store %struct.downgrade_commit_copied_notify_baton* %28, %struct.downgrade_commit_copied_notify_baton** %29, align 8
  %30 = load i32**, i32*** %10, align 8
  store i32* null, i32** %30, align 8
  %31 = load i32**, i32*** %10, align 8
  %32 = getelementptr inbounds %struct.capture_baton_t, %struct.capture_baton_t* %19, i32 0, i32 1
  store i32** %31, i32*** %32, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = getelementptr inbounds %struct.capture_baton_t, %struct.capture_baton_t* %19, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %9
  %40 = load i32, i32* @downgrade_commit_copied_notify_func, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.downgrade_commit_copied_notify_baton* %20, %struct.downgrade_commit_copied_notify_baton** %44, align 8
  br label %45

45:                                               ; preds = %39, %9
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* @capture_commit_info, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %55 = load i32*, i32** %18, align 8
  %56 = call i32* @svn_client_commit5(i32* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32* %51, i32* %52, i32 %53, %struct.capture_baton_t* %19, %struct.TYPE_4__* %54, i32* %55)
  store i32* %56, i32** %21, align 8
  %57 = getelementptr inbounds %struct.downgrade_commit_copied_notify_baton, %struct.downgrade_commit_copied_notify_baton* %20, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds %struct.downgrade_commit_copied_notify_baton, %struct.downgrade_commit_copied_notify_baton* %20, i32 0, i32 0
  %62 = load %struct.downgrade_commit_copied_notify_baton*, %struct.downgrade_commit_copied_notify_baton** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store %struct.downgrade_commit_copied_notify_baton* %62, %struct.downgrade_commit_copied_notify_baton** %64, align 8
  %65 = load i32*, i32** %21, align 8
  %66 = call i32 @SVN_ERR(i32* %65)
  %67 = load i32**, i32*** %10, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %45
  %71 = load i32*, i32** %18, align 8
  %72 = call i32* @svn_create_commit_info(i32* %71)
  %73 = load i32**, i32*** %10, align 8
  store i32* %72, i32** %73, align 8
  br label %74

74:                                               ; preds = %70, %45
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %75
}

declare dso_local i32* @svn_client_commit5(i32*, i32, i32, i32, i32, i32*, i32*, i32, %struct.capture_baton_t*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_create_commit_info(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
