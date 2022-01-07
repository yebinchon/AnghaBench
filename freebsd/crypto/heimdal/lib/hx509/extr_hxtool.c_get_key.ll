; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_get_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"no key argument, don't know here to store key\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"can only handle rsa keys for now\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"RSA_new failed\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"no private key\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"read_private_key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32*)* @get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_key(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %77

18:                                               ; preds = %4
  store i32 1024, i32* %15, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcasecmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = call i32* (...) @BN_new()
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @BN_set_word(i32* %31, i32 65537)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = call i32* (...) @RSA_new()
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @RSA_generate_key_ex(i32* %44, i32 %45, i32* %46, i32* null)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @BN_free(i32* %53)
  %55 = load i32*, i32** %11, align 8
  %56 = call i64 @i2d_RSAPrivateKey(i32* %55, i8** null)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i8* @malloc(i64 %57)
  store i8* %58, i8** %13, align 8
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %52
  %64 = load i32*, i32** %11, align 8
  %65 = call i64 @i2d_RSAPrivateKey(i32* %64, i8** %13)
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @rk_dumpdata(i8* %66, i8* %67, i64 %68)
  %70 = load i8*, i8** %12, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @memset(i8* %70, i32 0, i64 %71)
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @RSA_free(i32* %75)
  br label %83

77:                                               ; preds = %4
  %78 = load i8*, i8** %5, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %63
  %84 = load i8*, i8** %5, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @read_private_key(i8* %84, i32* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %83
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32 @RSA_generate_key_ex(i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i64 @i2d_RSAPrivateKey(i32*, i8**) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @rk_dumpdata(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @read_private_key(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
