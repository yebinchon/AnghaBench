; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config__write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config__write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_config_t = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"\0A[%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s=%s\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_config__write(i32* %0, %struct.svn_config_t* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.svn_config_t*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.svn_config_t* %1, %struct.svn_config_t** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @svn_pool_create(i32* %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @svn_pool_create(i32* %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.svn_config_t*, %struct.svn_config_t** %5, align 8
  %19 = getelementptr inbounds %struct.svn_config_t, %struct.svn_config_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @apr_hash_first(i32* %17, i32 %20)
  store i32* %21, i32** %7, align 8
  br label %22

22:                                               ; preds = %66, %3
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %69

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = call i8* @apr_hash_this_val(i32* %26)
  %28 = bitcast i8* %27 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %11, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @svn_pool_clear(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %31, i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @apr_hash_first(i32* %38, i32 %41)
  store i32* %42, i32** %8, align 8
  br label %43

43:                                               ; preds = %62, %25
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i32*, i32** %8, align 8
  %48 = call i8* @apr_hash_this_val(i32* %47)
  %49 = bitcast i8* %48 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %12, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @svn_pool_clear(i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %52, i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %46
  %63 = load i32*, i32** %8, align 8
  %64 = call i32* @apr_hash_next(i32* %63)
  store i32* %64, i32** %8, align 8
  br label %43

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65
  %67 = load i32*, i32** %7, align 8
  %68 = call i32* @apr_hash_next(i32* %67)
  store i32* %68, i32** %7, align 8
  br label %22

69:                                               ; preds = %22
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @svn_pool_destroy(i32* %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @svn_pool_destroy(i32* %72)
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %74
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_printf(i32*, i32*, i8*, i32, ...) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
