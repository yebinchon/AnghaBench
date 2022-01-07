; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_alt_name_rfc8222.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_x509v3.c_x509_parse_alt_name_rfc8222.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_name = type { i32* }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"X509: altName - rfc822Name\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"X509: Reject certificate with embedded NUL byte in rfc822Name (%s[NUL])\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_name*, i32*, i64)* @x509_parse_alt_name_rfc8222 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_alt_name_rfc8222(%struct.x509_name* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x509_name*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.x509_name* %0, %struct.x509_name** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @MSG_MSGDUMP, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @wpa_hexdump_ascii(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %9, i64 %10)
  %12 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %13 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @os_free(i32* %14)
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 1
  %18 = call i32* @os_zalloc(i64 %17)
  %19 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %20 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %22 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %28 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @os_memcpy(i32* %29, i32* %30, i64 %31)
  %33 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %34 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @os_strlen(i32* %35)
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %26
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %42 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  %45 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %46 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @os_free(i32* %47)
  %49 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %50 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  store i32 -1, i32* %4, align 4
  br label %52

51:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %39, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_zalloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i64 @os_strlen(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
