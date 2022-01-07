; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_lcs.c_prepend_lcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_lcs.c_prepend_lcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, i64, i64, i64, i32*)* @prepend_lcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @prepend_lcs(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %14)
  %16 = load i32*, i32** %10, align 8
  %17 = call %struct.TYPE_7__* @apr_palloc(i32* %16, i32 32)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %11, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i8* @apr_pcalloc(i32* %18, i32 8)
  %20 = bitcast i8* %19 to %struct.TYPE_6__*
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 0
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i64 %25, i64* %31, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i8* @apr_pcalloc(i32* %32, i32 8)
  %34 = bitcast i8* %33 to %struct.TYPE_6__*
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 1
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i64 %39, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  ret %struct.TYPE_7__* %54
}

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local %struct.TYPE_7__* @apr_palloc(i32*, i32) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
