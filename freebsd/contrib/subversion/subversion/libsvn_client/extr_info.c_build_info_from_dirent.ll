; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_info.c_build_info_from_dirent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_info.c_build_info_from_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__**, %struct.TYPE_8__*, i32*, %struct.TYPE_10__*, i32*)* @build_info_from_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_info_from_dirent(%struct.TYPE_9__** %0, %struct.TYPE_8__* %1, i32* %2, %struct.TYPE_10__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = call %struct.TYPE_9__* @apr_pcalloc(i32* %12, i32 56)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 10
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %65 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %65, align 8
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %66
}

declare dso_local %struct.TYPE_9__* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
