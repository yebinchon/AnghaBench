; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_svn_client_revprop_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_svn_client_revprop_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_revprop_get(i8* %0, i32** %1, i8* %2, i32* %3, i32* %4, %struct.TYPE_4__* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = call i32* @svn_pool_create(i32* %18)
  store i32* %19, i32** %16, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %22 = load i32*, i32** %16, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = call i32 @svn_client_open_ra_session2(i32** %15, i8* %20, i32* null, %struct.TYPE_4__* %21, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %15, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = call i32 @svn_client__get_revision_number(i32* %26, i32* null, i32 %29, i32* null, i32* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %15, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32**, i32*** %9, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i32* @svn_ra_rev_prop(i32* %35, i32 %37, i8* %38, i32** %39, i32* %40)
  store i32* %41, i32** %17, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @svn_pool_destroy(i32* %42)
  %44 = load i32*, i32** %17, align 8
  %45 = call i32* @svn_error_trace(i32* %44)
  ret i32* %45
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_open_ra_session2(i32**, i8*, i32*, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @svn_client__get_revision_number(i32*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_ra_rev_prop(i32*, i32, i8*, i32**, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
