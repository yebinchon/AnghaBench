; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_file_rev_handler_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compat.c_file_rev_handler_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_rev_handler_wrapper_baton = type { i32, i32* (i32, i8*, i32, i32*, i32*, i8**, i32*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*, i32, i32*, i8**, i32*, i32*)* @file_rev_handler_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @file_rev_handler_wrapper(i8* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32* %5, i8** %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.file_rev_handler_wrapper_baton*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i8** %6, i8*** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = bitcast i8* %21 to %struct.file_rev_handler_wrapper_baton*
  store %struct.file_rev_handler_wrapper_baton* %22, %struct.file_rev_handler_wrapper_baton** %20, align 8
  %23 = load %struct.file_rev_handler_wrapper_baton*, %struct.file_rev_handler_wrapper_baton** %20, align 8
  %24 = getelementptr inbounds %struct.file_rev_handler_wrapper_baton, %struct.file_rev_handler_wrapper_baton* %23, i32 0, i32 1
  %25 = load i32* (i32, i8*, i32, i32*, i32*, i8**, i32*, i32*)*, i32* (i32, i8*, i32, i32*, i32*, i8**, i32*, i32*)** %24, align 8
  %26 = icmp ne i32* (i32, i8*, i32, i32*, i32*, i8**, i32*, i32*)* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %9
  %28 = load %struct.file_rev_handler_wrapper_baton*, %struct.file_rev_handler_wrapper_baton** %20, align 8
  %29 = getelementptr inbounds %struct.file_rev_handler_wrapper_baton, %struct.file_rev_handler_wrapper_baton* %28, i32 0, i32 1
  %30 = load i32* (i32, i8*, i32, i32*, i32*, i8**, i32*, i32*)*, i32* (i32, i8*, i32, i32*, i32*, i8**, i32*, i32*)** %29, align 8
  %31 = load %struct.file_rev_handler_wrapper_baton*, %struct.file_rev_handler_wrapper_baton** %20, align 8
  %32 = getelementptr inbounds %struct.file_rev_handler_wrapper_baton, %struct.file_rev_handler_wrapper_baton* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load i8**, i8*** %17, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = load i32*, i32** %19, align 8
  %41 = call i32* %30(i32 %33, i8* %34, i32 %35, i32* %36, i32* %37, i8** %38, i32* %39, i32* %40)
  store i32* %41, i32** %10, align 8
  br label %44

42:                                               ; preds = %9
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %43, i32** %10, align 8
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i32*, i32** %10, align 8
  ret i32* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
