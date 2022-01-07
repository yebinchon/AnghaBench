; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i8*, i32*)* @ra_svn_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_log(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  store i32* null, i32** %25, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = load i32*, i32** %13, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i32*, i32** %24, align 8
  %33 = call i32* @reparent_path_array(i32* %30, i32* %31, i32* %32)
  store i32* %33, i32** %14, align 8
  br label %39

34:                                               ; preds = %12
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %24, align 8
  %37 = call i32 @ensure_exact_server_parent(i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32*, i32** %13, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32*, i32** %21, align 8
  %49 = load i32, i32* %22, align 4
  %50 = load i8*, i8** %23, align 8
  %51 = load i32*, i32** %24, align 8
  %52 = call i32 @perform_ra_svn_log(i32** %25, i32* %40, i32* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32* %48, i32 %49, i8* %50, i32* %51)
  %53 = call i32* @svn_error_trace(i32 %52)
  store i32* %53, i32** %26, align 8
  %54 = load i32*, i32** %25, align 8
  %55 = load i32*, i32** %26, align 8
  %56 = call i32 @svn_error_compose_create(i32* %54, i32* %55)
  %57 = call i32* @svn_error_trace(i32 %56)
  ret i32* %57
}

declare dso_local i32* @reparent_path_array(i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_exact_server_parent(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @perform_ra_svn_log(i32**, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
