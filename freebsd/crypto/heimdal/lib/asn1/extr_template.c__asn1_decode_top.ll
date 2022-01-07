; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_template.c__asn1_decode_top.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_template.c__asn1_decode_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_template = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_asn1_decode_top(%struct.asn1_template* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca %struct.asn1_template*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.asn1_template* %0, %struct.asn1_template** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = load %struct.asn1_template*, %struct.asn1_template** %7, align 8
  %16 = getelementptr inbounds %struct.asn1_template, %struct.asn1_template* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(i8* %14, i32 0, i32 %17)
  %19 = load %struct.asn1_template*, %struct.asn1_template** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = call i32 @_asn1_decode(%struct.asn1_template* %19, i32 %20, i8* %21, i64 %22, i8* %23, i64* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load %struct.asn1_template*, %struct.asn1_template** %7, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @_asn1_free(%struct.asn1_template* %29, i8* %30)
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.asn1_template*, %struct.asn1_template** %7, align 8
  %34 = getelementptr inbounds %struct.asn1_template, %struct.asn1_template* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memset(i8* %32, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %28, %6
  %38 = load i32, i32* %13, align 4
  ret i32 %38
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @_asn1_decode(%struct.asn1_template*, i32, i8*, i64, i8*, i64*) #1

declare dso_local i32 @_asn1_free(%struct.asn1_template*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
