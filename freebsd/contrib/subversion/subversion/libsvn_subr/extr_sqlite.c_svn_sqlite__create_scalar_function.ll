; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__create_scalar_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__create_scalar_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.function_wrapper_baton_t = type { i8*, i32 }

@SQLITE_ANY = common dso_local global i32 0, align 4
@SQLITE_DETERMINISTIC = common dso_local global i32 0, align 4
@wrapped_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_sqlite__create_scalar_function(%struct.TYPE_4__* %0, i8* %1, i32 %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.function_wrapper_baton_t*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.function_wrapper_baton_t* @apr_pcalloc(i32 %17, i32 16)
  store %struct.function_wrapper_baton_t* %18, %struct.function_wrapper_baton_t** %14, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.function_wrapper_baton_t*, %struct.function_wrapper_baton_t** %14, align 8
  %21 = getelementptr inbounds %struct.function_wrapper_baton_t, %struct.function_wrapper_baton_t* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load %struct.function_wrapper_baton_t*, %struct.function_wrapper_baton_t** %14, align 8
  %24 = getelementptr inbounds %struct.function_wrapper_baton_t, %struct.function_wrapper_baton_t* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @SQLITE_ANY, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i32, i32* @SQLITE_DETERMINISTIC, align 4
  %30 = load i32, i32* %13, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %28, %6
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.function_wrapper_baton_t*, %struct.function_wrapper_baton_t** %14, align 8
  %40 = load i32, i32* @wrapped_func, align 4
  %41 = call i32 @sqlite3_create_function(i32 %35, i8* %36, i32 %37, i32 %38, %struct.function_wrapper_baton_t* %39, i32 %40, i32* null, i32* null)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = call i32 @SQLITE_ERR(i32 %41, %struct.TYPE_4__* %42)
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %44
}

declare dso_local %struct.function_wrapper_baton_t* @apr_pcalloc(i32, i32) #1

declare dso_local i32 @SQLITE_ERR(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @sqlite3_create_function(i32, i8*, i32, i32, %struct.function_wrapper_baton_t*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
