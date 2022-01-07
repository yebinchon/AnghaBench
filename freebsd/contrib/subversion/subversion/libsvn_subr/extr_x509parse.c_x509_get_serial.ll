; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@SVN_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@SVN_ERR_X509_CERT_INVALID_SERIAL = common dso_local global i32 0, align 4
@ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@ASN1_PRIMITIVE = common dso_local global i32 0, align 4
@ASN1_INTEGER = common dso_local global i8 0, align 1
@SVN_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, %struct.TYPE_3__*)* @x509_get_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x509_get_serial(i8** %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = ptrtoint i8* %9 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp slt i64 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @SVN_ERR_ASN1_OUT_OF_DATA, align 4
  %18 = call i32* @svn_error_create(i32 %17, i32* null, i32* null)
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_SERIAL, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @svn_error_create(i32 %19, i32* %20, i32* null)
  store i32* %21, i32** %4, align 8
  br label %78

22:                                               ; preds = %3
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, i32* @ASN1_CONTEXT_SPECIFIC, align 4
  %28 = load i32, i32* @ASN1_PRIMITIVE, align 4
  %29 = or i32 %27, %28
  %30 = or i32 %29, 2
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %22
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @ASN1_INTEGER, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* @SVN_ERR_ASN1_UNEXPECTED_TAG, align 4
  %42 = call i32* @svn_error_create(i32 %41, i32* null, i32* null)
  store i32* %42, i32** %8, align 8
  %43 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_SERIAL, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32* @svn_error_create(i32 %43, i32* %44, i32* null)
  store i32* %45, i32** %4, align 8
  br label %78

46:                                               ; preds = %32, %22
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %47, align 8
  %50 = load i8, i8* %48, align 1
  %51 = zext i8 %50 to i32
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32* @asn1_get_len(i8** %54, i8* %55, i32* %57)
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_SERIAL, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32* @svn_error_create(i32 %62, i32* %63, i32* null)
  store i32* %64, i32** %4, align 8
  br label %78

65:                                               ; preds = %46
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = sext i32 %72 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %73, align 8
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %77, i32** %4, align 8
  br label %78

78:                                               ; preds = %65, %61, %40, %16
  %79 = load i32*, i32** %4, align 8
  ret i32* %79
}

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @asn1_get_len(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
