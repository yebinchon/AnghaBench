; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_get_xlate_handle_node_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_get_xlate_handle_node_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i64 }

@xlate_handle_hash = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__**, i8*, i8*, i8*, i32*)* @get_xlate_handle_node_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_xlate_handle_node_internal(%struct.TYPE_5__** %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__**, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %5
  %17 = load i64, i64* @xlate_handle_hash, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %20 = load i64, i64* @xlate_handle_hash, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call %struct.TYPE_5__** @svn_hash_gets(i64 %20, i8* %21)
  store %struct.TYPE_5__** %22, %struct.TYPE_5__*** %13, align 8
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %24 = icmp ne %struct.TYPE_5__** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %12, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %44, align 8
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %6, align 8
  br label %56

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %28
  br label %48

48:                                               ; preds = %47, %16, %5
  %49 = load i64, i64* @xlate_handle_hash, align 8
  %50 = call i32* @apr_hash_pool_get(i64 %49)
  store i32* %50, i32** %11, align 8
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32* @xlate_alloc_handle(%struct.TYPE_5__** %51, i8* %52, i8* %53, i32* %54)
  store i32* %55, i32** %6, align 8
  br label %56

56:                                               ; preds = %48, %36
  %57 = load i32*, i32** %6, align 8
  ret i32* %57
}

declare dso_local %struct.TYPE_5__** @svn_hash_gets(i64, i8*) #1

declare dso_local i32* @apr_hash_pool_get(i64) #1

declare dso_local i32* @xlate_alloc_handle(%struct.TYPE_5__**, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
