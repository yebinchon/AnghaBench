; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_must_have_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_must_have_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i64, i32* }

@svn_authz_write = common dso_local global i32 0, align 4
@WRITE_ACCESS = common dso_local global i32 0, align 4
@READ_ACCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_RA_SVN_CMD_ERR = common dso_local global i32 0, align 4
@SVN_ERR_RA_NOT_AUTHORIZED = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_12__*, i32, i8*, i32)* @must_have_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @must_have_access(i32* %0, i32* %1, %struct.TYPE_12__* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @svn_authz_write, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @WRITE_ACCESS, align 4
  br label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @READ_ACCESS, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %14, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @lookup_access(i32* %25, %struct.TYPE_12__* %26, i32 %27, i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @create_fs_access(%struct.TYPE_12__* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = call i32* @trivial_auth_request(i32* %37, i32* %38, %struct.TYPE_12__* %39)
  store i32* %40, i32** %7, align 8
  br label %105

41:                                               ; preds = %23
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %41
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = icmp uge i32 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %48
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %56
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70, %63, %56
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @TRUE, align 4
  %83 = call i32 @auth_request(i32* %78, i32* %79, %struct.TYPE_12__* %80, i32 %81, i32 %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %85

85:                                               ; preds = %77, %70, %48, %41
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i64 @lookup_access(i32* %86, %struct.TYPE_12__* %87, i32 %88, i8* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @SVN_ERR_RA_SVN_CMD_ERR, align 4
  %95 = load i32, i32* @SVN_ERR_RA_NOT_AUTHORIZED, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %97 = call i32 @error_create_and_log(i32 %95, i32* null, i32* null, %struct.TYPE_12__* %96)
  %98 = call i32* @svn_error_create(i32 %94, i32 %97, i32* null)
  store i32* %98, i32** %7, align 8
  br label %105

99:                                               ; preds = %85
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @create_fs_access(%struct.TYPE_12__* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %104, i32** %7, align 8
  br label %105

105:                                              ; preds = %99, %93, %32
  %106 = load i32*, i32** %7, align 8
  ret i32* %106
}

declare dso_local i64 @lookup_access(i32*, %struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_fs_access(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @trivial_auth_request(i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @auth_request(i32*, i32*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32* @svn_error_create(i32, i32, i32*) #1

declare dso_local i32 @error_create_and_log(i32, i32*, i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
