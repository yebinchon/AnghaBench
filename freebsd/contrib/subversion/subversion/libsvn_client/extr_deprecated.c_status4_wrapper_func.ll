; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_status4_wrapper_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_status4_wrapper_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.status4_wrapper_baton = type { i32, i32* (i32, i8*, i32*, i32*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_3__*, i32*)* @status4_wrapper_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @status4_wrapper_func(i8* %0, i8* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.status4_wrapper_baton*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.status4_wrapper_baton*
  store %struct.status4_wrapper_baton* %14, %struct.status4_wrapper_baton** %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @svn_dirent_get_absolute(i8** %11, i8* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** %12, align 8
  %23 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %9, align 8
  %24 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @svn_wc__status2_from_3(i32** %10, i32* %22, i32 %25, i8* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %9, align 8
  %32 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %31, i32 0, i32 1
  %33 = load i32* (i32, i8*, i32*, i32*)*, i32* (i32, i8*, i32*, i32*)** %32, align 8
  %34 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %9, align 8
  %35 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* %33(i32 %36, i8* %37, i32* %38, i32* %39)
  ret i32* %40
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__status2_from_3(i32**, i32*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
