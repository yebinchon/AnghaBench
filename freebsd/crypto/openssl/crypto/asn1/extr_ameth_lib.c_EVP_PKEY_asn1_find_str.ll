; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_ameth_lib.c_EVP_PKEY_asn1_find_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_ameth_lib.c_EVP_PKEY_asn1_find_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@ASN1_PKEY_ALIAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @EVP_PKEY_asn1_find_str(i32** %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32**, i32*** %5, align 8
  %18 = icmp ne i32** %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_5__* @ENGINE_pkey_asn1_find_str(i32** %10, i8* %20, i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %9, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @ENGINE_init(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @ENGINE_free(i32* %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32**, i32*** %5, align 8
  store i32* %33, i32** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %4, align 8
  br label %73

36:                                               ; preds = %19
  %37 = load i32**, i32*** %5, align 8
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %36, %16
  %39 = call i32 (...) @EVP_PKEY_asn1_get_count()
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %71, %53, %38
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %8, align 4
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.TYPE_5__* @EVP_PKEY_asn1_get0(i32 %45)
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ASN1_PKEY_ALIAS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %40

54:                                               ; preds = %44
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @strncasecmp(i8* %64, i8* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %4, align 8
  br label %73

71:                                               ; preds = %61, %54
  br label %40

72:                                               ; preds = %40
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %73

73:                                               ; preds = %72, %69, %30
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %74
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @ENGINE_pkey_asn1_find_str(i32**, i8*, i32) #1

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local i32 @ENGINE_free(i32*) #1

declare dso_local i32 @EVP_PKEY_asn1_get_count(...) #1

declare dso_local %struct.TYPE_5__* @EVP_PKEY_asn1_get0(i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
