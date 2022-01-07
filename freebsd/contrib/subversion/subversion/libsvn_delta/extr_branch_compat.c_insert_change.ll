; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_insert_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_insert_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, i32*, i8*, i32)* @insert_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @insert_change(%struct.TYPE_6__** %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i32* @apr_hash_pool_get(i32* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.TYPE_6__* @svn_hash_gets(i32* %13, i8* %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %44 [
    i32 128, label %17
    i32 131, label %28
    i32 129, label %42
  ]

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 131
  %25 = zext i1 %24 to i32
  %26 = call i32 @VERIFY(i32 %25)
  br label %27

27:                                               ; preds = %20, %17
  br label %44

28:                                               ; preds = %4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 129
  %36 = zext i1 %35 to i32
  %37 = call i32 @VERIFY(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %31, %28
  br label %44

42:                                               ; preds = %4
  %43 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %44

44:                                               ; preds = %42, %4, %41, %27
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 128
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %47
  br label %70

55:                                               ; preds = %44
  %56 = load i32*, i32** %9, align 8
  %57 = call %struct.TYPE_6__* @apr_pcalloc(i32* %56, i32 8)
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @apr_pstrdup(i32* %65, i8* %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = call i32 @svn_hash_sets(i32* %64, i32 %67, %struct.TYPE_6__* %68)
  br label %70

70:                                               ; preds = %55, %54
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %72, align 8
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %73
}

declare dso_local i32* @apr_hash_pool_get(i32*) #1

declare dso_local %struct.TYPE_6__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local %struct.TYPE_6__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
