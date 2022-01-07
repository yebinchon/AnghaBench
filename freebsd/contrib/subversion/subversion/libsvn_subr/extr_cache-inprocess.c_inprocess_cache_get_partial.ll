; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_inprocess_cache_get_partial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_inprocess_cache_get_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i8*, i32, i8*, i32*)* @inprocess_cache_get_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @inprocess_cache_get_partial(i8** %0, i32* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  store i8** %0, i8*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %15, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %7
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8**, i8*** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @inprocess_cache_get_partial_internal(i8** %24, i32* %25, %struct.TYPE_3__* %26, i8* %27, i32 %28, i8* %29, i32* %30)
  %32 = call i32 @SVN_MUTEX__WITH_LOCK(i32 %23, i32 %31)
  br label %36

33:                                               ; preds = %7
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %20
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %37
}

declare dso_local i32 @SVN_MUTEX__WITH_LOCK(i32, i32) #1

declare dso_local i32 @inprocess_cache_get_partial_internal(i8**, i32*, %struct.TYPE_3__*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
