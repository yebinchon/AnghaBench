; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_utctm.c_ASN1_UTCTIME_set_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_utctm.c_ASN1_UTCTIME_set_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i32, i32 }

@V_ASN1_UTCTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_UTCTIME_set_string(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @V_ASN1_UTCTIME, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = call i32 @ASN1_UTCTIME_check(%struct.TYPE_6__* %6)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = call i32 @ASN1_STRING_copy(%struct.TYPE_6__* %22, %struct.TYPE_6__* %6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %27

26:                                               ; preds = %21, %18
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ASN1_UTCTIME_check(%struct.TYPE_6__*) #1

declare dso_local i32 @ASN1_STRING_copy(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
