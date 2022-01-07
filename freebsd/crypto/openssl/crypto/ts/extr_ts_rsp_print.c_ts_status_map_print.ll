; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_print.c_ts_status_map_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_rsp_print.c_ts_status_map_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_map_st = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.status_map_st*, i32*)* @ts_status_map_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_status_map_print(i32* %0, %struct.status_map_st* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.status_map_st*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.status_map_st* %1, %struct.status_map_st** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %34, %3
  %9 = load %struct.status_map_st*, %struct.status_map_st** %5, align 8
  %10 = getelementptr inbounds %struct.status_map_st, %struct.status_map_st* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.status_map_st*, %struct.status_map_st** %5, align 8
  %16 = getelementptr inbounds %struct.status_map_st, %struct.status_map_st* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @ASN1_BIT_STRING_get_bit(i32* %14, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.status_map_st*, %struct.status_map_st** %5, align 8
  %30 = getelementptr inbounds %struct.status_map_st, %struct.status_map_st* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %13
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.status_map_st*, %struct.status_map_st** %5, align 8
  %36 = getelementptr inbounds %struct.status_map_st, %struct.status_map_st* %35, i32 1
  store %struct.status_map_st* %36, %struct.status_map_st** %5, align 8
  br label %8

37:                                               ; preds = %8
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i64 @ASN1_BIT_STRING_get_bit(i32*, i64) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
