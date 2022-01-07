; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_lock_many_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_lock_many_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_many_baton_t = type { i32, i32 }
%struct.lock_result_t = type { i32, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i32*)* @lock_many_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lock_many_cb(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.lock_many_baton_t*, align 8
  %12 = alloca %struct.lock_result_t*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.lock_many_baton_t*
  store %struct.lock_many_baton_t* %14, %struct.lock_many_baton_t** %11, align 8
  %15 = load %struct.lock_many_baton_t*, %struct.lock_many_baton_t** %11, align 8
  %16 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.lock_result_t* @apr_palloc(i32 %17, i32 16)
  store %struct.lock_result_t* %18, %struct.lock_result_t** %12, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.lock_result_t*, %struct.lock_result_t** %12, align 8
  %21 = getelementptr inbounds %struct.lock_result_t, %struct.lock_result_t* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @svn_error_dup(i32* %22)
  %24 = load %struct.lock_result_t*, %struct.lock_result_t** %12, align 8
  %25 = getelementptr inbounds %struct.lock_result_t, %struct.lock_result_t* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.lock_many_baton_t*, %struct.lock_many_baton_t** %11, align 8
  %27 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lock_many_baton_t*, %struct.lock_many_baton_t** %11, align 8
  %30 = getelementptr inbounds %struct.lock_many_baton_t, %struct.lock_many_baton_t* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @apr_pstrdup(i32 %31, i8* %32)
  %34 = load %struct.lock_result_t*, %struct.lock_result_t** %12, align 8
  %35 = call i32 @svn_hash_sets(i32 %28, i32 %33, %struct.lock_result_t* %34)
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %36
}

declare dso_local %struct.lock_result_t* @apr_palloc(i32, i32) #1

declare dso_local i32 @svn_error_dup(i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, %struct.lock_result_t*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
