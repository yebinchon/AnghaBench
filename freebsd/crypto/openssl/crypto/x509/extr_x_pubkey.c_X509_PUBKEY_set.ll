; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_pubkey.c_X509_PUBKEY_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_pubkey.c_X509_PUBKEY_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* }

@X509_F_X509_PUBKEY_SET = common dso_local global i32 0, align 4
@X509_R_PUBLIC_KEY_ENCODE_ERROR = common dso_local global i32 0, align 4
@X509_R_METHOD_NOT_SUPPORTED = common dso_local global i32 0, align 4
@X509_R_UNSUPPORTED_ALGORITHM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_PUBKEY_set(%struct.TYPE_12__** %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %7 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %8 = icmp eq %struct.TYPE_12__** %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

10:                                               ; preds = %2
  %11 = call %struct.TYPE_12__* (...) @X509_PUBKEY_new()
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %61

14:                                               ; preds = %10
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)** %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = call i32 %31(%struct.TYPE_12__* %32, %struct.TYPE_13__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @X509_F_X509_PUBKEY_SET, align 4
  %38 = load i32, i32* @X509_R_PUBLIC_KEY_ENCODE_ERROR, align 4
  %39 = call i32 @X509err(i32 %37, i32 %38)
  br label %61

40:                                               ; preds = %26
  br label %45

41:                                               ; preds = %19
  %42 = load i32, i32* @X509_F_X509_PUBKEY_SET, align 4
  %43 = load i32, i32* @X509_R_METHOD_NOT_SUPPORTED, align 4
  %44 = call i32 @X509err(i32 %42, i32 %43)
  br label %61

45:                                               ; preds = %40
  br label %50

46:                                               ; preds = %14
  %47 = load i32, i32* @X509_F_X509_PUBKEY_SET, align 4
  %48 = load i32, i32* @X509_R_UNSUPPORTED_ALGORITHM, align 4
  %49 = call i32 @X509err(i32 %47, i32 %48)
  br label %61

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = call i32 @X509_PUBKEY_free(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = call i32 @EVP_PKEY_up_ref(%struct.TYPE_13__* %59)
  store i32 1, i32* %3, align 4
  br label %64

61:                                               ; preds = %46, %41, %36, %13
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = call i32 @X509_PUBKEY_free(%struct.TYPE_12__* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %50, %9
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_12__* @X509_PUBKEY_new(...) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32 @X509_PUBKEY_free(%struct.TYPE_12__*) #1

declare dso_local i32 @EVP_PKEY_up_ref(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
