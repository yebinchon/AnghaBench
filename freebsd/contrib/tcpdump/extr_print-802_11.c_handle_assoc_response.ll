; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_assoc_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_assoc_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_body_t = type { i64, i32, i8* }

@IEEE802_11_CAPINFO_LEN = common dso_local global i64 0, align 8
@IEEE802_11_STATUS_LEN = common dso_local global i64 0, align 8
@IEEE802_11_AID_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c" AID(%x) :%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" PRIVACY \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NUM_STATUSES = common dso_local global i64 0, align 8
@status_text = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @handle_assoc_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_assoc_response(i32* %0, i32* %1, i64 %2) #0 {
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
  %15 = load i64, i64* @IEEE802_11_STATUS_LEN, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @IEEE802_11_AID_LEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @ND_TTEST2(i32 %13, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @IEEE802_11_CAPINFO_LEN, align 8
  %25 = load i64, i64* @IEEE802_11_STATUS_LEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @IEEE802_11_AID_LEN, align 8
  %28 = add nsw i64 %26, %27
  %29 = icmp slt i64 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %105

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
  %48 = ptrtoint i8* %47 to i64
  %49 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @IEEE802_11_STATUS_LEN, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i64, i64* @IEEE802_11_STATUS_LEN, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i8* @EXTRACT_LE_16BITS(i32* %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = load i64, i64* @IEEE802_11_AID_LEN, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %9, align 4
  %70 = load i64, i64* @IEEE802_11_AID_LEN, align 8
  %71 = load i64, i64* %7, align 8
  %72 = sub nsw i64 %71, %70
  store i64 %72, i64* %7, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @parse_elements(i32* %73, %struct.mgmt_body_t* %8, i32* %74, i32 %75, i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 2
  %82 = ashr i32 %81, 2
  %83 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @CAPABILITY_PRIVACY(i8* %84)
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %89 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NUM_STATUSES, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %31
  %94 = load i8**, i8*** @status_text, align 8
  %95 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %8, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  br label %100

99:                                               ; preds = %31
  br label %100

100:                                              ; preds = %99, %93
  %101 = phi i8* [ %98, %93 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %99 ]
  %102 = bitcast i8* %101 to i32*
  %103 = call i32 @ND_PRINT(i32* %102)
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %30, %21
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @memset(%struct.mgmt_body_t*, i32, i32) #1

declare dso_local i32 @ND_TTEST2(i32, i64) #1

declare dso_local i8* @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @parse_elements(i32*, %struct.mgmt_body_t*, i32*, i32, i64) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @CAPABILITY_PRIVACY(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
