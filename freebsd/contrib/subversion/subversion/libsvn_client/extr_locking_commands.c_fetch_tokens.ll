; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_locking_commands.c_fetch_tokens.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_locking_commands.c_fetch_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_ERR_CLIENT_MISSING_LOCK_TOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"'%s' is not locked\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @fetch_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_tokens(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32* @svn_pool_create(i32* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @apr_hash_first(i32* %14, i32* %15)
  store i32* %16, i32** %8, align 8
  br label %17

17:                                               ; preds = %46, %3
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = call i8* @apr_hash_this_key(i32* %21)
  store i8* %22, i8** %10, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @svn_pool_clear(i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @svn_ra_get_lock(i32* %25, %struct.TYPE_3__** %11, i8* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @SVN_ERR_CLIENT_MISSING_LOCK_TOKEN, align 4
  %34 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %10, align 8
  %36 = call i32* @svn_error_createf(i32 %33, i32* null, i32 %34, i8* %35)
  store i32* %36, i32** %4, align 8
  br label %53

37:                                               ; preds = %20
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @apr_pstrdup(i32* %40, i32 %43)
  %45 = call i32 @svn_hash_sets(i32* %38, i8* %39, i32 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @apr_hash_next(i32* %47)
  store i32* %48, i32** %8, align 8
  br label %17

49:                                               ; preds = %17
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @svn_pool_destroy(i32* %50)
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %4, align 8
  br label %53

53:                                               ; preds = %49, %32
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_lock(i32*, %struct.TYPE_3__**, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
