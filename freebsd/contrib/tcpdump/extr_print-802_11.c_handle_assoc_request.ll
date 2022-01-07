; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_assoc_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_assoc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_body_t = type { i8*, i8* }

@IEEE802_11_CAPINFO_LEN = common dso_local global i64 0, align 8
@IEEE802_11_LISTENINT_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @handle_assoc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_assoc_request(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mgmt_body_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %11 = call i32 @memset(%struct.mgmt_body_t* %8, i32 0, i32 16)
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @IEEE802_11_CAPINFO_LEN, align 8
  %15 = load i64, i64* @IEEE802_11_LISTENINT_LEN, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ND_TTEST2(i32 %13, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @IEEE802_11_CAPINFO_LEN, align 8
  %23 = load i64, i64* @IEEE802_11_LISTENINT_LEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %71

27:                                               ; preds = %20
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @EXTRACT_LE_16BITS(i32* %28)
  %30 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i64, i64* @IEEE802_11_CAPINFO_LEN, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* @IEEE802_11_CAPINFO_LEN, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i8* @EXTRACT_LE_16BITS(i32* %42)
  %44 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load i64, i64* @IEEE802_11_LISTENINT_LEN, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i64, i64* @IEEE802_11_LISTENINT_LEN, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %7, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @parse_elements(i32* %53, %struct.mgmt_body_t* %8, i32* %54, i32 %55, i64 %56)
  store i32 %57, i32* %10, align 4
  %58 = bitcast %struct.mgmt_body_t* %8 to { i8*, i8* }*
  %59 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %58, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @PRINT_SSID(i8* %60, i8* %62)
  %64 = bitcast %struct.mgmt_body_t* %8 to { i8*, i8* }*
  %65 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %64, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PRINT_RATES(i8* %66, i8* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %27, %26, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.mgmt_body_t*, i32, i32) #1

declare dso_local i32 @ND_TTEST2(i32, i64) #1

declare dso_local i8* @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @parse_elements(i32*, %struct.mgmt_body_t*, i32*, i32, i64) #1

declare dso_local i32 @PRINT_SSID(i8*, i8*) #1

declare dso_local i32 @PRINT_RATES(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
