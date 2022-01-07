; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_tlv_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_tlv_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forces_tlv = type { i32 }

@TLV_HDRL = common dso_local global i64 0, align 8
@INVALID_RLEN = common dso_local global i64 0, align 8
@INVALID_STLN = common dso_local global i64 0, align 8
@INVALID_LTLN = common dso_local global i64 0, align 8
@INVALID_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.forces_tlv*, i64)* @tlv_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tlv_valid(%struct.forces_tlv* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.forces_tlv*, align 8
  %5 = alloca i64, align 8
  store %struct.forces_tlv* %0, %struct.forces_tlv** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TLV_HDRL, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @INVALID_RLEN, align 8
  store i64 %10, i64* %3, align 8
  br label %37

11:                                               ; preds = %2
  %12 = load %struct.forces_tlv*, %struct.forces_tlv** %4, align 8
  %13 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %12, i32 0, i32 0
  %14 = call i64 @EXTRACT_16BITS(i32* %13)
  %15 = load i64, i64* @TLV_HDRL, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* @INVALID_STLN, align 8
  store i64 %18, i64* %3, align 8
  br label %37

19:                                               ; preds = %11
  %20 = load %struct.forces_tlv*, %struct.forces_tlv** %4, align 8
  %21 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %20, i32 0, i32 0
  %22 = call i64 @EXTRACT_16BITS(i32* %21)
  %23 = load i64, i64* %5, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @INVALID_LTLN, align 8
  store i64 %26, i64* %3, align 8
  br label %37

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.forces_tlv*, %struct.forces_tlv** %4, align 8
  %30 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %29, i32 0, i32 0
  %31 = call i64 @EXTRACT_16BITS(i32* %30)
  %32 = call i64 @F_ALN_LEN(i64 %31)
  %33 = icmp slt i64 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @INVALID_ALEN, align 8
  store i64 %35, i64* %3, align 8
  br label %37

36:                                               ; preds = %27
  store i64 0, i64* %3, align 8
  br label %37

37:                                               ; preds = %36, %34, %25, %17, %9
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i64 @F_ALN_LEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
