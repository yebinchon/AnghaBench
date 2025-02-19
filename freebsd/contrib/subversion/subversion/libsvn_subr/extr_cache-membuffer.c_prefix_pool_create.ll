; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-membuffer.c_prefix_pool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-membuffer.c_prefix_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, %struct.TYPE_4__*, i32 }

@APR_UINT32_MAX = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__**, i32, i32, i32*)* @prefix_pool_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prefix_pool_create(%struct.TYPE_4__** %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @APR_UINT32_MAX, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sdiv i32 %12, 120
  %14 = call i32 @MIN(i32 %11, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call %struct.TYPE_4__* @apr_pcalloc(i32* %15, i32 48)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @svn_hash__make(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call %struct.TYPE_4__* @apr_pcalloc(i32* %24, i32 %28)
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi %struct.TYPE_4__* [ %29, %23 ], [ null, %30 ]
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @svn_mutex__init(i32* %51, i32 %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %57, align 8
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %58
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_hash__make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mutex__init(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
