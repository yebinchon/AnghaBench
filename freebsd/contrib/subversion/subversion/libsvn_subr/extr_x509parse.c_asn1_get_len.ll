; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_asn1_get_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_asn1_get_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@SVN_ERR_ASN1_INVALID_LENGTH = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i32*)* @asn1_get_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @asn1_get_len(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %8 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @SVN_ERR_ASN1_OUT_OF_DATA, align 4
  %17 = call i32* @svn_error_create(i32 %16, i32* null, i32* null)
  store i32* %17, i32** %4, align 8
  br label %107

18:                                               ; preds = %3
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %26, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %91

32:                                               ; preds = %18
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 127
  switch i32 %37, label %87 [
    i32 1, label %38
    i32 2, label %59
  ]

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %39 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = icmp slt i64 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @SVN_ERR_ASN1_OUT_OF_DATA, align 4
  %48 = call i32* @svn_error_create(i32 %47, i32* null, i32* null)
  store i32* %48, i32** %4, align 8
  br label %107

49:                                               ; preds = %38
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %58, i8** %56, align 8
  br label %90

59:                                               ; preds = %32
  %60 = load i8*, i8** %6, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = ptrtoint i8* %60 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = icmp slt i64 %65, 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @SVN_ERR_ASN1_OUT_OF_DATA, align 4
  %69 = call i32* @svn_error_create(i32 %68, i32* null, i32* null)
  store i32* %69, i32** %4, align 8
  br label %107

70:                                               ; preds = %59
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 8
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %76, %81
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  store i8* %86, i8** %84, align 8
  br label %90

87:                                               ; preds = %32
  %88 = load i32, i32* @SVN_ERR_ASN1_INVALID_LENGTH, align 4
  %89 = call i32* @svn_error_create(i32 %88, i32* null, i32* null)
  store i32* %89, i32** %4, align 8
  br label %107

90:                                               ; preds = %70, %49
  br label %91

91:                                               ; preds = %90, %25
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = load i8*, i8** %6, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = ptrtoint i8* %95 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = icmp sgt i64 %94, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load i32, i32* @SVN_ERR_ASN1_OUT_OF_DATA, align 4
  %104 = call i32* @svn_error_create(i32 %103, i32* null, i32* null)
  store i32* %104, i32** %4, align 8
  br label %107

105:                                              ; preds = %91
  %106 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %106, i32** %4, align 8
  br label %107

107:                                              ; preds = %105, %102, %87, %67, %46, %15
  %108 = load i32*, i32** %4, align 8
  ret i32* %108
}

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
