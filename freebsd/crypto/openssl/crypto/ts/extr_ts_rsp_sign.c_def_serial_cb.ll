; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_def_serial_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_sign.c_def_serial_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TS_resp_ctx = type { i32 }

@TS_F_DEF_SERIAL_CB = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@TS_STATUS_REJECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error during serial number generation.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TS_resp_ctx*, i8*)* @def_serial_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @def_serial_cb(%struct.TS_resp_ctx* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TS_resp_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.TS_resp_ctx* %0, %struct.TS_resp_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32* (...) @ASN1_INTEGER_new()
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %18

11:                                               ; preds = %2
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @ASN1_INTEGER_set(i32* %12, i32 1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %18

16:                                               ; preds = %11
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %3, align 8
  br label %25

18:                                               ; preds = %15, %10
  %19 = load i32, i32* @TS_F_DEF_SERIAL_CB, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @TSerr(i32 %19, i32 %20)
  %22 = load %struct.TS_resp_ctx*, %struct.TS_resp_ctx** %4, align 8
  %23 = load i32, i32* @TS_STATUS_REJECTION, align 4
  %24 = call i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx* %22, i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %25

25:                                               ; preds = %18, %16
  %26 = load i32*, i32** %3, align 8
  ret i32* %26
}

declare dso_local i32* @ASN1_INTEGER_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32*, i32) #1

declare dso_local i32 @TSerr(i32, i32) #1

declare dso_local i32 @TS_RESP_CTX_set_status_info(%struct.TS_resp_ctx*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
