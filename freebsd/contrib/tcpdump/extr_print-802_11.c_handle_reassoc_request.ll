; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_reassoc_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_reassoc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_body_t = type { i32, i8*, i8* }

@IEEE802_11_CAPINFO_LEN = common dso_local global i64 0, align 8
@IEEE802_11_LISTENINT_LEN = common dso_local global i64 0, align 8
@IEEE802_11_AP_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c" AP : %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @handle_reassoc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_reassoc_request(i32* %0, i32* %1, i64 %2) #0 {
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
  %11 = call i32 @memset(%struct.mgmt_body_t* %8, i32 0, i32 24)
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @IEEE802_11_CAPINFO_LEN, align 8
  %15 = load i64, i64* @IEEE802_11_LISTENINT_LEN, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @IEEE802_11_AP_LEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @ND_TTEST2(i32 %13, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %87

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @IEEE802_11_CAPINFO_LEN, align 8
  %25 = load i64, i64* @IEEE802_11_LISTENINT_LEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @IEEE802_11_AP_LEN, align 8
  %28 = add nsw i64 %26, %27
  %29 = icmp slt i64 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %87

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @EXTRACT_LE_16BITS(i32* %32)
  %34 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load i64, i64* @IEEE802_11_CAPINFO_LEN, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i64, i64* @IEEE802_11_CAPINFO_LEN, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i8* @EXTRACT_LE_16BITS(i32* %46)
  %48 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load i64, i64* @IEEE802_11_LISTENINT_LEN, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i64, i64* @IEEE802_11_LISTENINT_LEN, align 8
  %55 = load i64, i64* %7, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i64, i64* @IEEE802_11_AP_LEN, align 8
  %63 = call i32 @memcpy(i32* %57, i32* %61, i64 %62)
  %64 = load i64, i64* @IEEE802_11_AP_LEN, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i64, i64* @IEEE802_11_AP_LEN, align 8
  %70 = load i64, i64* %7, align 8
  %71 = sub nsw i64 %70, %69
  store i64 %71, i64* %7, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @parse_elements(i32* %72, %struct.mgmt_body_t* %8, i32* %73, i32 %74, i64 %75)
  store i32 %76, i32* %10, align 4
  %77 = call i32 @PRINT_SSID(%struct.mgmt_body_t* byval(%struct.mgmt_body_t) align 8 %8)
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @etheraddr_string(i32* %79, i32 %81)
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i32*
  %85 = call i32 @ND_PRINT(i32* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %31, %30, %21
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @memset(%struct.mgmt_body_t*, i32, i32) #1

declare dso_local i32 @ND_TTEST2(i32, i64) #1

declare dso_local i8* @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @parse_elements(i32*, %struct.mgmt_body_t*, i32*, i32, i64) #1

declare dso_local i32 @PRINT_SSID(%struct.mgmt_body_t* byval(%struct.mgmt_body_t) align 8) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @etheraddr_string(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
