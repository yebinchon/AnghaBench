; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_status4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_status4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.status4_wrapper_baton = type { i8*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@status4_wrapper_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_status4(i32* %0, i8* %1, i32* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, %struct.TYPE_4__* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_4__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.status4_wrapper_baton, align 8
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i8* %4, i8** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32* %10, i32** %24, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %25, align 8
  store i32* %12, i32** %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %27, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %17, align 4
  %33 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %27, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i8*, i8** %18, align 8
  %35 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %27, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %22, align 4
  %44 = load i32, i32* %23, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = load i32*, i32** %24, align 8
  %47 = load i32, i32* @status4_wrapper_func, align 4
  %48 = load i32*, i32** %26, align 8
  %49 = call i32* @svn_client_status5(i32* %36, %struct.TYPE_4__* %37, i8* %38, i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32* %46, i32 %47, %struct.status4_wrapper_baton* %27, i32* %48)
  ret i32* %49
}

declare dso_local i32* @svn_client_status5(i32*, %struct.TYPE_4__*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.status4_wrapper_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
