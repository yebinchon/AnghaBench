; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_verify_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_verify_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Verification: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@bio_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32*)* @verify_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_command(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32 0, i32* %23, align 4
  %24 = load i8*, i8** %13, align 8
  %25 = call i32* @BIO_new_file(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %19, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  br label %67

28:                                               ; preds = %9
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32*, i32** %19, align 8
  %33 = call i32* @d2i_PKCS7_bio(i32* %32, i32* null)
  store i32* %33, i32** %20, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %67

36:                                               ; preds = %31
  br label %43

37:                                               ; preds = %28
  %38 = load i32*, i32** %19, align 8
  %39 = call i32* @d2i_TS_RESP_bio(i32* %38, i32* null)
  store i32* %39, i32** %21, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %67

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = call i32* @create_verify_ctx(i8* %44, i8* %45, i8* %46, i8* %47, i8* %48, i8* %49, i32* %50)
  store i32* %51, i32** %22, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %67

54:                                               ; preds = %43
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %22, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 @TS_RESP_verify_token(i32* %58, i32* %59)
  br label %65

61:                                               ; preds = %54
  %62 = load i32*, i32** %22, align 8
  %63 = load i32*, i32** %21, align 8
  %64 = call i32 @TS_RESP_verify_response(i32* %62, i32* %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i32 [ %60, %57 ], [ %64, %61 ]
  store i32 %66, i32* %23, align 4
  br label %67

67:                                               ; preds = %65, %53, %41, %35, %27
  %68 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %23, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %77

73:                                               ; preds = %67
  %74 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @bio_err, align 4
  %76 = call i32 @ERR_print_errors(i32 %75)
  br label %77

77:                                               ; preds = %73, %71
  %78 = load i32*, i32** %19, align 8
  %79 = call i32 @BIO_free_all(i32* %78)
  %80 = load i32*, i32** %20, align 8
  %81 = call i32 @PKCS7_free(i32* %80)
  %82 = load i32*, i32** %21, align 8
  %83 = call i32 @TS_RESP_free(i32* %82)
  %84 = load i32*, i32** %22, align 8
  %85 = call i32 @TS_VERIFY_CTX_free(i32* %84)
  %86 = load i32, i32* %23, align 4
  ret i32 %86
}

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32* @d2i_PKCS7_bio(i32*, i32*) #1

declare dso_local i32* @d2i_TS_RESP_bio(i32*, i32*) #1

declare dso_local i32* @create_verify_ctx(i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @TS_RESP_verify_token(i32*, i32*) #1

declare dso_local i32 @TS_RESP_verify_response(i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @PKCS7_free(i32*) #1

declare dso_local i32 @TS_RESP_free(i32*) #1

declare dso_local i32 @TS_VERIFY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
