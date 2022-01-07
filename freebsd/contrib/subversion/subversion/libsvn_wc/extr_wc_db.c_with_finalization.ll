; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_with_finalization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_with_finalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i8*, i32* (i8*, %struct.TYPE_7__*, i8*, i32*)*, i8*, i32* (i8*, %struct.TYPE_7__*, i32, i8*, i32*, i8*, i32*)*, i8*, i32, i8*, i32*, i8*, i32, i32*)* @with_finalization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @with_finalization(%struct.TYPE_7__* %0, i8* %1, i32* (i8*, %struct.TYPE_7__*, i8*, i32*)* %2, i8* %3, i32* (i8*, %struct.TYPE_7__*, i32, i8*, i32*, i8*, i32*)* %4, i8* %5, i32 %6, i8* %7, i32* %8, i8* %9, i32 %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32* (i8*, %struct.TYPE_7__*, i8*, i32*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32* (i8*, %struct.TYPE_7__*, i32, i8*, i32*, i8*, i32*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* (i8*, %struct.TYPE_7__*, i8*, i32*)* %2, i32* (i8*, %struct.TYPE_7__*, i8*, i32*)** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32* (i8*, %struct.TYPE_7__*, i32, i8*, i32*, i8*, i32*)* %4, i32* (i8*, %struct.TYPE_7__*, i32, i8*, i32*, i8*, i32*)** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32* %8, i32** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32* %11, i32** %24, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @svn_sqlite__begin_savepoint(i32 %29)
  store i32* %30, i32** %25, align 8
  %31 = load i32*, i32** %25, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %12
  %34 = load i32* (i8*, %struct.TYPE_7__*, i8*, i32*)*, i32* (i8*, %struct.TYPE_7__*, i8*, i32*)** %15, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i32*, i32** %24, align 8
  %39 = call i32* %34(i8* %35, %struct.TYPE_7__* %36, i8* %37, i32* %38)
  store i32* %39, i32** %25, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %25, align 8
  %44 = call i32* @svn_sqlite__finish_savepoint(i32 %42, i32* %43)
  store i32* %44, i32** %25, align 8
  br label %45

45:                                               ; preds = %33, %12
  %46 = load i32*, i32** %25, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32*, i32** %21, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i32* (i8*, %struct.TYPE_7__*, i32, i8*, i32*, i8*, i32*)*, i32* (i8*, %struct.TYPE_7__*, i32, i8*, i32*, i8*, i32*)** %17, align 8
  %53 = load i8*, i8** %18, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %55 = load i32, i32* %19, align 4
  %56 = load i8*, i8** %20, align 8
  %57 = load i32*, i32** %21, align 8
  %58 = load i8*, i8** %22, align 8
  %59 = load i32*, i32** %24, align 8
  %60 = call i32* %52(i8* %53, %struct.TYPE_7__* %54, i32 %55, i8* %56, i32* %57, i8* %58, i32* %59)
  store i32* %60, i32** %26, align 8
  %61 = load i32*, i32** %25, align 8
  %62 = load i32*, i32** %26, align 8
  %63 = call i32* @svn_error_compose_create(i32* %61, i32* %62)
  store i32* %63, i32** %25, align 8
  br label %64

64:                                               ; preds = %51, %48, %45
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %23, align 4
  %69 = call i32* @svn_sqlite__exec_statements(i32 %67, i32 %68)
  store i32* %69, i32** %26, align 8
  %70 = load i32*, i32** %25, align 8
  %71 = load i32*, i32** %26, align 8
  %72 = call i32* @svn_error_compose_create(i32* %70, i32* %71)
  %73 = call i32* @svn_error_trace(i32* %72)
  ret i32* %73
}

declare dso_local i32* @svn_sqlite__begin_savepoint(i32) #1

declare dso_local i32* @svn_sqlite__finish_savepoint(i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32* @svn_sqlite__exec_statements(i32, i32) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
