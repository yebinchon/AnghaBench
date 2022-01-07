; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_close_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_close_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i64, i32*)* @close_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_single(%struct.TYPE_4__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %16, i32** %4, align 8
  br label %96

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @TRUE, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @svn_wc__db_wclock_owns_lock(i64* %8, i32* %20, i32 %23, i64 %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32* @svn_wc__db_wclock_release(i32* %36, i32 %39, i32* %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i64 @svn_wc__adm_area_exists(i32 %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32*, i32** %9, align 8
  store i32* %52, i32** %4, align 8
  br label %96

53:                                               ; preds = %44
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @svn_error_clear(i32* %54)
  br label %56

56:                                               ; preds = %53, %33
  br label %57

57:                                               ; preds = %56, %30
  br label %58

58:                                               ; preds = %57, %17
  %59 = load i64, i64* @TRUE, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @svn_wc__db_temp_close_access(i32* %64, i32 %67, %struct.TYPE_4__* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %58
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32* @svn_wc__db_temp_get_all_access(i32* %79, i32* %80)
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i64 @apr_hash_count(i32* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @svn_wc__db_close(i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %85, %76
  br label %94

94:                                               ; preds = %93, %58
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %95, i32** %4, align 8
  br label %96

96:                                               ; preds = %94, %51, %15
  %97 = load i32*, i32** %4, align 8
  ret i32* %97
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wclock_owns_lock(i64*, i32*, i32, i64, i32*) #1

declare dso_local i32* @svn_wc__db_wclock_release(i32*, i32, i32*) #1

declare dso_local i64 @svn_wc__adm_area_exists(i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @svn_wc__db_temp_close_access(i32*, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32* @svn_wc__db_temp_get_all_access(i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_wc__db_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
