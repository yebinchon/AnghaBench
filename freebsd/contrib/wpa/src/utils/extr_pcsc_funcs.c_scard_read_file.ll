; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_read_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scard_data = type { i64 }

@SIM_CMD_READ_BIN = common dso_local global i8 0, align 1
@SCARD_USIM = common dso_local global i64 0, align 8
@USIM_CLA = common dso_local global i8 0, align 1
@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"SCARD: file read returned unexpected length %ld (expected %ld)\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"SCARD: file read returned unexpected status %02x %02x (expected 90 00)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scard_data*, i8*, i64)* @scard_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scard_read_file(%struct.scard_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scard_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.scard_data* %0, %struct.scard_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %13 = load i8, i8* @SIM_CMD_READ_BIN, align 1
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %12, i64 1
  %15 = getelementptr inbounds i8, i8* %12, i64 5
  br label %16

16:                                               ; preds = %16, %3
  %17 = phi i8* [ %14, %3 ], [ %18, %16 ]
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = icmp eq i8* %18, %15
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 3
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4
  store i8 %24, i8* %25, align 1
  %26 = load i64, i64* %9, align 8
  %27 = call i8* @os_malloc(i64 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %102

31:                                               ; preds = %20
  %32 = load %struct.scard_data*, %struct.scard_data** %5, align 8
  %33 = getelementptr inbounds %struct.scard_data, %struct.scard_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SCARD_USIM, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8, i8* @USIM_CLA, align 1
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  store i8 %38, i8* %39, align 1
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.scard_data*, %struct.scard_data** %5, align 8
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @scard_transmit(%struct.scard_data* %41, i8* %42, i32 5, i8* %43, i64* %9)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @os_free(i8* %49)
  store i32 -2, i32* %4, align 4
  br label %102

51:                                               ; preds = %40
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 2
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i8
  %60 = load i64, i64* %7, align 8
  %61 = add nsw i64 %60, 2
  %62 = trunc i64 %61 to i8
  %63 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8 zeroext %59, i8 zeroext %62)
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @os_free(i8* %64)
  store i32 -3, i32* %4, align 4
  br label %102

66:                                               ; preds = %51
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %71, 144
  br i1 %72, label %81, label %73

73:                                               ; preds = %66
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 1
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %73, %66
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = call i32 @wpa_printf(i32 %82, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %86, i8 zeroext %91)
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @os_free(i8* %93)
  store i32 -4, i32* %4, align 4
  br label %102

95:                                               ; preds = %73
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @os_memcpy(i8* %96, i8* %97, i64 %98)
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @os_free(i8* %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %95, %81, %56, %48, %30
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i64 @scard_transmit(%struct.scard_data*, i8*, i32, i8*, i64*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
