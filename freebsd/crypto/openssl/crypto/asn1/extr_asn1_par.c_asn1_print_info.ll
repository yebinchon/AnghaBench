; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_par.c_asn1_print_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_par.c_asn1_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@asn1_print_info.fmt = internal constant [6 x i8] c"%-18s\00", align 1
@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cons: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"prim: \00", align 1
@V_ASN1_PRIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"priv [ %d ] \00", align 1
@V_ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"cont [ %d ]\00", align 1
@V_ASN1_APPLICATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"appl [ %d ]\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"<ASN1 %d>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32)* @asn1_print_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_print_info(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [128 x i8], align 16
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %20

19:                                               ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = call i32 @BIO_write(i32* %21, i8* %22, i32 6)
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %80

26:                                               ; preds = %20
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @BIO_indent(i32* %27, i32 %28, i32 128)
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  store i8* %30, i8** %13, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @V_ASN1_PRIVATE, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @V_ASN1_PRIVATE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @BIO_snprintf(i8* %37, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %73

40:                                               ; preds = %26
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @V_ASN1_CONTEXT_SPECIFIC, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @V_ASN1_CONTEXT_SPECIFIC, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @BIO_snprintf(i8* %47, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %72

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @V_ASN1_APPLICATION, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @V_ASN1_APPLICATION, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @BIO_snprintf(i8* %57, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %71

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 30
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @BIO_snprintf(i8* %64, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  br label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  %69 = call i8* @ASN1_tag2str(i32 %68)
  store i8* %69, i8** %13, align 8
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %70, %56
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %36
  %74 = load i32*, i32** %7, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = call i64 @BIO_printf(i32* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @asn1_print_info.fmt, i64 0, i64 0), i8* %75)
  %77 = icmp sle i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %80

79:                                               ; preds = %73
  store i32 1, i32* %6, align 4
  br label %81

80:                                               ; preds = %78, %25
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @BIO_indent(i32*, i32, i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @ASN1_tag2str(i32) #1

declare dso_local i64 @BIO_printf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
