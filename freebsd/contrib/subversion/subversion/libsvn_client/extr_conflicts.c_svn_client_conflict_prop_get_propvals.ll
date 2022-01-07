; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_prop_get_propvals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_prop_get_propvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Property '%s' is not in conflict.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_prop_get_propvals(i32** %0, i32** %1, i32** %2, i32** %3, %struct.TYPE_7__* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32** %0, i32*** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32** %3, i32*** %12, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @assert_prop_conflict(%struct.TYPE_7__* %17, i32 %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = call %struct.TYPE_6__* @svn_hash_gets(i32 %25, i8* %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %16, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %32 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %14, align 8
  %34 = call i32* @svn_error_createf(i32 %31, i32* null, i32 %32, i8* %33)
  store i32* %34, i32** %8, align 8
  br label %77

35:                                               ; preds = %7
  %36 = load i32**, i32*** %9, align 8
  %37 = icmp ne i32** %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = call i32* @svn_string_dup(i32 %41, i32* %42)
  %44 = load i32**, i32*** %9, align 8
  store i32* %43, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32**, i32*** %10, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = call i32* @svn_string_dup(i32 %51, i32* %52)
  %54 = load i32**, i32*** %10, align 8
  store i32* %53, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32**, i32*** %11, align 8
  %57 = icmp ne i32** %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = call i32* @svn_string_dup(i32 %61, i32* %62)
  %64 = load i32**, i32*** %11, align 8
  store i32* %63, i32** %64, align 8
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i32**, i32*** %12, align 8
  %67 = icmp ne i32** %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = call i32* @svn_string_dup(i32 %71, i32* %72)
  %74 = load i32**, i32*** %12, align 8
  store i32* %73, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %65
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %8, align 8
  br label %77

77:                                               ; preds = %75, %30
  %78 = load i32*, i32** %8, align 8
  ret i32* %78
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @assert_prop_conflict(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_6__* @svn_hash_gets(i32, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_string_dup(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
