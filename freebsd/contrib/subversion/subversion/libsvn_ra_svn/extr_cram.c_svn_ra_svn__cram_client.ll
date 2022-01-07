; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_cram.c_svn_ra_svn__cram_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_cram.c_svn_ra_svn__cram_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"w(?c)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"failure\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@SVN_ERR_RA_NOT_AUTHORIZED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Unexpected server response to authentication\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_svn__cram_client(i32* %0, i32* %1, i8* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %19 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %17, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @svn_ra_svn__read_tuple(i32* %28, i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %12, i8** %13)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i8*, i8** %12, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %5
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i8*, i8** %13, align 8
  %40 = load i8**, i8*** %11, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %6, align 8
  store i32 1, i32* %18, align 4
  br label %98

42:                                               ; preds = %35, %5
  %43 = load i8*, i8** %12, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* @SVN_ERR_RA_NOT_AUTHORIZED, align 4
  %51 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32* @svn_error_create(i32 %50, i32* null, i32 %51)
  store i32* %52, i32** %6, align 8
  store i32 1, i32* %18, align 4
  br label %98

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %13, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @compute_digest(i8* %22, i8* %55, i8* %56)
  %58 = call i32 @hex_encode(i8* %27, i8* %22)
  %59 = sub i64 %26, 1
  %60 = getelementptr inbounds i8, i8* %27, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32*, i32** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i8* @apr_psprintf(i32* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %62, i8* %27)
  store i8* %63, i8** %14, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @svn_ra_svn__write_cstring(i32* %64, i32* %65, i8* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @svn_ra_svn__read_tuple(i32* %69, i32* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %12, i8** %13)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i8*, i8** %12, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %54
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i8*, i8** %13, align 8
  %81 = load i8**, i8*** %11, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %6, align 8
  store i32 1, i32* %18, align 4
  br label %98

83:                                               ; preds = %76, %54
  %84 = load i8*, i8** %12, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %13, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87, %83
  %91 = load i32, i32* @SVN_ERR_RA_NOT_AUTHORIZED, align 4
  %92 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %93 = call i32* @svn_error_create(i32 %91, i32* null, i32 %92)
  store i32* %93, i32** %6, align 8
  store i32 1, i32* %18, align 4
  br label %98

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94
  %96 = load i8**, i8*** %11, align 8
  store i8* null, i8** %96, align 8
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %97, i32** %6, align 8
  store i32 1, i32* %18, align 4
  br label %98

98:                                               ; preds = %95, %90, %79, %49, %38
  %99 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32*, i32** %6, align 8
  ret i32* %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_ra_svn__read_tuple(i32*, i32*, i8*, i8**, i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @svn_error_create(i32, i32*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @compute_digest(i8*, i8*, i8*) #2

declare dso_local i32 @hex_encode(i8*, i8*) #2

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @svn_ra_svn__write_cstring(i32*, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
