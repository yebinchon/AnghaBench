; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_print_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_hx509_print_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"    issuer:  \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"    subject: \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"    serial: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"    keyusage: \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_print_cert(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32*, i32** @stderr, align 8
  store i32* %15, i32** %7, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @hx509_cert_get_issuer(i32 %17, i32* %8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %82

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @hx509_name_to_string(i32 %24, i8** %9)
  %26 = call i32 @hx509_name_free(i32* %8)
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @hx509_cert_get_subject(i32 %32, i32* %8)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %82

38:                                               ; preds = %23
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @hx509_name_to_string(i32 %39, i8** %9)
  %41 = call i32 @hx509_name_free(i32* %8)
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @hx509_cert_get_serialnumber(i32 %47, i32* %11)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %82

53:                                               ; preds = %38
  %54 = call i32 @der_print_hex_heim_integer(i32* %11, i8** %9)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %82

59:                                               ; preds = %53
  %60 = call i32 @der_free_heim_integer(i32* %11)
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @free(i8* %64)
  %66 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @hx509_cert_keyusage_print(i32 %67, i32 %68, i8** %9)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @free(i8* %76)
  br label %81

78:                                               ; preds = %59
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 (i32*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %72
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %57, %51, %36, %21
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @hx509_cert_get_issuer(i32, i32*) #1

declare dso_local i32 @hx509_name_to_string(i32, i8**) #1

declare dso_local i32 @hx509_name_free(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @hx509_cert_get_subject(i32, i32*) #1

declare dso_local i32 @hx509_cert_get_serialnumber(i32, i32*) #1

declare dso_local i32 @der_print_hex_heim_integer(i32*, i8**) #1

declare dso_local i32 @der_free_heim_integer(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @hx509_cert_keyusage_print(i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
