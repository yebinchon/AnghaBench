; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@ASN1_SET = common dso_local global i32 0, align 4
@SVN_ERR_X509_CERT_INVALID_NAME = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, %struct.TYPE_4__*, i32*)* @x509_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x509_get_name(i8** %0, i8* %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @ASN1_CONSTRUCTED, align 4
  %17 = load i32, i32* @ASN1_SET, align 4
  %18 = or i32 %16, %17
  %19 = call i32* @asn1_get_tag(i8** %14, i8* %15, i32* %11, i32 %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %4
  %26 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_NAME, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = call i32* @svn_error_create(i32 %26, i32* %27, i32* null)
  store i32* %28, i32** %5, align 8
  br label %82

29:                                               ; preds = %22
  %30 = load i8**, i8*** %6, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %12, align 8
  br label %35

35:                                               ; preds = %54, %29
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %13, align 8
  br label %54

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  %47 = call i8* @apr_palloc(i32* %46, i32 8)
  %48 = bitcast i8* %47 to %struct.TYPE_4__*
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %13, align 8
  br label %54

54:                                               ; preds = %45, %43
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @x509_get_attribute(i8** %55, i8* %56, %struct.TYPE_4__* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %35

61:                                               ; preds = %35
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %5, align 8
  br label %82

68:                                               ; preds = %61
  %69 = load i32*, i32** %9, align 8
  %70 = call i8* @apr_palloc(i32* %69, i32 8)
  %71 = bitcast i8* %70 to %struct.TYPE_4__*
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %73, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32* @x509_get_name(i8** %74, i8* %75, %struct.TYPE_4__* %78, i32* %79)
  %81 = call i32* @svn_error_trace(i32* %80)
  store i32* %81, i32** %5, align 8
  br label %82

82:                                               ; preds = %68, %66, %25
  %83 = load i32*, i32** %5, align 8
  ret i32* %83
}

declare dso_local i32* @asn1_get_tag(i8**, i8*, i32*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @x509_get_attribute(i8**, i8*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
