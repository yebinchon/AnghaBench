; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_..libsvn_rawrapper_template.h_compat_get_file_revs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_..libsvn_rawrapper_template.h_compat_get_file_revs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* (i8*, i8*, i32, i32, i32, i32, i8*, i32*)* }

@VTBL = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32, i32, i8*, i32*)* @compat_get_file_revs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @compat_get_file_revs(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32, i32* %12, align 4
  %18 = load i8*, i8** %13, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = call i32 @svn_compat_wrap_file_rev_handler(i32* %15, i8** %16, i32 %17, i8* %18, i32* %19)
  %21 = load i32* (i8*, i8*, i32, i32, i32, i32, i8*, i32*)*, i32* (i8*, i8*, i32, i32, i32, i32, i8*, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VTBL, i32 0, i32 0), align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i8*, i8** %16, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32* %21(i8* %22, i8* %23, i32 %24, i32 %25, i32 %26, i32 %27, i8* %28, i32* %29)
  ret i32* %30
}

declare dso_local i32 @svn_compat_wrap_file_rev_handler(i32*, i8**, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
