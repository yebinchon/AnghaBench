; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_status4_wrapper_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_status4_wrapper_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status4_wrapper_baton = type { i32, i32* (i32, i8*, i32*, i32*)*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @status4_wrapper_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @status4_wrapper_func(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.status4_wrapper_baton*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.status4_wrapper_baton*
  store %struct.status4_wrapper_baton* %13, %struct.status4_wrapper_baton** %9, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %9, align 8
  %17 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @svn_wc__status2_from_3(i32** %10, i32* %15, i32 %18, i8* %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %9, align 8
  %25 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %9, align 8
  %30 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %9, align 8
  %33 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @svn_dirent_skip_ancestor(i32* %34, i8* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i8* @svn_dirent_join(i32 %31, i32 %36, i32* %37)
  store i8* %38, i8** %11, align 8
  br label %39

39:                                               ; preds = %28, %4
  %40 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %9, align 8
  %41 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %40, i32 0, i32 1
  %42 = load i32* (i32, i8*, i32*, i32*)*, i32* (i32, i8*, i32*, i32*)** %41, align 8
  %43 = load %struct.status4_wrapper_baton*, %struct.status4_wrapper_baton** %9, align 8
  %44 = getelementptr inbounds %struct.status4_wrapper_baton, %struct.status4_wrapper_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* %42(i32 %45, i8* %46, i32* %47, i32* %48)
  ret i32* %49
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__status2_from_3(i32**, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
