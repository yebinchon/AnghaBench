; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509_get_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i32 }

@ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@ASN1_SEQUENCE = common dso_local global i32 0, align 4
@SVN_ERR_X509_CERT_INVALID_NAME = common dso_local global i32 0, align 4
@ASN1_OID = common dso_local global i32 0, align 4
@SVN_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@ASN1_BMP_STRING = common dso_local global i8 0, align 1
@ASN1_UTF8_STRING = common dso_local global i8 0, align 1
@ASN1_T61_STRING = common dso_local global i8 0, align 1
@ASN1_PRINTABLE_STRING = common dso_local global i8 0, align 1
@ASN1_IA5_STRING = common dso_local global i8 0, align 1
@ASN1_UNIVERSAL_STRING = common dso_local global i8 0, align 1
@SVN_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@SVN_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, %struct.TYPE_4__*, i32*)* @x509_get_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x509_get_attribute(i8** %0, i8* %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @ASN1_CONSTRUCTED, align 4
  %17 = load i32, i32* @ASN1_SEQUENCE, align 4
  %18 = or i32 %16, %17
  %19 = call i32* @asn1_get_tag(i8** %14, i8* %15, i32* %11, i32 %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_NAME, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32* @svn_error_create(i32 %23, i32* %24, i32* null)
  store i32* %25, i32** %5, align 8
  br label %175

26:                                               ; preds = %4
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %12, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* @ASN1_OID, align 4
  %39 = call i32* @asn1_get_tag(i8** %34, i8* %35, i32* %37, i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_NAME, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32* @svn_error_create(i32 %43, i32* %44, i32* null)
  store i32* %45, i32** %5, align 8
  br label %175

46:                                               ; preds = %26
  %47 = load i32, i32* @ASN1_OID, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8**, i8*** %6, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = sext i32 %56 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %57, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %61 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = icmp slt i64 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %46
  %69 = load i32, i32* @SVN_ERR_ASN1_OUT_OF_DATA, align 4
  %70 = call i32* @svn_error_create(i32 %69, i32* null, i32* null)
  store i32* %70, i32** %10, align 8
  %71 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_NAME, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = call i32* @svn_error_create(i32 %71, i32* %72, i32* null)
  store i32* %73, i32** %5, align 8
  br label %175

74:                                               ; preds = %46
  %75 = load i8**, i8*** %6, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @ASN1_BMP_STRING, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %128

82:                                               ; preds = %74
  %83 = load i8**, i8*** %6, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @ASN1_UTF8_STRING, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %128

90:                                               ; preds = %82
  %91 = load i8**, i8*** %6, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @ASN1_T61_STRING, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %128

98:                                               ; preds = %90
  %99 = load i8**, i8*** %6, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @ASN1_PRINTABLE_STRING, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %128

106:                                              ; preds = %98
  %107 = load i8**, i8*** %6, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @ASN1_IA5_STRING, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %106
  %115 = load i8**, i8*** %6, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @ASN1_UNIVERSAL_STRING, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load i32, i32* @SVN_ERR_ASN1_UNEXPECTED_TAG, align 4
  %124 = call i32* @svn_error_create(i32 %123, i32* null, i32* null)
  store i32* %124, i32** %10, align 8
  %125 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_NAME, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = call i32* @svn_error_create(i32 %125, i32* %126, i32* null)
  store i32* %127, i32** %5, align 8
  br label %175

128:                                              ; preds = %114, %106, %98, %90, %82, %74
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store %struct.TYPE_5__* %130, %struct.TYPE_5__** %13, align 8
  %131 = load i8**, i8*** %6, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %131, align 8
  %134 = load i8, i8* %132, align 1
  %135 = zext i8 %134 to i32
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i8**, i8*** %6, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = call i32* @asn1_get_len(i8** %138, i8* %139, i32* %141)
  store i32* %142, i32** %10, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %128
  %146 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_NAME, align 4
  %147 = load i32*, i32** %10, align 8
  %148 = call i32* @svn_error_create(i32 %146, i32* %147, i32* null)
  store i32* %148, i32** %5, align 8
  br label %175

149:                                              ; preds = %128
  %150 = load i8**, i8*** %6, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i8**, i8*** %6, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = sext i32 %156 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %157, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32* null, i32** %162, align 8
  %163 = load i8**, i8*** %6, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = icmp ne i8* %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %149
  %168 = load i32, i32* @SVN_ERR_ASN1_LENGTH_MISMATCH, align 4
  %169 = call i32* @svn_error_create(i32 %168, i32* null, i32* null)
  store i32* %169, i32** %10, align 8
  %170 = load i32, i32* @SVN_ERR_X509_CERT_INVALID_NAME, align 4
  %171 = load i32*, i32** %10, align 8
  %172 = call i32* @svn_error_create(i32 %170, i32* %171, i32* null)
  store i32* %172, i32** %5, align 8
  br label %175

173:                                              ; preds = %149
  %174 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %174, i32** %5, align 8
  br label %175

175:                                              ; preds = %173, %167, %145, %122, %68, %42, %22
  %176 = load i32*, i32** %5, align 8
  ret i32* %176
}

declare dso_local i32* @asn1_get_tag(i8**, i8*, i32*, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @asn1_get_len(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
