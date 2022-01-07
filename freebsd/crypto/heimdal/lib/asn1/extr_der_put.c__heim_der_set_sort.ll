; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c__heim_der_set_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c__heim_der_set_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heim_octet_string = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_heim_der_set_sort(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.heim_octet_string*, align 8
  %7 = alloca %struct.heim_octet_string*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.heim_octet_string*
  store %struct.heim_octet_string* %10, %struct.heim_octet_string** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.heim_octet_string*
  store %struct.heim_octet_string* %12, %struct.heim_octet_string** %7, align 8
  %13 = load %struct.heim_octet_string*, %struct.heim_octet_string** %6, align 8
  %14 = getelementptr inbounds %struct.heim_octet_string, %struct.heim_octet_string* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.heim_octet_string*, %struct.heim_octet_string** %7, align 8
  %17 = getelementptr inbounds %struct.heim_octet_string, %struct.heim_octet_string* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.heim_octet_string*, %struct.heim_octet_string** %6, align 8
  %20 = getelementptr inbounds %struct.heim_octet_string, %struct.heim_octet_string* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.heim_octet_string*, %struct.heim_octet_string** %7, align 8
  %23 = getelementptr inbounds %struct.heim_octet_string, %struct.heim_octet_string* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.heim_octet_string*, %struct.heim_octet_string** %6, align 8
  %28 = getelementptr inbounds %struct.heim_octet_string, %struct.heim_octet_string* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %34

30:                                               ; preds = %2
  %31 = load %struct.heim_octet_string*, %struct.heim_octet_string** %7, align 8
  %32 = getelementptr inbounds %struct.heim_octet_string, %struct.heim_octet_string* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  %36 = call i32 @memcmp(i32 %15, i32 %18, i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %50

41:                                               ; preds = %34
  %42 = load %struct.heim_octet_string*, %struct.heim_octet_string** %6, align 8
  %43 = getelementptr inbounds %struct.heim_octet_string, %struct.heim_octet_string* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.heim_octet_string*, %struct.heim_octet_string** %7, align 8
  %46 = getelementptr inbounds %struct.heim_octet_string, %struct.heim_octet_string* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %41, %39
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
