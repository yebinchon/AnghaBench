; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_version.c_version_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_version.c_version_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@version_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Extra parameters given.\0A\00", align 1
@OPENSSL_VERSION_NUMBER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@OPENSSL_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s (Library: %s)\0A\00", align 1
@OPENSSL_VERSION_TEXT = common dso_local global i8* null, align 8
@OPENSSL_BUILT_ON = common dso_local global i32 0, align 4
@OPENSSL_PLATFORM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"options:  \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@OPENSSL_CFLAGS = common dso_local global i32 0, align 4
@OPENSSL_DIR = common dso_local global i32 0, align 4
@OPENSSL_ENGINES_DIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"Seeding source:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @version_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i8**, i8*** %4, align 8
  %19 = load i32, i32* @version_options, align 4
  %20 = call i8* @opt_init(i32 %17, i8** %18, i32 %19)
  store i8* %20, i8** %15, align 8
  br label %21

21:                                               ; preds = %43, %2
  %22 = call i32 (...) @opt_next()
  store i32 %22, i32* %16, align 4
  %23 = icmp ne i32 %22, 135
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i32, i32* %16, align 4
  switch i32 %25, label %43 [
    i32 135, label %26
    i32 134, label %26
    i32 132, label %31
    i32 138, label %34
    i32 137, label %35
    i32 136, label %36
    i32 133, label %37
    i32 131, label %38
    i32 130, label %39
    i32 129, label %40
    i32 128, label %41
    i32 139, label %42
  ]

26:                                               ; preds = %24, %24
  br label %27

27:                                               ; preds = %47, %26
  %28 = load i32, i32* @bio_err, align 4
  %29 = load i8*, i8** %15, align 8
  %30 = call i32 (i32, i8*, ...) @BIO_printf(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %131

31:                                               ; preds = %24
  %32 = load i32, i32* @version_options, align 4
  %33 = call i32 @opt_help(i32 %32)
  store i32 0, i32* %5, align 4
  br label %131

34:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  store i32 1, i32* %6, align 4
  br label %43

35:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  store i32 1, i32* %6, align 4
  br label %43

36:                                               ; preds = %24
  store i32 1, i32* %14, align 4
  store i32 1, i32* %6, align 4
  br label %43

37:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %43

38:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  store i32 1, i32* %6, align 4
  br label %43

39:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  store i32 1, i32* %6, align 4
  br label %43

40:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %43

41:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  store i32 1, i32* %6, align 4
  br label %43

42:                                               ; preds = %24
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %24, %42, %41, %40, %39, %38, %37, %36, %35, %34
  br label %21

44:                                               ; preds = %21
  %45 = call i64 (...) @opt_num_rest()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @bio_err, align 4
  %49 = call i32 (i32, i8*, ...) @BIO_printf(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %27

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = call i64 (...) @OpenSSL_version_num()
  %59 = load i64, i64* @OPENSSL_VERSION_NUMBER, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @OPENSSL_VERSION, align 4
  %63 = call i8* @OpenSSL_version(i32 %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %70

65:                                               ; preds = %57
  %66 = load i8*, i8** @OPENSSL_VERSION_TEXT, align 8
  %67 = load i32, i32* @OPENSSL_VERSION, align 4
  %68 = call i8* @OpenSSL_version(i32 %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %66, i8* %68)
  br label %70

70:                                               ; preds = %65, %61
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @OPENSSL_BUILT_ON, align 4
  %76 = call i8* @OpenSSL_version(i32 %75)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @OPENSSL_PLATFORM, align 4
  %83 = call i8* @OpenSSL_version(i32 %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %90 = call i8* (...) @BN_options()
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %90)
  %92 = call i8* (...) @MD2_options()
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  %94 = call i8* (...) @RC4_options()
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  %96 = call i8* (...) @DES_options()
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %96)
  %98 = call i8* (...) @IDEA_options()
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = call i8* (...) @BF_options()
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %103

103:                                              ; preds = %88, %85
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @OPENSSL_CFLAGS, align 4
  %108 = call i8* @OpenSSL_version(i32 %107)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @OPENSSL_DIR, align 4
  %115 = call i8* @OpenSSL_version(i32 %114)
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* @OPENSSL_ENGINES_DIR, align 4
  %122 = call i8* @OpenSSL_version(i32 %121)
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %124
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %31, %27
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i64 @opt_num_rest(...) #1

declare dso_local i64 @OpenSSL_version_num(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @OpenSSL_version(i32) #1

declare dso_local i8* @BN_options(...) #1

declare dso_local i8* @MD2_options(...) #1

declare dso_local i8* @RC4_options(...) #1

declare dso_local i8* @DES_options(...) #1

declare dso_local i8* @IDEA_options(...) #1

declare dso_local i8* @BF_options(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
