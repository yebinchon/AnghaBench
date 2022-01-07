; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_do_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_do_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32, i32*)* @do_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_close(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %19, i32** %4, align 8
  br label %92

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call %struct.TYPE_7__* @get_from_shared(i32 %23, i32 %26, i32* %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %86

31:                                               ; preds = %20
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @svn_wc__db_temp_get_all_access(i32 %34, i32* %35)
  store i32* %36, i32** %9, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @apr_hash_first(i32* %37, i32* %38)
  store i32* %39, i32** %10, align 8
  br label %40

40:                                               ; preds = %82, %31
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %85

43:                                               ; preds = %40
  %44 = load i32*, i32** %10, align 8
  %45 = call i8* @apr_hash_this_key(i32* %44)
  store i8* %45, i8** %11, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call %struct.TYPE_7__* @apr_hash_this_val(i32* %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %12, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %13, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = call i64 @IS_MISSING(%struct.TYPE_7__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @svn_wc__db_temp_clear_access(i32 %57, i8* %58, i32* %59)
  br label %82

61:                                               ; preds = %43
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @svn_dirent_is_ancestor(i8* %64, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i64 @strcmp(i8* %71, i8* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %61
  br label %82

76:                                               ; preds = %68
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @close_single(%struct.TYPE_7__* %77, i32 %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %82

82:                                               ; preds = %76, %75, %54
  %83 = load i32*, i32** %10, align 8
  %84 = call i32* @apr_hash_next(i32* %83)
  store i32* %84, i32** %10, align 8
  br label %40

85:                                               ; preds = %40
  br label %86

86:                                               ; preds = %85, %20
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @close_single(%struct.TYPE_7__* %87, i32 %88, i32* %89)
  %91 = call i32* @svn_error_trace(i32 %90)
  store i32* %91, i32** %4, align 8
  br label %92

92:                                               ; preds = %86, %18
  %93 = load i32*, i32** %4, align 8
  ret i32* %93
}

declare dso_local %struct.TYPE_7__* @get_from_shared(i32, i32, i32*) #1

declare dso_local i32* @svn_wc__db_temp_get_all_access(i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_7__* @apr_hash_this_val(i32*) #1

declare dso_local i64 @IS_MISSING(%struct.TYPE_7__*) #1

declare dso_local i32 @svn_wc__db_temp_clear_access(i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_is_ancestor(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @close_single(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
