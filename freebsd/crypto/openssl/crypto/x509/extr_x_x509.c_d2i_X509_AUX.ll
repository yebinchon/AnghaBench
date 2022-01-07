; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_x509.c_d2i_X509_AUX.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_x509.c_d2i_X509_AUX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @d2i_X509_AUX(%struct.TYPE_7__** %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8**, i8*** %6, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %14 = icmp eq %struct.TYPE_7__** %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  store i32 1, i32* %10, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.TYPE_7__* @d2i_X509(%struct.TYPE_7__** %21, i8** %8, i64 %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %9, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %61

27:                                               ; preds = %20
  %28 = load i8*, i8** %8, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %28 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = load i64, i64* %7, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @d2i_X509_CERT_AUX(i32* %40, i8** %8, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %49

45:                                               ; preds = %38, %27
  %46 = load i8*, i8** %8, align 8
  %47 = load i8**, i8*** %6, align 8
  store i8* %46, i8** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %4, align 8
  br label %61

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = call i32 @X509_free(%struct.TYPE_7__* %53)
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %56 = icmp ne %struct.TYPE_7__** %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %58, align 8
  br label %59

59:                                               ; preds = %57, %52
  br label %60

60:                                               ; preds = %59, %49
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %61

61:                                               ; preds = %60, %45, %26
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %62
}

declare dso_local %struct.TYPE_7__* @d2i_X509(%struct.TYPE_7__**, i8**, i64) #1

declare dso_local i32 @d2i_X509_CERT_AUX(i32*, i8**, i64) #1

declare dso_local i32 @X509_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
