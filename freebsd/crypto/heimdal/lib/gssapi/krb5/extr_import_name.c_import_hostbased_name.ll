; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_import_name.c_import_hostbased_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_import_name.c_import_hostbased_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@KRB5_PARSE_ILLCHAR = common dso_local global i64 0, align 8
@KRB5_PARSE_MALFORMED = common dso_local global i64 0, align 8
@GSS_S_BAD_NAME = common dso_local global i64 0, align 8
@MAGIC_HOSTBASED_NAME_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, %struct.TYPE_3__*, i64*)* @import_hostbased_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @import_hostbased_name(i64* %0, i32 %1, %struct.TYPE_3__* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* null, i32** %10, align 8
  store i8* null, i8** %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i8* @malloc(i32 %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i64, i64* @ENOMEM, align 8
  %24 = load i64*, i64** %6, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %25, i64* %5, align 8
  br label %81

26:                                               ; preds = %4
  %27 = load i8*, i8** %12, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i8* %27, i32 %30, i32 %33)
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %12, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 64)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %26
  %46 = load i8*, i8** %13, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %14, align 8
  br label %49

49:                                               ; preds = %45, %26
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i64 @krb5_make_principal(i32 %50, i32** %10, i32* null, i8* %51, i8* %52, i32* null)
  store i64 %53, i64* %11, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i64, i64* %11, align 8
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @KRB5_PARSE_ILLCHAR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %49
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @KRB5_PARSE_MALFORMED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %49
  %66 = load i64, i64* @GSS_S_BAD_NAME, align 8
  store i64 %66, i64* %5, align 8
  br label %81

67:                                               ; preds = %61
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %71, i64* %5, align 8
  br label %81

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* @MAGIC_HOSTBASED_NAME_TYPE, align 4
  %77 = call i32 @krb5_principal_set_type(i32 %74, i32* %75, i32 %76)
  %78 = load i32*, i32** %10, align 8
  %79 = ptrtoint i32* %78 to i64
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  store i64 0, i64* %5, align 8
  br label %81

81:                                               ; preds = %73, %70, %65, %22
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @krb5_make_principal(i32, i32**, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_principal_set_type(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
