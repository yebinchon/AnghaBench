; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm2835_mbox_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm2835_mbox_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_mbox_hdr = type { i64 }
%struct.bcm2835_mbox_tag_hdr = type { i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"response channel mismatch\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BCM2835_MBOX_CODE_RESP_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"mbox response error\0A\00", align 1
@BCM2835_MBOX_TAG_VAL_LEN_RESPONSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"tag %d response error\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"mbox buffer size error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, %struct.bcm2835_mbox_hdr*, i64)* @bcm2835_mbox_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_mbox_err(i32 %0, i64 %1, i64 %2, %struct.bcm2835_mbox_hdr* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bcm2835_mbox_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bcm2835_mbox_tag_hdr*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.bcm2835_mbox_hdr* %3, %struct.bcm2835_mbox_hdr** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  store i32 %21, i32* %6, align 4
  br label %86

22:                                               ; preds = %5
  %23 = load %struct.bcm2835_mbox_hdr*, %struct.bcm2835_mbox_hdr** %10, align 8
  %24 = getelementptr inbounds %struct.bcm2835_mbox_hdr, %struct.bcm2835_mbox_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BCM2835_MBOX_CODE_RESP_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  store i32 %31, i32* %6, align 4
  br label %86

32:                                               ; preds = %22
  %33 = load %struct.bcm2835_mbox_hdr*, %struct.bcm2835_mbox_hdr** %10, align 8
  %34 = getelementptr inbounds %struct.bcm2835_mbox_hdr, %struct.bcm2835_mbox_hdr* %33, i64 1
  %35 = bitcast %struct.bcm2835_mbox_hdr* %34 to %struct.bcm2835_mbox_tag_hdr*
  store %struct.bcm2835_mbox_tag_hdr* %35, %struct.bcm2835_mbox_tag_hdr** %13, align 8
  %36 = load %struct.bcm2835_mbox_hdr*, %struct.bcm2835_mbox_hdr** %10, align 8
  %37 = bitcast %struct.bcm2835_mbox_hdr* %36 to i32*
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %14, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %82, %32
  %41 = load %struct.bcm2835_mbox_tag_hdr*, %struct.bcm2835_mbox_tag_hdr** %13, align 8
  %42 = getelementptr inbounds %struct.bcm2835_mbox_tag_hdr, %struct.bcm2835_mbox_tag_hdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %40
  %46 = load %struct.bcm2835_mbox_tag_hdr*, %struct.bcm2835_mbox_tag_hdr** %13, align 8
  %47 = getelementptr inbounds %struct.bcm2835_mbox_tag_hdr, %struct.bcm2835_mbox_tag_hdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BCM2835_MBOX_TAG_VAL_LEN_RESPONSE, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EIO, align 4
  store i32 %56, i32* %6, align 4
  br label %86

57:                                               ; preds = %45
  %58 = load i32, i32* @BCM2835_MBOX_TAG_VAL_LEN_RESPONSE, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.bcm2835_mbox_tag_hdr*, %struct.bcm2835_mbox_tag_hdr** %13, align 8
  %61 = getelementptr inbounds %struct.bcm2835_mbox_tag_hdr, %struct.bcm2835_mbox_tag_hdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.bcm2835_mbox_tag_hdr*, %struct.bcm2835_mbox_tag_hdr** %13, align 8
  %65 = bitcast %struct.bcm2835_mbox_tag_hdr* %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 16
  %67 = load %struct.bcm2835_mbox_tag_hdr*, %struct.bcm2835_mbox_tag_hdr** %13, align 8
  %68 = getelementptr inbounds %struct.bcm2835_mbox_tag_hdr, %struct.bcm2835_mbox_tag_hdr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = bitcast i32* %71 to %struct.bcm2835_mbox_tag_hdr*
  store %struct.bcm2835_mbox_tag_hdr* %72, %struct.bcm2835_mbox_tag_hdr** %13, align 8
  %73 = load %struct.bcm2835_mbox_tag_hdr*, %struct.bcm2835_mbox_tag_hdr** %13, align 8
  %74 = bitcast %struct.bcm2835_mbox_tag_hdr* %73 to i32*
  %75 = load i32*, i32** %14, align 8
  %76 = icmp ugt i32* %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %57
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  store i32 %80, i32* %6, align 4
  br label %86

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %40

85:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %77, %52, %28, %18
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
