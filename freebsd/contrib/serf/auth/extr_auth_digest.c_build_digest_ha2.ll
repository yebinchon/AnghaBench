; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_digest.c_build_digest_ha2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_digest.c_build_digest_ha2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@APR_MD5_DIGESTSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_ENOTIMPL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i8*, i8*, i8*, i32*)* @build_digest_ha2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @build_digest_ha2(i8** %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19, %5
  %24 = load i32, i32* @APR_MD5_DIGESTSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %13, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @apr_psprintf(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = call i64 @apr_md5(i8* %27, i8* %32, i32 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i64, i64* %15, align 8
  store i64 %39, i64* %6, align 8
  store i32 1, i32* %16, align 4
  br label %45

40:                                               ; preds = %23
  %41 = load i32*, i32** %11, align 8
  %42 = call i8* @hex_encode(i8* %27, i32* %41)
  %43 = load i8**, i8*** %7, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %44, i64* %6, align 8
  store i32 1, i32* %16, align 4
  br label %45

45:                                               ; preds = %40, %38
  %46 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %46)
  br label %49

47:                                               ; preds = %19
  %48 = load i64, i64* @APR_ENOTIMPL, align 8
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i64, i64* %6, align 8
  ret i64 %50
}

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i64 @apr_md5(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @hex_encode(i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
