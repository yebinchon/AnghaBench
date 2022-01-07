; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_inprocess_cache_set_partial_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_inprocess_cache_set_partial_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.cache_entry = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i8*, i32 (i32*, i64*, i8*, i32)*, i8*, i32*)* @inprocess_cache_set_partial_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @inprocess_cache_set_partial_internal(%struct.TYPE_5__* %0, i8* %1, i32 (i32*, i64*, i8*, i32)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i32*, i64*, i8*, i32)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i32*, i64*, i8*, i32)* %2, i32 (i32*, i64*, i8*, i32)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cache_entry* @apr_hash_get(i32 %14, i8* %15, i32 %18)
  store %struct.cache_entry* %19, %struct.cache_entry** %11, align 8
  %20 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %21 = icmp ne %struct.cache_entry* %20, null
  br i1 %21, label %22, label %60

22:                                               ; preds = %5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %25 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 @move_page_to_front(%struct.TYPE_5__* %23, %struct.TYPE_6__* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %30 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load i32 (i32*, i64*, i8*, i32)*, i32 (i32*, i64*, i8*, i32)** %8, align 8
  %39 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %40 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %39, i32 0, i32 2
  %41 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 0
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %38(i32* %40, i64* %42, i8* %43, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %52 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  br label %60

60:                                               ; preds = %22, %5
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local %struct.cache_entry* @apr_hash_get(i32, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @move_page_to_front(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
