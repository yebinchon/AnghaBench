; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_prime.c_prime_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_prime.c_prime_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prime_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Extra arguments given.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: No prime specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Specify the number of bits.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to generate prime.\0A\00", align 1
@bio_out = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to process value (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c" (%s) %s prime\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"is not\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prime_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = load i32, i32* @prime_options, align 4
  %19 = call i8* @opt_init(i32 %16, i8** %17, i32 %18)
  store i8* %19, i8** %12, align 8
  br label %20

20:                                               ; preds = %42, %2
  %21 = call i32 (...) @opt_next()
  store i32 %21, i32* %13, align 4
  %22 = icmp ne i32 %21, 133
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i32, i32* %13, align 4
  switch i32 %24, label %42 [
    i32 133, label %25
    i32 132, label %25
    i32 130, label %30
    i32 129, label %33
    i32 131, label %34
    i32 135, label %35
    i32 128, label %38
    i32 134, label %39
  ]

25:                                               ; preds = %23, %23
  br label %26

26:                                               ; preds = %58, %51, %25
  %27 = load i32, i32* @bio_err, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 (i32, i8*, ...) @BIO_printf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %157

30:                                               ; preds = %23
  %31 = load i32, i32* @prime_options, align 4
  %32 = call i32 @opt_help(i32 %31)
  store i32 0, i32* %11, align 4
  br label %157

33:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %42

34:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  br label %42

35:                                               ; preds = %23
  %36 = call i32 (...) @opt_arg()
  %37 = call i32 @atoi(i32 %36)
  store i32 %37, i32* %9, align 4
  br label %42

38:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  br label %42

39:                                               ; preds = %23
  %40 = call i32 (...) @opt_arg()
  %41 = call i32 @atoi(i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %23, %39, %38, %35, %34, %33
  br label %20

43:                                               ; preds = %20
  %44 = call i32 (...) @opt_num_rest()
  store i32 %44, i32* %3, align 4
  %45 = call i8** (...) @opt_rest()
  store i8** %45, i8*** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @bio_err, align 4
  %53 = call i32 (i32, i8*, ...) @BIO_printf(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %26

54:                                               ; preds = %48
  br label %63

55:                                               ; preds = %43
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @bio_err, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 (i32, i8*, ...) @BIO_printf(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %26

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %110

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @bio_err, align 4
  %71 = call i32 (i32, i8*, ...) @BIO_printf(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %157

72:                                               ; preds = %66
  %73 = call i32* (...) @BN_new()
  store i32* %73, i32** %5, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @bio_err, align 4
  %78 = call i32 (i32, i8*, ...) @BIO_printf(i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %157

79:                                               ; preds = %72
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @BN_generate_prime_ex(i32* %80, i32 %81, i32 %82, i32* null, i32* null, i32* null)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @bio_err, align 4
  %87 = call i32 (i32, i8*, ...) @BIO_printf(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %157

88:                                               ; preds = %79
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %5, align 8
  %93 = call i8* @BN_bn2hex(i32* %92)
  br label %97

94:                                               ; preds = %88
  %95 = load i32*, i32** %5, align 8
  %96 = call i8* @BN_bn2dec(i32* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i8* [ %93, %91 ], [ %96, %94 ]
  store i8* %98, i8** %14, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @bio_err, align 4
  %103 = call i32 (i32, i8*, ...) @BIO_printf(i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %157

104:                                              ; preds = %97
  %105 = load i32, i32* @bio_out, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = call i32 (i32, i8*, ...) @BIO_printf(i32 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %106)
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @OPENSSL_free(i8* %108)
  br label %156

110:                                              ; preds = %63
  br label %111

111:                                              ; preds = %152, %110
  %112 = load i8**, i8*** %4, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %155

115:                                              ; preds = %111
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i8**, i8*** %4, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @BN_hex2bn(i32** %5, i8* %121)
  store i32 %122, i32* %15, align 4
  br label %128

123:                                              ; preds = %115
  %124 = load i8**, i8*** %4, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @BN_dec2bn(i32** %5, i8* %126)
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* @bio_err, align 4
  %133 = load i8**, i8*** %4, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i32, i8*, ...) @BIO_printf(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %135)
  br label %157

137:                                              ; preds = %128
  %138 = load i32, i32* @bio_out, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @BN_print(i32 %138, i32* %139)
  %141 = load i32, i32* @bio_out, align 4
  %142 = load i8**, i8*** %4, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i64 @BN_is_prime_ex(i32* %145, i32 %146, i32* null, i32* null)
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %151 = call i32 (i32, i8*, ...) @BIO_printf(i32 %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %144, i8* %150)
  br label %152

152:                                              ; preds = %137
  %153 = load i8**, i8*** %4, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i32 1
  store i8** %154, i8*** %4, align 8
  br label %111

155:                                              ; preds = %111
  br label %156

156:                                              ; preds = %155, %104
  store i32 0, i32* %11, align 4
  br label %157

157:                                              ; preds = %156, %131, %101, %85, %76, %69, %30, %26
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @BN_free(i32* %158)
  %160 = load i32, i32* %11, align 4
  ret i32 %160
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @opt_arg(...) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_generate_prime_ex(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i8* @BN_bn2hex(i32*) #1

declare dso_local i8* @BN_bn2dec(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @BN_dec2bn(i32**, i8*) #1

declare dso_local i32 @BN_print(i32, i32*) #1

declare dso_local i64 @BN_is_prime_ex(i32*, i32, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
