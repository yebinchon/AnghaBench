; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }

@ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@SVN_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8
@SVN_ERR_X509_CERT_INVALID_VERSION = common dso_local global i32 0, align 4
@SVN_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i8**, i8*, i32*)* @x509_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @x509_get_version(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @ASN1_CONTEXT_SPECIFIC, align 4
  %13 = load i32, i32* @ASN1_CONSTRUCTED, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.TYPE_11__* @asn1_get_tag(i8** %10, i8* %11, i32* %9, i32 %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SVN_ERR_ASN1_UNEXPECTED_TAG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = call i32 @svn_error_clear(%struct.TYPE_11__* %25)
  %27 = load i32*, i32** %7, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %4, align 8
  br label %61

29:                                               ; preds = %18
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = call %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__* %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %4, align 8
  br label %61

32:                                               ; preds = %3
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %6, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call %struct.TYPE_11__* @asn1_get_int(i8** %38, i8* %39, i32* %40)
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %8, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_VERSION, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = call %struct.TYPE_11__* @svn_error_create(i32 %45, %struct.TYPE_11__* %46, i32* null)
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %4, align 8
  br label %61

48:                                               ; preds = %32
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @SVN_ERR_ASN1_LENGTH_MISMATCH, align 4
  %55 = call %struct.TYPE_11__* @svn_error_create(i32 %54, %struct.TYPE_11__* null, i32* null)
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %8, align 8
  %56 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_VERSION, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = call %struct.TYPE_11__* @svn_error_create(i32 %56, %struct.TYPE_11__* %57, i32* null)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %4, align 8
  br label %61

59:                                               ; preds = %48
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %4, align 8
  br label %61

61:                                               ; preds = %59, %53, %44, %29, %24
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %62
}

declare dso_local %struct.TYPE_11__* @asn1_get_tag(i8**, i8*, i32*, i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @asn1_get_int(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_error_create(i32, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
