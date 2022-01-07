; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_a_md5encrypt.c_make_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_a_md5encrypt.c_make_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@NID_md5 = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"MAC encrypt: MAC md5 buf too small.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"MAC encrypt: MAC md5 Digest CTX new failed.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"MAC encrypt: invalid key type %d\00", align 1
@AES_128_KEY_SIZE = common dso_local global i32 0, align 4
@CMAC = common dso_local global i32 0, align 4
@EVP_MD_CTX_FLAG_NON_FIPS_ALLOW = common dso_local global i32 0, align 4
@NID_cmac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, %struct.TYPE_7__*, %struct.TYPE_7__*)* @make_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @make_mac(%struct.TYPE_6__* %0, i32 %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NID_md5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %4
  %16 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %16, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = call i32 (i32, i8*, ...) @msyslog(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %57

24:                                               ; preds = %15
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = call i32 (i32, i8*, ...) @msyslog(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %56

30:                                               ; preds = %24
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @EVP_get_digestbynid(i32 %32)
  %34 = call i32 @EVP_DigestInit(i32* %31, i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @EVP_DigestUpdate(i32* %35, i8* %38, i32 %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @EVP_DigestUpdate(i32* %43, i8* %46, i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @EVP_DigestFinal(i32* %51, i32 %54, i32* %11)
  br label %56

56:                                               ; preds = %30, %27
  br label %57

57:                                               ; preds = %56, %21
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @EVP_MD_CTX_free(i32* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %9, align 8
  br label %70

66:                                               ; preds = %4
  %67 = load i32, i32* @LOG_ERR, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32, i8*, ...) @msyslog(i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i64, i64* %9, align 8
  ret i64 %71
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

declare dso_local i32 @EVP_DigestInit(i32*, i32) #1

declare dso_local i32 @EVP_get_digestbynid(i32) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestFinal(i32*, i32, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
