; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_key_buf2dsa_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_key_buf2dsa_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, i32* }

@SHA_DIGEST_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ldns_key_buf2dsa_raw(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %115

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 8
  %24 = add nsw i32 64, %23
  store i32 %24, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 8
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %115

28:                                               ; preds = %17
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @SHA_DIGEST_LENGTH, align 8
  %31 = add i64 1, %30
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 3, %32
  %34 = sext i32 %33 to i64
  %35 = add i64 %31, %34
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %115

38:                                               ; preds = %28
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i64, i64* @SHA_DIGEST_LENGTH, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32* @BN_bin2bn(i8* %42, i32 %44, i32* null)
  store i32* %45, i32** %10, align 8
  %46 = load i64, i64* @SHA_DIGEST_LENGTH, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %7, align 4
  %56 = call i32* @BN_bin2bn(i8* %54, i32 %55, i32* null)
  store i32* %56, i32** %11, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* %7, align 4
  %65 = call i32* @BN_bin2bn(i8* %63, i32 %64, i32* null)
  store i32* %65, i32** %12, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* %7, align 4
  %74 = call i32* @BN_bin2bn(i8* %72, i32 %73, i32* null)
  store i32* %74, i32** %13, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %38
  %81 = load i32*, i32** %11, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32*, i32** %12, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32*, i32** %13, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = call %struct.TYPE_7__* (...) @DSA_new()
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %9, align 8
  %91 = icmp ne %struct.TYPE_7__* %90, null
  br i1 %91, label %101, label %92

92:                                               ; preds = %89, %86, %83, %80, %38
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @BN_free(i32* %93)
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @BN_free(i32* %95)
  %97 = load i32*, i32** %12, align 8
  %98 = call i32 @BN_free(i32* %97)
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @BN_free(i32* %99)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %115

101:                                              ; preds = %89
  %102 = load i32*, i32** %11, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  store i32* %102, i32** %104, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i32* %105, i32** %107, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32* %108, i32** %110, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %3, align 8
  br label %115

115:                                              ; preds = %101, %92, %37, %27, %16
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %116
}

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @DSA_new(...) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
