; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_unlock_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_unlock_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Server doesn't support the unlock command\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*, i32, i32* (i8*, i8*, i32, i32*, i32*, i32*)*, i8*, i32*)* @ra_svn_unlock_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_unlock_compat(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* (i8*, i8*, i32, i32*, i32*, i32*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32* (i8*, i8*, i32, i32*, i32*, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* (i8*, i8*, i32, i32*, i32*, i32*)* %3, i32* (i8*, i8*, i32, i32*, i32*, i32*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %14, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32* @svn_pool_create(i32* %30)
  store i32* %31, i32** %17, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @apr_hash_first(i32* %32, i32* %33)
  store i32* %34, i32** %16, align 8
  br label %35

35:                                               ; preds = %96, %6
  %36 = load i32*, i32** %16, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %99

38:                                               ; preds = %35
  store i32* null, i32** %23, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i32 @svn_pool_clear(i32* %39)
  %41 = load i32*, i32** %16, align 8
  %42 = call i32 @apr_hash_this(i32* %41, i8** %18, i32* null, i8** %20)
  %43 = load i8*, i8** %18, align 8
  store i8* %43, i8** %19, align 8
  %44 = load i8*, i8** %20, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i8*, i8** %20, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = call i32* @svn_string_create(i8* %48, i32* %49)
  store i32* %50, i32** %21, align 8
  br label %52

51:                                               ; preds = %38
  store i32* null, i32** %21, align 8
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32*, i32** %15, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = load i32*, i32** %21, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @svn_ra_svn__write_cmd_unlock(i32* %53, i32* %54, i8* %55, i32* %56, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @handle_auth_request(%struct.TYPE_5__* %60, i32* %61)
  %63 = call i32 @N_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @handle_unsupported_cmd(i32 %62, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32*, i32** %15, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = call i32* @svn_ra_svn__read_cmd_response(i32* %66, i32* %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %68, i32** %22, align 8
  %69 = load i32*, i32** %22, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %52
  %72 = load i32*, i32** %22, align 8
  %73 = call i32 @SVN_ERR_IS_UNLOCK_ERROR(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load i32*, i32** %22, align 8
  store i32* %76, i32** %7, align 8
  br label %103

77:                                               ; preds = %71, %52
  %78 = load i32* (i8*, i8*, i32, i32*, i32*, i32*)*, i32* (i8*, i8*, i32, i32*, i32*, i32*)** %11, align 8
  %79 = icmp ne i32* (i8*, i8*, i32, i32*, i32*, i32*)* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32* (i8*, i8*, i32, i32*, i32*, i32*)*, i32* (i8*, i8*, i32, i32*, i32*, i32*)** %11, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = load i32, i32* @FALSE, align 4
  %85 = load i32*, i32** %22, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = call i32* %81(i8* %82, i8* %83, i32 %84, i32* null, i32* %85, i32* %86)
  store i32* %87, i32** %23, align 8
  br label %88

88:                                               ; preds = %80, %77
  %89 = load i32*, i32** %22, align 8
  %90 = call i32 @svn_error_clear(i32* %89)
  %91 = load i32*, i32** %23, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32*, i32** %23, align 8
  store i32* %94, i32** %7, align 8
  br label %103

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  %97 = load i32*, i32** %16, align 8
  %98 = call i32* @apr_hash_next(i32* %97)
  store i32* %98, i32** %16, align 8
  br label %35

99:                                               ; preds = %35
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @svn_pool_destroy(i32* %100)
  %102 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %102, i32** %7, align 8
  br label %103

103:                                              ; preds = %99, %93, %75
  %104 = load i32*, i32** %7, align 8
  ret i32* %104
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_string_create(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_cmd_unlock(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @handle_unsupported_cmd(i32, i32) #1

declare dso_local i32 @handle_auth_request(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @svn_ra_svn__read_cmd_response(i32*, i32*, i8*) #1

declare dso_local i32 @SVN_ERR_IS_UNLOCK_ERROR(i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
