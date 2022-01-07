; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_create_verify_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_create_verify_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TS_VFY_VERSION = common dso_local global i32 0, align 4
@TS_VFY_SIGNER = common dso_local global i32 0, align 4
@TS_VFY_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@TS_VFY_IMPRINT = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid digest string\0A\00", align 1
@TS_VFY_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, i8*, i8*, i32*)* @create_verify_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_verify_ctx(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %76

29:                                               ; preds = %26, %7
  %30 = call i32* (...) @TS_VERIFY_CTX_new()
  store i32* %30, i32** %16, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %122

33:                                               ; preds = %29
  %34 = load i32, i32* @TS_VFY_VERSION, align 4
  %35 = load i32, i32* @TS_VFY_SIGNER, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %20, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  store i32* null, i32** %21, align 8
  %40 = load i32, i32* @TS_VFY_DATA, align 4
  %41 = load i32, i32* %20, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %20, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32* @BIO_new_file(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %44, i32** %21, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %122

47:                                               ; preds = %39
  %48 = load i32*, i32** %16, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = call i32* @TS_VERIFY_CTX_set_data(i32* %48, i32* %49)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32*, i32** %21, align 8
  %54 = call i32 @BIO_free_all(i32* %53)
  br label %122

55:                                               ; preds = %47
  br label %75

56:                                               ; preds = %33
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i8*, i8** %10, align 8
  %61 = call i8* @OPENSSL_hexstr2buf(i8* %60, i64* %22)
  store i8* %61, i8** %23, align 8
  %62 = load i32, i32* @TS_VFY_IMPRINT, align 4
  %63 = load i32, i32* %20, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %20, align 4
  %65 = load i32*, i32** %16, align 8
  %66 = load i8*, i8** %23, align 8
  %67 = load i64, i64* %22, align 8
  %68 = call i32* @TS_VERIFY_CTX_set_imprint(i32* %65, i8* %66, i64 %67)
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @bio_err, align 4
  %72 = call i32 @BIO_printf(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %122

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %55
  br label %97

76:                                               ; preds = %26
  %77 = load i8*, i8** %11, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load i8*, i8** %11, align 8
  %81 = call i32* @BIO_new_file(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %81, i32** %17, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %122

84:                                               ; preds = %79
  %85 = load i32*, i32** %17, align 8
  %86 = call i32* @d2i_TS_REQ_bio(i32* %85, i32* null)
  store i32* %86, i32** %18, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %122

89:                                               ; preds = %84
  %90 = load i32*, i32** %18, align 8
  %91 = call i32* @TS_REQ_to_TS_VERIFY_CTX(i32* %90, i32* null)
  store i32* %91, i32** %16, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %122

94:                                               ; preds = %89
  br label %96

95:                                               ; preds = %76
  store i32* null, i32** %8, align 8
  br label %134

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %75
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* @TS_VFY_SIGNATURE, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @TS_VERIFY_CTX_add_flags(i32* %98, i32 %101)
  %103 = load i32*, i32** %16, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @create_cert_store(i8* %104, i8* %105, i32* %106)
  %108 = call i32* @TS_VERIFY_CTX_set_store(i32* %103, i32 %107)
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  br label %122

111:                                              ; preds = %97
  %112 = load i8*, i8** %14, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32*, i32** %16, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @TS_CONF_load_certs(i8* %116)
  %118 = call i32* @TS_VERIFY_CTS_set_certs(i32* %115, i32 %117)
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %122

121:                                              ; preds = %114, %111
  store i32 1, i32* %19, align 4
  br label %122

122:                                              ; preds = %121, %120, %110, %93, %88, %83, %70, %52, %46, %32
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32*, i32** %16, align 8
  %127 = call i32 @TS_VERIFY_CTX_free(i32* %126)
  store i32* null, i32** %16, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32*, i32** %17, align 8
  %130 = call i32 @BIO_free_all(i32* %129)
  %131 = load i32*, i32** %18, align 8
  %132 = call i32 @TS_REQ_free(i32* %131)
  %133 = load i32*, i32** %16, align 8
  store i32* %133, i32** %8, align 8
  br label %134

134:                                              ; preds = %128, %95
  %135 = load i32*, i32** %8, align 8
  ret i32* %135
}

declare dso_local i32* @TS_VERIFY_CTX_new(...) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32* @TS_VERIFY_CTX_set_data(i32*, i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i8*, i64*) #1

declare dso_local i32* @TS_VERIFY_CTX_set_imprint(i32*, i8*, i64) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32* @d2i_TS_REQ_bio(i32*, i32*) #1

declare dso_local i32* @TS_REQ_to_TS_VERIFY_CTX(i32*, i32*) #1

declare dso_local i32 @TS_VERIFY_CTX_add_flags(i32*, i32) #1

declare dso_local i32* @TS_VERIFY_CTX_set_store(i32*, i32) #1

declare dso_local i32 @create_cert_store(i8*, i8*, i32*) #1

declare dso_local i32* @TS_VERIFY_CTS_set_certs(i32*, i32) #1

declare dso_local i32 @TS_CONF_load_certs(i8*) #1

declare dso_local i32 @TS_VERIFY_CTX_free(i32*) #1

declare dso_local i32 @TS_REQ_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
