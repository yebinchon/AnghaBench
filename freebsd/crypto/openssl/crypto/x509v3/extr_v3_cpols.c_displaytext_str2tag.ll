; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_cpols.c_displaytext_str2tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_cpols.c_displaytext_str2tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ASN1_VISIBLESTRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@V_ASN1_UTF8STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"UTF8String\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@V_ASN1_BMPSTRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"BMPSTRING\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"VISIBLE\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"VISIBLESTRING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @displaytext_str2tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @displaytext_str2tag(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @displaytext_get_tag_len(i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @V_ASN1_VISIBLESTRING, align 4
  store i32 %13, i32* %3, align 4
  br label %85

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @V_ASN1_UTF8STRING, align 4
  store i32 %26, i32* %3, align 4
  br label %85

27:                                               ; preds = %20, %14
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %29, 10
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @V_ASN1_UTF8STRING, align 4
  store i32 %37, i32* %3, align 4
  br label %85

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @V_ASN1_BMPSTRING, align 4
  store i32 %48, i32* %3, align 4
  br label %85

49:                                               ; preds = %42, %38
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %51, 9
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @strncmp(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @V_ASN1_BMPSTRING, align 4
  store i32 %59, i32* %3, align 4
  br label %85

60:                                               ; preds = %53, %49
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, 7
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @strncmp(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @V_ASN1_VISIBLESTRING, align 4
  store i32 %70, i32* %3, align 4
  br label %85

71:                                               ; preds = %64, %60
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %73, 13
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @strncmp(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @V_ASN1_VISIBLESTRING, align 4
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %75, %71
  %83 = load i32*, i32** %5, align 8
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* @V_ASN1_VISIBLESTRING, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %80, %69, %58, %47, %36, %25, %12
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @displaytext_get_tag_len(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
