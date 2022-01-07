; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_branch_state_set_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_branch_state_set_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i8*, i32 }

@SVN_BRANCH__ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Cannot set e%d to (parent=e%d, name='%s'): branch root is e%d\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32*)* @branch_state_set_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @branch_state_set_element(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @apr_hash_pool_get(i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @EID_IS_ALLOCATED(%struct.TYPE_16__* %19, i32 %20)
  %22 = call i32 @SVN_ERR_ASSERT(i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call %struct.TYPE_15__* @svn_element__content_dup(%struct.TYPE_15__* %26, i32* %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %8, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @SVN_ERR_ASSERT(i32 %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, -1
  %37 = zext i1 %36 to i32
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @IS_BRANCH_ROOT_EID(%struct.TYPE_16__* %38, i32 %39)
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %25
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @IS_BRANCH_ROOT_EID(%struct.TYPE_16__* %50, i32 %51)
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %42, %25
  %55 = load i32, i32* @SVN_BRANCH__ERR, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32* @svn_error_createf(i32 %55, i32* null, i32 %56, i32 %57, i32 %60, i8* %63, i32 %70)
  store i32* %71, i32** %5, align 8
  br label %79

72:                                               ; preds = %42
  br label %73

73:                                               ; preds = %72, %4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = call i32 @branch_map_set(%struct.TYPE_16__* %74, i32 %75, %struct.TYPE_15__* %76)
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %5, align 8
  br label %79

79:                                               ; preds = %73, %54
  %80 = load i32*, i32** %5, align 8
  ret i32* %80
}

declare dso_local i32* @apr_hash_pool_get(i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @EID_IS_ALLOCATED(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_15__* @svn_element__content_dup(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @IS_BRANCH_ROOT_EID(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @branch_map_set(%struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
