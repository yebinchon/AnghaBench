; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_inprocess_cache_get_partial_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_inprocess_cache_get_partial_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.cache_entry = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, %struct.TYPE_4__*, i8*, i32* (i8**, i32, i32, i8*, i32*)*, i8*, i32*)* @inprocess_cache_get_partial_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @inprocess_cache_get_partial_internal(i8** %0, i32* %1, %struct.TYPE_4__* %2, i8* %3, i32* (i8**, i32, i32, i8*, i32*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32* (i8**, i32, i32, i8*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.cache_entry*, align 8
  store i8** %0, i8*** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* (i8**, i32, i32, i8*, i32*)* %4, i32* (i8**, i32, i32, i8*, i32*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %12, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cache_entry* @apr_hash_get(i32 %19, i8* %20, i32 %23)
  store %struct.cache_entry* %24, %struct.cache_entry** %16, align 8
  %25 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %26 = icmp ne %struct.cache_entry* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %8, align 8
  br label %51

31:                                               ; preds = %7
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %34 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @move_page_to_front(%struct.TYPE_4__* %32, i32 %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32* (i8**, i32, i32, i8*, i32*)*, i32* (i8**, i32, i32, i8*, i32*)** %13, align 8
  %41 = load i8**, i8*** %9, align 8
  %42 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %43 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %14, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32* %40(i8** %41, i32 %44, i32 %47, i8* %48, i32* %49)
  store i32* %50, i32** %8, align 8
  br label %51

51:                                               ; preds = %31, %27
  %52 = load i32*, i32** %8, align 8
  ret i32* %52
}

declare dso_local %struct.cache_entry* @apr_hash_get(i32, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @move_page_to_front(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
