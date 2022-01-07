; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.old_status_func_cb_baton = type { i8*, i32 }

@old_status_func_cb = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_status(i32* %0, i8* %1, i32* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.old_status_func_cb_baton*, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %24 = load i32*, i32** %22, align 8
  %25 = call %struct.old_status_func_cb_baton* @apr_pcalloc(i32* %24, i32 16)
  store %struct.old_status_func_cb_baton* %25, %struct.old_status_func_cb_baton** %23, align 8
  %26 = load i32, i32* %15, align 4
  %27 = load %struct.old_status_func_cb_baton*, %struct.old_status_func_cb_baton** %23, align 8
  %28 = getelementptr inbounds %struct.old_status_func_cb_baton, %struct.old_status_func_cb_baton* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = load %struct.old_status_func_cb_baton*, %struct.old_status_func_cb_baton** %23, align 8
  %31 = getelementptr inbounds %struct.old_status_func_cb_baton, %struct.old_status_func_cb_baton* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* @old_status_func_cb, align 4
  %36 = load %struct.old_status_func_cb_baton*, %struct.old_status_func_cb_baton** %23, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32*, i32** %21, align 8
  %43 = load i32*, i32** %22, align 8
  %44 = call i32* @svn_client_status2(i32* %32, i8* %33, i32* %34, i32 %35, %struct.old_status_func_cb_baton* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32* %42, i32* %43)
  ret i32* %44
}

declare dso_local %struct.old_status_func_cb_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @svn_client_status2(i32*, i8*, i32*, i32, %struct.old_status_func_cb_baton*, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
