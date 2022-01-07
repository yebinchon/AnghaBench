; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_serverinfo_cli_parse_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_client.c_serverinfo_cli_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"SERVERINFO FOR EXTENSION %d\00", align 1
@bio_c_out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64, i32*, i8*)* @serverinfo_cli_parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serverinfo_cli_parse_cb(i32* %0, i32 %1, i8* %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [100 x i8], align 16
  %14 = alloca [65540 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i64, i64* %10, align 8
  %16 = and i64 %15, 65535
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = lshr i32 %17, 8
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [65540 x i8], [65540 x i8]* %14, i64 0, i64 0
  store i8 %19, i8* %20, align 16
  %21 = load i32, i32* %8, align 4
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [65540 x i8], [65540 x i8]* %14, i64 0, i64 1
  store i8 %22, i8* %23, align 1
  %24 = load i64, i64* %10, align 8
  %25 = lshr i64 %24, 8
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds [65540 x i8], [65540 x i8]* %14, i64 0, i64 2
  store i8 %26, i8* %27, align 2
  %28 = load i64, i64* %10, align 8
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds [65540 x i8], [65540 x i8]* %14, i64 0, i64 3
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds [65540 x i8], [65540 x i8]* %14, i64 0, i64 0
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @memcpy(i8* %32, i8* %33, i64 %34)
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @BIO_snprintf(i8* %36, i32 100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @bio_c_out, align 4
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %41 = getelementptr inbounds [65540 x i8], [65540 x i8]* %14, i64 0, i64 0
  %42 = load i64, i64* %10, align 8
  %43 = add i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @PEM_write_bio(i32 %39, i8* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %44)
  ret i32 1
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @PEM_write_bio(i32, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
