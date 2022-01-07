; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_svn_wc_walk_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_svn_wc_walk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_walk_status(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i8* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load i32*, i32** %19, align 8
  %34 = load i32, i32* %20, align 4
  %35 = load i8*, i8** %21, align 8
  %36 = load i32, i32* %22, align 4
  %37 = load i8*, i8** %23, align 8
  %38 = load i32*, i32** %24, align 8
  %39 = call i32 @svn_wc__internal_walk_status(i32 %27, i8* %28, i32 %29, i32 %30, i32 %31, i32 %32, i32* %33, i32 %34, i8* %35, i32 %36, i8* %37, i32* %38)
  %40 = call i32* @svn_error_trace(i32 %39)
  ret i32* %40
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__internal_walk_status(i32, i8*, i32, i32, i32, i32, i32*, i32, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
