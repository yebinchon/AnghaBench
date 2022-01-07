; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compose_delta.c_alloc_range_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compose_delta.c_alloc_range_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__**, %struct.TYPE_8__**, %struct.TYPE_9__*, i32, i8*, i8*, i8*)* @alloc_range_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @alloc_range_list(%struct.TYPE_8__** %0, %struct.TYPE_8__** %1, %struct.TYPE_9__* %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = call %struct.TYPE_8__* @alloc_block(i32 %18, i32* %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %15, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = icmp eq %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %7
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %43, align 8
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %44, align 8
  br label %58

45:                                               ; preds = %7
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %57, align 8
  br label %58

58:                                               ; preds = %45, %37
  %59 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  ret %struct.TYPE_8__* %60
}

declare dso_local %struct.TYPE_8__* @alloc_block(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
