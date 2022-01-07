; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@ASN1_BIT_STRING = common dso_local global i32 0, align 4
@SVN_ERR_X509_CERT_INVALID_SIGNATURE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, %struct.TYPE_3__*)* @x509_get_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x509_get_sig(i8** %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @ASN1_BIT_STRING, align 4
  %13 = call i32* @asn1_get_tag(i8** %10, i8* %11, i32* %9, i32 %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_SIGNATURE, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @svn_error_create(i32 %17, i32* %18, i32* null)
  store i32* %19, i32** %4, align 8
  br label %51

20:                                               ; preds = %3
  %21 = load i32, i32* @ASN1_BIT_STRING, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %9, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %20
  %35 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_SIGNATURE, align 4
  %36 = call i32* @svn_error_create(i32 %35, i32* null, i32* null)
  store i32* %36, i32** %4, align 8
  br label %51

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %46, align 8
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %37, %34, %16
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i32* @asn1_get_tag(i8**, i8*, i32*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
