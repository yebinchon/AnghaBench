; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_sig_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dsa/extr_dsa_ameth.c_dsa_sig_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"r:   \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"s:   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_4__*, i32, i32*)* @dsa_sig_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_sig_print(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @BIO_puts(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %66

24:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %66

25:                                               ; preds = %5
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %13, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32* @d2i_DSA_SIG(i32* null, i8** %13, i32 %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @DSA_SIG_get0(i32* %36, i32** %15, i32** %16)
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @BIO_write(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %57

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ASN1_bn_print(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %44, i32* null, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %57

49:                                               ; preds = %42
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ASN1_bn_print(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %51, i32* null, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %57

56:                                               ; preds = %49
  store i32 1, i32* %14, align 4
  br label %57

57:                                               ; preds = %56, %55, %48, %41
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @DSA_SIG_free(i32* %58)
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %6, align 4
  br label %66

61:                                               ; preds = %25
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @X509_signature_dump(i32* %62, %struct.TYPE_4__* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %57, %24, %23
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i32* @d2i_DSA_SIG(i32*, i8**, i32) #1

declare dso_local i32 @DSA_SIG_get0(i32*, i32**, i32**) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @ASN1_bn_print(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @DSA_SIG_free(i32*) #1

declare dso_local i32 @X509_signature_dump(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
