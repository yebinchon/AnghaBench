; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lldp.c_lldp_mgmt_addr_tlv_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lldp.c_lldp_mgmt_addr_tlv_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"\0A\09  Management Address length %u, %s\00", align 1
@LLDP_INTF_NUM_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\0A\09  %s Interface Numbering (%u): %u\00", align 1
@lldp_intf_numb_subtype_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A\09  OID length %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @lldp_mgmt_addr_tlv_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lldp_mgmt_addr_tlv_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %11, align 8
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

19:                                               ; preds = %3
  %20 = load i32*, i32** %11, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* %20, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %101

29:                                               ; preds = %19
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @lldp_network_addr_print(i32* %30, i32* %31, i32 %32)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %101

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = call i32 @ND_PRINT(i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %11, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @LLDP_INTF_NUM_LEN, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %101

54:                                               ; preds = %37
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @lldp_intf_numb_subtype_values, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @tok2str(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = call i32 @EXTRACT_32BITS(i32* %63)
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i32*
  %67 = call i32 @ND_PRINT(i32* %66)
  %68 = load i32, i32* @LLDP_INTF_NUM_LEN, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %11, align 8
  %72 = load i32, i32* @LLDP_INTF_NUM_LEN, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %54
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = add i32 1, %81
  %83 = icmp ult i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %101

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i32*
  %93 = call i32 @ND_PRINT(i32* %92)
  %94 = load i32*, i32** %5, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @safeputs(i32* %94, i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %88, %85
  br label %100

100:                                              ; preds = %99, %54
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %84, %53, %36, %28, %18
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i8* @lldp_network_addr_print(i32*, i32*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @safeputs(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
