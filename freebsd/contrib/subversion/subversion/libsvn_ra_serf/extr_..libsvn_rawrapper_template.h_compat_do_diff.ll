; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_..libsvn_rawrapper_template.h_compat_do_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_..libsvn_rawrapper_template.h_compat_do_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32**, i8**, i32, i8*, i32, i32, i32, i8*, i32*, i8*, i32*)* }

@VTBL = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32**, i8**, i32, i8*, i32, i32, i8*, i32*, i8*, i32*)* @compat_do_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @compat_do_diff(i8* %0, i32** %1, i8** %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7, i32* %8, i8* %9, i32* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32** %1, i32*** %13, align 8
  store i8** %2, i8*** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  %26 = load i32, i32* %17, align 4
  %27 = call i32 @SVN_DEPTH_INFINITY_OR_FILES(i32 %26)
  store i32 %27, i32* %25, align 4
  %28 = load i32 (i8*, i32**, i8**, i32, i8*, i32, i32, i32, i8*, i32*, i8*, i32*)*, i32 (i8*, i32**, i8**, i32, i8*, i32, i32, i32, i8*, i32*, i8*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VTBL, i32 0, i32 0), align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i8*, i8** %16, align 8
  %32 = load i32, i32* %25, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = load i8*, i8** %19, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = load i8*, i8** %21, align 8
  %38 = load i32*, i32** %22, align 8
  %39 = call i32 %28(i8* %29, i32** %23, i8** %24, i32 %30, i8* %31, i32 %32, i32 %33, i32 %34, i8* %35, i32* %36, i8* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32**, i32*** %13, align 8
  %42 = load i8**, i8*** %14, align 8
  %43 = load i32*, i32** %23, align 8
  %44 = load i8*, i8** %24, align 8
  %45 = load i32*, i32** %22, align 8
  %46 = call i32 @compat_wrap_reporter(i32** %41, i8** %42, i32* %43, i8* %44, i32* %45)
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %47
}

declare dso_local i32 @SVN_DEPTH_INFINITY_OR_FILES(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @compat_wrap_reporter(i32**, i8**, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
