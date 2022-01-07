; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_convert_branch_to_paths.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_convert_branch_to_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_16__*, i32*, i32*)* @convert_branch_to_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @convert_branch_to_paths(i32* %0, %struct.TYPE_16__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @svn_branch__state_get_elements(%struct.TYPE_16__* %15, %struct.TYPE_14__** %10, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @apr_hash_first(i32* %19, i32 %22)
  store i32* %23, i32** %9, align 8
  br label %24

24:                                               ; preds = %64, %4
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %67

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @svn_eid__hash_this_key(i32* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call %struct.TYPE_15__* @apr_hash_this_val(i32* %30)
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %12, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i8* @branch_get_storage_rrpath_by_eid(%struct.TYPE_16__* %32, i32 %33, i32* %34)
  store i8* %35, i8** %13, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %64

43:                                               ; preds = %27
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @svn_hash_gets(i32* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @SVN_ERR_ASSERT(i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32* @svn_branch__el_rev_id_create(%struct.TYPE_16__* %51, i32 %52, i32 %57, i32* %58)
  store i32* %59, i32** %14, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @svn_hash_sets(i32* %60, i8* %61, i32* %62)
  br label %64

64:                                               ; preds = %43, %42
  %65 = load i32*, i32** %9, align 8
  %66 = call i32* @apr_hash_next(i32* %65)
  store i32* %66, i32** %9, align 8
  br label %24

67:                                               ; preds = %24
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %68
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_branch__state_get_elements(%struct.TYPE_16__*, %struct.TYPE_14__**, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i32 @svn_eid__hash_this_key(i32*) #1

declare dso_local %struct.TYPE_15__* @apr_hash_this_val(i32*) #1

declare dso_local i8* @branch_get_storage_rrpath_by_eid(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @svn_branch__el_rev_id_create(%struct.TYPE_16__*, i32, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
