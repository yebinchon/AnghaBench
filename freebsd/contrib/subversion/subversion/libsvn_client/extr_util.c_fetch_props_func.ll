; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_util.c_fetch_props_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_util.c_fetch_props_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shim_callbacks_baton = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i8*, i32, i32*, i32*)* @fetch_props_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_props_func(i32** %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.shim_callbacks_baton*, align 8
  %15 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.shim_callbacks_baton*
  store %struct.shim_callbacks_baton* %17, %struct.shim_callbacks_baton** %14, align 8
  %18 = load %struct.shim_callbacks_baton*, %struct.shim_callbacks_baton** %14, align 8
  %19 = getelementptr inbounds %struct.shim_callbacks_baton, %struct.shim_callbacks_baton* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i8* @svn_hash_gets(i32 %20, i8* %21)
  store i8* %22, i8** %15, align 8
  %23 = load i8*, i8** %15, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %6
  %26 = load i32*, i32** %12, align 8
  %27 = call i32* @apr_hash_make(i32* %26)
  %28 = load i32**, i32*** %8, align 8
  store i32* %27, i32** %28, align 8
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %29, i32** %7, align 8
  br label %49

30:                                               ; preds = %6
  %31 = load i32**, i32*** %8, align 8
  %32 = load %struct.shim_callbacks_baton*, %struct.shim_callbacks_baton** %14, align 8
  %33 = getelementptr inbounds %struct.shim_callbacks_baton, %struct.shim_callbacks_baton* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @svn_wc_get_pristine_props(i32** %31, i32 %34, i8* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32**, i32*** %8, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %30
  %44 = load i32*, i32** %12, align 8
  %45 = call i32* @apr_hash_make(i32* %44)
  %46 = load i32**, i32*** %8, align 8
  store i32* %45, i32** %46, align 8
  br label %47

47:                                               ; preds = %43, %30
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %48, i32** %7, align 8
  br label %49

49:                                               ; preds = %47, %25
  %50 = load i32*, i32** %7, align 8
  ret i32* %50
}

declare dso_local i8* @svn_hash_gets(i32, i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_get_pristine_props(i32**, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
