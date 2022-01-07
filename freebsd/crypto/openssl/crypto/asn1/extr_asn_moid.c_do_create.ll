; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn_moid.c_do_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn_moid.c_do_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_DO_CREATE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @do_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_create(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strrchr(i8* %11, i8 signext 44)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %8, align 8
  br label %95

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %106

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @ossl_isspace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  br label %28

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %42, %36
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @ossl_isspace(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  br label %37

45:                                               ; preds = %37
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %9, align 8
  br label %48

48:                                               ; preds = %58, %45
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @ossl_isspace(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %106

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %9, align 8
  br label %48

61:                                               ; preds = %48
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = add nsw i64 %68, 1
  %70 = trunc i64 %69 to i32
  %71 = call i8* @OPENSSL_malloc(i32 %70)
  store i8* %71, i8** %10, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i32, i32* @ASN1_F_DO_CREATE, align 4
  %75 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %76 = call i32 @ASN1err(i32 %74, i32 %75)
  store i32 0, i32* %3, align 4
  br label %106

77:                                               ; preds = %61
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memcpy(i8* %78, i8* %79, i32 %85)
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = getelementptr inbounds i8, i8* %87, i64 %92
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %10, align 8
  store i8* %94, i8** %7, align 8
  br label %95

95:                                               ; preds = %77, %15
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @OBJ_create(i8* %96, i8* %97, i8* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @OPENSSL_free(i8* %100)
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @NID_undef, align 4
  %104 = icmp ne i32 %102, %103
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %95, %73, %57, %26
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @ossl_isspace(i8 signext) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @OBJ_create(i8*, i8*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
