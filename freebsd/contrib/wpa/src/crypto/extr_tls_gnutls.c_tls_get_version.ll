; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_get_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

@GNUTLS_TLS1_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@GNUTLS_TLS1_1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"TLSv1.1\00", align 1
@GNUTLS_TLS1_2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_get_version(i8* %0, %struct.tls_connection* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tls_connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.tls_connection*, %struct.tls_connection** %7, align 8
  %12 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @gnutls_protocol_get_version(i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @GNUTLS_TLS1_0, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @os_strlcpy(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %41

22:                                               ; preds = %4
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @GNUTLS_TLS1_1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @os_strlcpy(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  br label %40

30:                                               ; preds = %22
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @GNUTLS_TLS1_2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @os_strlcpy(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  br label %39

38:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %42

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %18
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @gnutls_protocol_get_version(i32) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
