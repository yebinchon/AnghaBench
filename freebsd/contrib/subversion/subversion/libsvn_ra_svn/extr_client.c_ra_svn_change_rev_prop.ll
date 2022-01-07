; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_change_rev_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_change_rev_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@SVN_RA_SVN_CAP_ATOMIC_REVPROPS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i32, i8*, i32**, i32*, i32*)* @ra_svn_change_rev_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_change_rev_prop(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32** %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %13, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = load i32, i32* @SVN_RA_SVN_CAP_ATOMIC_REVPROPS, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @ra_svn_has_capability(%struct.TYPE_7__* %24, i64* %17, i32 %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32**, i32*** %10, align 8
  %30 = icmp ne i32** %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %6
  %32 = load i64, i64* %17, align 8
  %33 = call i32 @SVN_ERR_ASSERT(i64 %32)
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %15, align 8
  %35 = load i32**, i32*** %10, align 8
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %16, align 8
  br label %39

37:                                               ; preds = %6
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %15, align 8
  store i32* null, i32** %16, align 8
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i64, i64* %17, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32*, i32** %14, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @svn_ra_svn__write_cmd_change_rev_prop2(i32* %43, i32* %44, i32 %45, i8* %46, i32* %47, i64 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %60

52:                                               ; preds = %39
  %53 = load i32*, i32** %14, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @svn_ra_svn__write_cmd_change_rev_prop(i32* %53, i32* %54, i32 %55, i8* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %52, %42
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @handle_auth_request(%struct.TYPE_6__* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @svn_ra_svn__read_cmd_response(i32* %65, i32* %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %69
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ra_svn_has_capability(%struct.TYPE_7__*, i64*, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i64) #1

declare dso_local i32 @svn_ra_svn__write_cmd_change_rev_prop2(i32*, i32*, i32, i8*, i32*, i64, i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_change_rev_prop(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
