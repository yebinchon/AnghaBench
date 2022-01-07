; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_iter.c_svn_iter_apr_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_iter.c_svn_iter_apr_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i8* }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8
@SVN_ERR_ITER_BREAK = common dso_local global i64 0, align 8
@internal_break_error = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @svn_iter_apr_array(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* (i8*, i8*, i32*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__* (i8*, i8*, i32*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_11__* (i8*, i8*, i32*)* %2, %struct.TYPE_11__* (i8*, i8*, i32*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %11, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32* @svn_pool_create(i32* %16)
  store i32* %17, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %47, %5
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i1 [ false, %18 ], [ %26, %21 ]
  br i1 %28, label %29, label %50

29:                                               ; preds = %27
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %32, i64 %38
  store i8* %39, i8** %14, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @svn_pool_clear(i32* %40)
  %42 = load %struct.TYPE_11__* (i8*, i8*, i32*)*, %struct.TYPE_11__* (i8*, i8*, i32*)** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call %struct.TYPE_11__* %42(i8* %43, i8* %44, i32* %45)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %11, align 8
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %18

50:                                               ; preds = %27
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = icmp ne %struct.TYPE_11__* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SVN_ERR_ITER_BREAK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, @internal_break_error
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = call i32 @svn_error_clear(%struct.TYPE_11__* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %11, align 8
  br label %76

76:                                               ; preds = %74, %62, %59
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @svn_pool_destroy(i32* %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  ret %struct.TYPE_11__* %79
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
