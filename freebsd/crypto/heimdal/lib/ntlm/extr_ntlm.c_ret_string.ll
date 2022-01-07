; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_ret_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ntlm/extr_ntlm.c_ret_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i64, i8**)* @ret_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ret_string(i32* %0, i32 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = add i64 %12, 1
  %14 = call i8* @malloc(i64 %13)
  %15 = load i8**, i8*** %9, align 8
  store i8* %14, i8** %15, align 8
  %16 = load i8**, i8*** %9, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* @ENOMEM, align 8
  store i64 %20, i64* %5, align 8
  br label %78

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @krb5_storage_read(i32* %22, i8* %24, i64 %25)
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @CHECK(i32 %26, i64 %27)
  %29 = load i8**, i8*** %9, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %21
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %67, %35
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = udiv i64 %38, 2
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %36
  %42 = load i8**, i8*** %9, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = mul i64 %44, 2
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i8**, i8*** %9, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 %47, i8* %51, align 1
  %52 = load i8**, i8*** %9, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = mul i64 %54, 2
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %41
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i8**, i8*** %9, align 8
  store i8* null, i8** %64, align 8
  %65 = load i64, i64* @EINVAL, align 8
  store i64 %65, i64* %5, align 8
  br label %78

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %11, align 8
  br label %36

70:                                               ; preds = %36
  %71 = load i8**, i8*** %9, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %70, %21
  store i64 0, i64* %10, align 8
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %10, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %76, %60, %19
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @CHECK(i32, i64) #1

declare dso_local i32 @krb5_storage_read(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
