; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_X509_time_adj_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_X509_time_adj_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }

@ASN1_STRING_FLAG_MSTRING = common dso_local global i32 0, align 4
@V_ASN1_UTCTIME = common dso_local global i64 0, align 8
@V_ASN1_GENERALIZEDTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @X509_time_adj_ex(%struct.TYPE_10__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  br label %18

16:                                               ; preds = %4
  %17 = call i32 @time(i32* %10)
  br label %18

18:                                               ; preds = %16, %13
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ASN1_STRING_FLAG_MSTRING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V_ASN1_UTCTIME, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call %struct.TYPE_10__* @ASN1_UTCTIME_adj(%struct.TYPE_10__* %35, i32 %36, i32 %37, i64 %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %5, align 8
  br label %59

40:                                               ; preds = %28
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V_ASN1_GENERALIZEDTIME, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call %struct.TYPE_10__* @ASN1_GENERALIZEDTIME_adj(%struct.TYPE_10__* %47, i32 %48, i32 %49, i64 %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %5, align 8
  br label %59

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %21, %18
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call %struct.TYPE_10__* @ASN1_TIME_adj(%struct.TYPE_10__* %54, i32 %55, i32 %56, i64 %57)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %5, align 8
  br label %59

59:                                               ; preds = %53, %46, %34
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %60
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.TYPE_10__* @ASN1_UTCTIME_adj(%struct.TYPE_10__*, i32, i32, i64) #1

declare dso_local %struct.TYPE_10__* @ASN1_GENERALIZEDTIME_adj(%struct.TYPE_10__*, i32, i32, i64) #1

declare dso_local %struct.TYPE_10__* @ASN1_TIME_adj(%struct.TYPE_10__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
