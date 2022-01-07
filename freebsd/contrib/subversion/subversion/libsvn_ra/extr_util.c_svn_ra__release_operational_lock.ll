; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_util.c_svn_ra__release_operational_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_util.c_svn_ra__release_operational_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@SVN_RA_CAPABILITY_ATOMIC_REVPROPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Lock was stolen by '%s'; unable to remove it\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @svn_ra__release_operational_lock(i32* %0, i8* %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @SVN_RA_CAPABILITY_ATOMIC_REVPROPS, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call %struct.TYPE_18__* @svn_ra_has_capability(i32* %13, i64* %11, i32 %14, i32* %15)
  %17 = call i32 @SVN_ERR(%struct.TYPE_18__* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_18__* @svn_ra_rev_prop(i32* %18, i32 0, i8* %19, %struct.TYPE_17__** %10, i32* %20)
  %22 = call i32 @SVN_ERR(%struct.TYPE_18__* %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %58

25:                                               ; preds = %4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = call i64 @svn_string_compare(%struct.TYPE_17__* %26, %struct.TYPE_17__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %35
  %38 = phi %struct.TYPE_17__** [ %8, %35 ], [ null, %36 ]
  %39 = load i32*, i32** %9, align 8
  %40 = call %struct.TYPE_18__* @svn_ra_change_rev_prop2(i32* %31, i32 0, i8* %32, %struct.TYPE_17__** %38, i32* null, i32* %39)
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %12, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %42 = call i64 @is_atomicity_error(%struct.TYPE_18__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %49 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_18__* @svn_error_createf(i32 %47, %struct.TYPE_18__* %48, i32 %49, i32 %52)
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %5, align 8
  br label %60

54:                                               ; preds = %37
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %56 = call i32 @SVN_ERR(%struct.TYPE_18__* %55)
  br label %57

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %25, %4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %5, align 8
  br label %60

60:                                               ; preds = %58, %44
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  ret %struct.TYPE_18__* %61
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_ra_has_capability(i32*, i64*, i32, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_ra_rev_prop(i32*, i32, i8*, %struct.TYPE_17__**, i32*) #1

declare dso_local i64 @svn_string_compare(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @svn_ra_change_rev_prop2(i32*, i32, i8*, %struct.TYPE_17__**, i32*, i32*) #1

declare dso_local i64 @is_atomicity_error(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_error_createf(i32, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
