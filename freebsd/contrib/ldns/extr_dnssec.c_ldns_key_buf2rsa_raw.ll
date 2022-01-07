; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_key_buf2rsa_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_key_buf2rsa_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ldns_key_buf2rsa_raw(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %92

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %92

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @memmove(i64* %8, i8* %27, i32 2)
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @ntohs(i64 %29)
  store i64 %30, i64* %7, align 8
  store i64 3, i64* %6, align 8
  br label %36

31:                                               ; preds = %15
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  store i64 %35, i64* %7, align 8
  store i64 1, i64* %6, align 8
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %38, %39
  %41 = add i64 %40, 1
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %92

44:                                               ; preds = %36
  %45 = call i32* (...) @BN_new()
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %92

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @BN_bin2bn(i8* %52, i32 %54, i32* %55)
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %6, align 8
  %60 = call i32* (...) @BN_new()
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %49
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @BN_free(i32* %64)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %92

66:                                               ; preds = %49
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @BN_bin2bn(i8* %69, i32 %73, i32* %74)
  %76 = call %struct.TYPE_6__* (...) @RSA_new()
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %9, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = icmp ne %struct.TYPE_6__* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %66
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @BN_free(i32* %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @BN_free(i32* %82)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %92

84:                                               ; preds = %66
  %85 = load i32*, i32** %10, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %3, align 8
  br label %92

92:                                               ; preds = %84, %79, %63, %48, %43, %24, %14
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %93
}

declare dso_local i32 @memmove(i64*, i8*, i32) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local %struct.TYPE_6__* @RSA_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
