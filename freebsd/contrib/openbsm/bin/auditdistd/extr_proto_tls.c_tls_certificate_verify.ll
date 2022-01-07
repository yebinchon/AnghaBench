; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_certificate_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_certificate_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No fingerprint verification requested.\00", align 1
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No peer certificate received.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"X509_digest() failed.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SHA256=\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%02hhX:\00", align 1
@EX_NOPERM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"Finger print doesn't match. Received \22%s\22, expected \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @tls_certificate_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_certificate_verify(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %18 = mul nsw i32 %17, 3
  %19 = sext i32 %18 to i64
  %20 = add i64 7, %19
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %91

29:                                               ; preds = %2
  %30 = load i32*, i32** %3, align 8
  %31 = call i32* @SSL_get_peer_certificate(i32* %30)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EX_TEMPFAIL, align 4
  %36 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 (...) @EVP_sha256()
  %40 = call i32 @X509_digest(i32* %38, i32 %39, i8* %16, i32* %10)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EX_TEMPFAIL, align 4
  %44 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %48 = icmp ule i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @PJDLOG_ASSERT(i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @X509_free(i32* %51)
  %53 = trunc i64 %20 to i32
  %54 = call i32 @strlcpy(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = call i32 @strlen(i8* %21)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %21, i64 %56
  store i8* %57, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %77, %45
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = getelementptr inbounds i8, i8* %21, i64 %20
  %66 = icmp ule i8* %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @PJDLOG_VERIFY(i32 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %16, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %73)
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  store i8* %76, i8** %8, align 8
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 -1
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %4, align 8
  %84 = call i64 @strcasecmp(i8* %21, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @EX_NOPERM, align 4
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %87, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* %21, i8* %88)
  br label %90

90:                                               ; preds = %86, %80
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %27
  %92 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %12, align 4
  switch i32 %93, label %95 [
    i32 0, label %94
    i32 1, label %94
  ]

94:                                               ; preds = %91, %91
  ret void

95:                                               ; preds = %91
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pjdlog_debug(i32, i8*) #2

declare dso_local i32* @SSL_get_peer_certificate(i32*) #2

declare dso_local i32 @pjdlog_exitx(i32, i8*, ...) #2

declare dso_local i32 @X509_digest(i32*, i32, i8*, i32*) #2

declare dso_local i32 @EVP_sha256(...) #2

declare dso_local i32 @PJDLOG_ASSERT(i32) #2

declare dso_local i32 @X509_free(i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @PJDLOG_VERIFY(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
