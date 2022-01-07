; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_wrapped_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_wrapped_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_wrapper_baton_t = type { i32, i32* (%struct.TYPE_3__*, i32, i8*, i32)* }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @wrapped_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrapped_func(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.function_wrapper_baton_t*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.function_wrapper_baton_t* @sqlite3_user_data(i32* %12)
  store %struct.function_wrapper_baton_t* %13, %struct.function_wrapper_baton_t** %7, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = bitcast i32** %14 to i8*
  store i8* %15, i8** %10, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32* %16, i32** %17, align 8
  %18 = load %struct.function_wrapper_baton_t*, %struct.function_wrapper_baton_t** %7, align 8
  %19 = getelementptr inbounds %struct.function_wrapper_baton_t, %struct.function_wrapper_baton_t* %18, i32 0, i32 1
  %20 = load i32* (%struct.TYPE_3__*, i32, i8*, i32)*, i32* (%struct.TYPE_3__*, i32, i8*, i32)** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.function_wrapper_baton_t*, %struct.function_wrapper_baton_t** %7, align 8
  %24 = getelementptr inbounds %struct.function_wrapper_baton_t, %struct.function_wrapper_baton_t* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32* %20(%struct.TYPE_3__* %8, i32 %21, i8* %22, i32 %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %33 = call i32 @svn_err_best_message(i32* %31, i8* %32, i32 256)
  %34 = call i32 @sqlite3_result_error(i32* %30, i32 %33, i32 -1)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @svn_error_clear(i32* %35)
  br label %37

37:                                               ; preds = %29, %3
  ret void
}

declare dso_local %struct.function_wrapper_baton_t* @sqlite3_user_data(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i32, i32) #1

declare dso_local i32 @svn_err_best_message(i32*, i8*, i32) #1

declare dso_local i32 @svn_error_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
