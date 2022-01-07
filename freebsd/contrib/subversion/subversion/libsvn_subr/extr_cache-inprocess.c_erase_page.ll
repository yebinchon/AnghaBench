; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_erase_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_erase_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.cache_page*, i32, i32, i32 }
%struct.cache_page = type { i32*, i32*, %struct.cache_entry*, i32 }
%struct.cache_entry = type { i32, i64, %struct.cache_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.cache_page*)* @erase_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erase_page(%struct.TYPE_3__* %0, %struct.cache_page* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.cache_page*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.cache_page* %1, %struct.cache_page** %4, align 8
  %6 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %7 = call i32 @remove_page_from_list(%struct.cache_page* %6)
  %8 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %9 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %8, i32 0, i32 2
  %10 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  store %struct.cache_entry* %10, %struct.cache_entry** %5, align 8
  br label %11

11:                                               ; preds = %34, %2
  %12 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %13 = icmp ne %struct.cache_entry* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %16 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @apr_hash_set(i32 %26, i32 %29, i32 %32, i32* null)
  br label %34

34:                                               ; preds = %14
  %35 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 2
  %37 = load %struct.cache_entry*, %struct.cache_entry** %36, align 8
  store %struct.cache_entry* %37, %struct.cache_entry** %5, align 8
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %40 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @svn_pool_clear(i32 %41)
  %43 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %44 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %43, i32 0, i32 2
  store %struct.cache_entry* null, %struct.cache_entry** %44, align 8
  %45 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %46 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %48 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store %struct.cache_page* %49, %struct.cache_page** %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  ret void
}

declare dso_local i32 @remove_page_from_list(%struct.cache_page*) #1

declare dso_local i32 @apr_hash_set(i32, i32, i32, i32*) #1

declare dso_local i32 @svn_pool_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
