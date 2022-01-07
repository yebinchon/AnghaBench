; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_pool.c_svn_pool_create_allocator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_pool.c_svn_pool_create_allocator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@SVN_ALLOCATOR_RECOMMENDED_MAX_FREE = common dso_local global i32 0, align 4
@APR_THREAD_MUTEX_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_pool_create_allocator(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i64 @apr_allocator_create(i32** %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  %9 = call i32 @abort_on_pool_failure(i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @SVN_ALLOCATOR_RECOMMENDED_MAX_FREE, align 4
  %13 = call i32 @apr_allocator_max_free_set(i32* %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @svn_pool_create_ex(i32* null, i32* %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @apr_allocator_owner_set(i32* %16, i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %21)
  %23 = load i32*, i32** %3, align 8
  ret i32* %23
}

declare dso_local i64 @apr_allocator_create(i32**) #1

declare dso_local i32 @abort_on_pool_failure(i32) #1

declare dso_local i32 @apr_allocator_max_free_set(i32*, i32) #1

declare dso_local i32* @svn_pool_create_ex(i32*, i32*) #1

declare dso_local i32 @apr_allocator_owner_set(i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
