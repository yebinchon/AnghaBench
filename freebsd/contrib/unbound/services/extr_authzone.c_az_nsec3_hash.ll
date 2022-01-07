; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@N3HASHBUFLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*, i64, i32, i64, i32*, i64)* @az_nsec3_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @az_nsec3_hash(i32* %0, i64 %1, i32* %2, i64 %3, i32 %4, i64 %5, i32* %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %23 = load i32, i32* %14, align 4
  %24 = call i64 @nsec3_hash_algo_size_supported(i32 %23)
  store i64 %24, i64* %18, align 8
  %25 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @N3HASHBUFLEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = add nsw i64 %29, 256
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %19, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %20, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %17, align 8
  %35 = add i64 %33, %34
  %36 = icmp ugt i64 %35, %30
  br i1 %36, label %42, label %37

37:                                               ; preds = %8
  %38 = load i64, i64* %18, align 8
  %39 = load i64, i64* %17, align 8
  %40 = add i64 %38, %39
  %41 = icmp ugt i64 %40, %30
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %8
  store i64 0, i64* %9, align 8
  store i32 1, i32* %22, align 4
  br label %90

43:                                               ; preds = %37
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 0, i64* %9, align 8
  store i32 1, i32* %22, align 4
  br label %90

48:                                               ; preds = %43
  %49 = load i32*, i32** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @memmove(i8* %32, i32* %49, i64 %50)
  %52 = call i32 @query_dname_tolower(i8* %32)
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds i8, i8* %32, i64 %53
  %55 = load i32*, i32** %16, align 8
  %56 = load i64, i64* %17, align 8
  %57 = call i32 @memmove(i8* %54, i32* %55, i64 %56)
  %58 = load i32, i32* %14, align 4
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %17, align 8
  %61 = add i64 %59, %60
  %62 = load i32*, i32** %10, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = call i32 @secalgo_nsec3_hash(i32 %58, i8* %32, i64 %61, i8* %63)
  store i64 0, i64* %21, align 8
  br label %65

65:                                               ; preds = %85, %48
  %66 = load i64, i64* %21, align 8
  %67 = load i64, i64* %15, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = load i64, i64* %18, align 8
  %72 = call i32 @memmove(i8* %32, i32* %70, i64 %71)
  %73 = load i64, i64* %18, align 8
  %74 = getelementptr inbounds i8, i8* %32, i64 %73
  %75 = load i32*, i32** %16, align 8
  %76 = load i64, i64* %17, align 8
  %77 = call i32 @memmove(i8* %74, i32* %75, i64 %76)
  %78 = load i32, i32* %14, align 4
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* %17, align 8
  %81 = add i64 %79, %80
  %82 = load i32*, i32** %10, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 @secalgo_nsec3_hash(i32 %78, i8* %32, i64 %81, i8* %83)
  br label %85

85:                                               ; preds = %69
  %86 = load i64, i64* %21, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %21, align 8
  br label %65

88:                                               ; preds = %65
  %89 = load i64, i64* %18, align 8
  store i64 %89, i64* %9, align 8
  store i32 1, i32* %22, align 4
  br label %90

90:                                               ; preds = %88, %47, %42
  %91 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i64, i64* %9, align 8
  ret i64 %92
}

declare dso_local i64 @nsec3_hash_algo_size_supported(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memmove(i8*, i32*, i64) #1

declare dso_local i32 @query_dname_tolower(i8*) #1

declare dso_local i32 @secalgo_nsec3_hash(i32, i8*, i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
