; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_alt.c_v2i_GENERAL_NAME_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_alt.c_v2i_GENERAL_NAME_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@X509V3_F_V2I_GENERAL_NAME_EX = common dso_local global i32 0, align 4
@X509V3_R_MISSING_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"email\00", align 1
@GEN_EMAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@GEN_URI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"DNS\00", align 1
@GEN_DNS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"RID\00", align 1
@GEN_RID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@GEN_IPADD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"dirName\00", align 1
@GEN_DIRNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"otherName\00", align 1
@GEN_OTHERNAME = common dso_local global i32 0, align 4
@X509V3_R_UNSUPPORTED_OPTION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"name=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @v2i_GENERAL_NAME_ex(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %13, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @X509V3_F_V2I_GENERAL_NAME_EX, align 4
  %25 = load i32, i32* @X509V3_R_MISSING_VALUE, align 4
  %26 = call i32 @X509V3err(i32 %24, i32 %25)
  store i32* null, i32** %6, align 8
  br label %89

27:                                               ; preds = %5
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @name_cmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @GEN_EMAIL, align 4
  store i32 %32, i32* %12, align 4
  br label %81

33:                                               ; preds = %27
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @name_cmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @GEN_URI, align 4
  store i32 %38, i32* %12, align 4
  br label %80

39:                                               ; preds = %33
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @name_cmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @GEN_DNS, align 4
  store i32 %44, i32* %12, align 4
  br label %79

45:                                               ; preds = %39
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @name_cmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @GEN_RID, align 4
  store i32 %50, i32* %12, align 4
  br label %78

51:                                               ; preds = %45
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @name_cmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @GEN_IPADD, align 4
  store i32 %56, i32* %12, align 4
  br label %77

57:                                               ; preds = %51
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @name_cmp(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @GEN_DIRNAME, align 4
  store i32 %62, i32* %12, align 4
  br label %76

63:                                               ; preds = %57
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @name_cmp(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @GEN_OTHERNAME, align 4
  store i32 %68, i32* %12, align 4
  br label %75

69:                                               ; preds = %63
  %70 = load i32, i32* @X509V3_F_V2I_GENERAL_NAME_EX, align 4
  %71 = load i32, i32* @X509V3_R_UNSUPPORTED_OPTION, align 4
  %72 = call i32 @X509V3err(i32 %70, i32 %71)
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  store i32* null, i32** %6, align 8
  br label %89

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %61
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %49
  br label %79

79:                                               ; preds = %78, %43
  br label %80

80:                                               ; preds = %79, %37
  br label %81

81:                                               ; preds = %80, %31
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32* @a2i_GENERAL_NAME(i32* %82, i32* %83, i32* %84, i32 %85, i8* %86, i32 %87)
  store i32* %88, i32** %6, align 8
  br label %89

89:                                               ; preds = %81, %69, %23
  %90 = load i32*, i32** %6, align 8
  ret i32* %90
}

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32 @name_cmp(i8*, i8*) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i32* @a2i_GENERAL_NAME(i32*, i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
