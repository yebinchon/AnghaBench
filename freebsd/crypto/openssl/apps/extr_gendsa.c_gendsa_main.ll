; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_gendsa.c_gendsa_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_gendsa.c_gendsa_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gendsa_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@FORMAT_PEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unable to load DSA parameter file\0A\00", align 1
@OPENSSL_DSA_MAX_MODULUS_BITS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [144 x i8] c"Warning: It is not recommended to use more than %d bit for DSA keys.\0A         Your key size is %d! Larger key size may behave not as expected.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Generating DSA key, %d bits\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gendsa_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = load i32, i32* @gendsa_options, align 4
  %22 = call i8* @opt_init(i32 %19, i8** %20, i32 %21)
  store i8* %22, i8** %14, align 8
  br label %23

23:                                               ; preds = %55, %2
  %24 = call i32 (...) @opt_next()
  store i32 %24, i32* %15, align 4
  %25 = icmp ne i32 %24, 133
  br i1 %25, label %26, label %56

26:                                               ; preds = %23
  %27 = load i32, i32* %15, align 4
  switch i32 %27, label %55 [
    i32 133, label %28
    i32 132, label %28
    i32 131, label %33
    i32 130, label %36
    i32 129, label %38
    i32 134, label %40
    i32 128, label %43
    i32 135, label %49
  ]

28:                                               ; preds = %26, %26
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* @bio_err, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = call i32 (i32, i8*, ...) @BIO_printf(i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %128

33:                                               ; preds = %26
  store i32 0, i32* %16, align 4
  %34 = load i32, i32* @gendsa_options, align 4
  %35 = call i32 @opt_help(i32 %34)
  br label %128

36:                                               ; preds = %26
  %37 = call i8* (...) @opt_arg()
  store i8* %37, i8** %11, align 8
  br label %55

38:                                               ; preds = %26
  %39 = call i8* (...) @opt_arg()
  store i8* %39, i8** %12, align 8
  br label %55

40:                                               ; preds = %26
  %41 = call i8* (...) @opt_arg()
  %42 = call i32* @setup_engine(i8* %41, i32 0)
  store i32* %42, i32** %5, align 8
  br label %55

43:                                               ; preds = %26
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @opt_rand(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %128

48:                                               ; preds = %43
  br label %55

49:                                               ; preds = %26
  %50 = call i32 (...) @opt_unknown()
  %51 = call i32 @opt_cipher(i32 %50, i32** %9)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %128

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %26, %54, %48, %40, %38, %36
  br label %23

56:                                               ; preds = %23
  %57 = call i32 (...) @opt_num_rest()
  store i32 %57, i32* %3, align 4
  %58 = call i8** (...) @opt_rest()
  store i8** %58, i8*** %4, align 8
  store i32 1, i32* %17, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %29

62:                                               ; preds = %56
  %63 = load i8**, i8*** %4, align 8
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @app_passwd(i32* null, i8* %65, i32* null, i8** %13)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @bio_err, align 4
  %70 = call i32 (i32, i8*, ...) @BIO_printf(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %128

71:                                               ; preds = %62
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* @FORMAT_PEM, align 4
  %74 = call i32* @bio_open_default(i8* %72, i8 signext 114, i32 %73)
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %135

78:                                               ; preds = %71
  %79 = load i32*, i32** %7, align 8
  %80 = call i32* @PEM_read_bio_DSAparams(i32* %79, i32* null, i32* null, i32* null)
  store i32* %80, i32** %8, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @bio_err, align 4
  %84 = call i32 (i32, i8*, ...) @BIO_printf(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %128

85:                                               ; preds = %78
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @BIO_free(i32* %86)
  store i32* null, i32** %7, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i32, i32* @FORMAT_PEM, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call i32* @bio_open_owner(i8* %88, i32 %89, i32 %90)
  store i32* %91, i32** %6, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %135

95:                                               ; preds = %85
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @DSA_get0_pqg(i32* %96, i32** %18, i32* null, i32* null)
  %98 = load i32*, i32** %18, align 8
  %99 = call i64 @BN_num_bits(i32* %98)
  %100 = load i64, i64* @OPENSSL_DSA_MAX_MODULUS_BITS, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i32, i32* @bio_err, align 4
  %104 = load i64, i64* @OPENSSL_DSA_MAX_MODULUS_BITS, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = call i64 @BN_num_bits(i32* %105)
  %107 = call i32 (i32, i8*, ...) @BIO_printf(i32 %103, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.3, i64 0, i64 0), i64 %104, i64 %106)
  br label %108

108:                                              ; preds = %102, %95
  %109 = load i32, i32* @bio_err, align 4
  %110 = load i32*, i32** %18, align 8
  %111 = call i64 @BN_num_bits(i32* %110)
  %112 = call i32 (i32, i8*, ...) @BIO_printf(i32 %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @DSA_generate_key(i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %128

117:                                              ; preds = %108
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @assert(i32 %118)
  %120 = load i32*, i32** %6, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = call i32 @PEM_write_bio_DSAPrivateKey(i32* %120, i32* %121, i32* %122, i32* null, i32 0, i32* null, i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %117
  br label %128

127:                                              ; preds = %117
  store i32 0, i32* %16, align 4
  br label %128

128:                                              ; preds = %127, %126, %116, %82, %68, %53, %47, %33, %29
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* @bio_err, align 4
  %133 = call i32 @ERR_print_errors(i32 %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %94, %77
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @BIO_free(i32* %136)
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @BIO_free_all(i32* %138)
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @DSA_free(i32* %140)
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @release_engine(i32* %142)
  %144 = load i8*, i8** %13, align 8
  %145 = call i32 @OPENSSL_free(i8* %144)
  %146 = load i32, i32* %16, align 4
  ret i32 %146
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_cipher(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @app_passwd(i32*, i8*, i32*, i8**) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @PEM_read_bio_DSAparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32 @DSA_get0_pqg(i32*, i32**, i32*, i32*) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i32 @DSA_generate_key(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PEM_write_bio_DSAPrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
