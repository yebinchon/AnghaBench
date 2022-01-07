; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_resolve_revnums.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnsync/extr_svnsync.c_resolve_revnums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_opt_revision_head = common dso_local global i64 0, align 8
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid revision number (%ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64, i32, i64, i32)* @resolve_revnums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_revnums(i32* %0, i32* %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_6__* %8 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  store i64 %2, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  store i32 %3, i32* %16, align 8
  %17 = bitcast %struct.TYPE_6__* %9 to { i64, i32 }*
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  store i64 %4, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  store i32 %5, i32* %19, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32*, i32** %10, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %33, i32** %7, align 8
  br label %88

34:                                               ; preds = %24, %6
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @svn_opt_revision_head, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %40, i32* %12, align 4
  br label %54

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @SVN_IS_VALID_REVNUM(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %50 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %12, align 4
  %52 = call i32* @svn_error_createf(i32 %49, i32* null, i32 %50, i32 %51)
  store i32* %52, i32** %7, align 8
  br label %88

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %39
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %13, align 4
  br label %82

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @svn_opt_revision_head, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %67, i32* %13, align 4
  br label %81

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @SVN_IS_VALID_REVNUM(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %77 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* %13, align 4
  %79 = call i32* @svn_error_createf(i32 %76, i32* null, i32 %77, i32 %78)
  store i32* %79, i32** %7, align 8
  br label %88

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %10, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %7, align 8
  br label %88

88:                                               ; preds = %82, %75, %48, %29
  %89 = load i32*, i32** %7, align 8
  ret i32* %89
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
