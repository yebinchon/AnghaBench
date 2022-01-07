; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_internal_auth.c_svn_ra_svn__do_internal_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_internal_auth.c_svn_ra_svn__do_internal_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32* }
%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ANONYMOUS\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"CRAM-MD5\00", align 1
@SVN_AUTH_CRED_SIMPLE = common dso_local global i32 0, align 4
@SVN_ERR_RA_NOT_AUTHORIZED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Can't get password\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Authentication error from server: %s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_RA_SVN_NO_MECHANISMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_svn__do_internal_auth(%struct.TYPE_4__* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @apr_psprintf(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  store i8* %25, i8** %11, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @svn_ra_svn__find_mech(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @svn_ra_svn__auth_response(i32* %35, i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32* @read_success(i32* %39, i32* %40)
  store i32* %41, i32** %5, align 8
  br label %121

42:                                               ; preds = %30, %4
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @svn_ra_svn__find_mech(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @svn_ra_svn__auth_response(i32* %47, i32* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32* @read_success(i32* %51, i32* %52)
  store i32* %53, i32** %5, align 8
  br label %121

54:                                               ; preds = %42
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @svn_ra_svn__find_mech(i32* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %118

58:                                               ; preds = %54
  %59 = load i32, i32* @SVN_AUTH_CRED_SIMPLE, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @svn_auth_first_credentials(i8** %16, i32** %15, i32 %59, i8* %60, i32 %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i8*, i8** %16, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @SVN_ERR_RA_NOT_AUTHORIZED, align 4
  %71 = call i32* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %72 = call i32* @svn_error_create(i32 %70, i32* null, i32* %71)
  store i32* %72, i32** %5, align 8
  br label %121

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %99, %73
  %75 = load i8*, i8** %16, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %104

77:                                               ; preds = %74
  %78 = load i8*, i8** %16, align 8
  %79 = bitcast i8* %78 to %struct.TYPE_5__*
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = bitcast i8* %82 to %struct.TYPE_5__*
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %13, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @svn_ra_svn__auth_response(i32* %86, i32* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32*, i32** %10, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @svn_ra_svn__cram_client(i32* %90, i32* %91, i8* %92, i8* %93, i8** %14)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %77
  br label %104

99:                                               ; preds = %77
  %100 = load i32*, i32** %15, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @svn_auth_next_credentials(i8** %16, i32* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  br label %74

104:                                              ; preds = %98, %74
  %105 = load i8*, i8** %16, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @SVN_ERR_RA_NOT_AUTHORIZED, align 4
  %109 = call i32* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i8*, i8** %14, align 8
  %111 = call i32* @svn_error_createf(i32 %108, i32* null, i32* %109, i8* %110)
  store i32* %111, i32** %5, align 8
  br label %121

112:                                              ; preds = %104
  %113 = load i32*, i32** %15, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @svn_auth_save_credentials(i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %5, align 8
  br label %121

118:                                              ; preds = %54
  %119 = load i32, i32* @SVN_ERR_RA_SVN_NO_MECHANISMS, align 4
  %120 = call i32* @svn_error_create(i32 %119, i32* null, i32* null)
  store i32* %120, i32** %5, align 8
  br label %121

121:                                              ; preds = %118, %112, %107, %69, %46, %34
  %122 = load i32*, i32** %5, align 8
  ret i32* %122
}

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, i8*) #1

declare dso_local i64 @svn_ra_svn__find_mech(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__auth_response(i32*, i32*, i8*, i8*) #1

declare dso_local i32* @read_success(i32*, i32*) #1

declare dso_local i32 @svn_auth_first_credentials(i8**, i32**, i32, i8*, i32, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32 @svn_ra_svn__cram_client(i32*, i32*, i8*, i8*, i8**) #1

declare dso_local i32 @svn_auth_next_credentials(i8**, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32*, i8*) #1

declare dso_local i32 @svn_auth_save_credentials(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
