; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_query_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ts.c_query_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_TEXT = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i8*, i32, i32, i8*, i8*, i32)* @query_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_command(i8* %0, i8* %1, i32* %2, i8* %3, i32 %4, i32 %5, i8* %6, i8* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  %24 = load i8*, i8** %16, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %9
  %27 = load i8*, i8** %16, align 8
  %28 = load i32, i32* @FORMAT_ASN1, align 4
  %29 = call i32* @bio_open_default(i8* %27, i8 signext 114, i32 %28)
  store i32* %29, i32** %21, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %86

32:                                               ; preds = %26
  %33 = load i32*, i32** %21, align 8
  %34 = call i32* @d2i_TS_REQ_bio(i32* %33, i32* null)
  store i32* %34, i32** %20, align 8
  br label %52

35:                                               ; preds = %9
  %36 = load i8*, i8** %11, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* @FORMAT_ASN1, align 4
  %41 = call i32* @bio_open_default(i8* %39, i8 signext 114, i32 %40)
  store i32* %41, i32** %22, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %86

44:                                               ; preds = %38, %35
  %45 = load i32*, i32** %22, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32* @create_query(i32* %45, i8* %46, i32* %47, i8* %48, i32 %49, i32 %50)
  store i32* %51, i32** %20, align 8
  br label %52

52:                                               ; preds = %44, %32
  %53 = load i32*, i32** %20, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %86

56:                                               ; preds = %52
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i8*, i8** %17, align 8
  %61 = load i32, i32* @FORMAT_TEXT, align 4
  %62 = call i32* @bio_open_default(i8* %60, i8 signext 119, i32 %61)
  store i32* %62, i32** %23, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %86

65:                                               ; preds = %59
  %66 = load i32*, i32** %23, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 @TS_REQ_print_bio(i32* %66, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %86

71:                                               ; preds = %65
  br label %85

72:                                               ; preds = %56
  %73 = load i8*, i8** %17, align 8
  %74 = load i32, i32* @FORMAT_ASN1, align 4
  %75 = call i32* @bio_open_default(i8* %73, i8 signext 119, i32 %74)
  store i32* %75, i32** %23, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %86

78:                                               ; preds = %72
  %79 = load i32*, i32** %23, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = call i32 @i2d_TS_REQ_bio(i32* %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  br label %86

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %71
  store i32 1, i32* %19, align 4
  br label %86

86:                                               ; preds = %85, %83, %77, %70, %64, %55, %43, %31
  %87 = load i32, i32* @bio_err, align 4
  %88 = call i32 @ERR_print_errors(i32 %87)
  %89 = load i32*, i32** %21, align 8
  %90 = call i32 @BIO_free_all(i32* %89)
  %91 = load i32*, i32** %22, align 8
  %92 = call i32 @BIO_free_all(i32* %91)
  %93 = load i32*, i32** %23, align 8
  %94 = call i32 @BIO_free_all(i32* %93)
  %95 = load i32*, i32** %20, align 8
  %96 = call i32 @TS_REQ_free(i32* %95)
  %97 = load i32, i32* %19, align 4
  ret i32 %97
}

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @d2i_TS_REQ_bio(i32*, i32*) #1

declare dso_local i32* @create_query(i32*, i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @TS_REQ_print_bio(i32*, i32*) #1

declare dso_local i32 @i2d_TS_REQ_bio(i32*, i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @TS_REQ_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
