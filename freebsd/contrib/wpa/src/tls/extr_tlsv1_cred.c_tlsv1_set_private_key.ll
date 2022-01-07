; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_cred.c_tlsv1_set_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_cred.c_tlsv1_set_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_credentials = type { i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"TLSv1: Failed to read '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_set_private_key(%struct.tlsv1_credentials* %0, i8* %1, i8* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlsv1_credentials*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.tlsv1_credentials* %0, %struct.tlsv1_credentials** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %16 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @crypto_private_key_free(i32* %17)
  %19 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %20 = getelementptr inbounds %struct.tlsv1_credentials, %struct.tlsv1_credentials* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @tlsv1_set_key(%struct.tlsv1_credentials* %24, i32* %25, i64 %26, i8* %27)
  store i32 %28, i32* %6, align 4
  br label %52

29:                                               ; preds = %5
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @os_readfile(i8* %33, i64* %13)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %40)
  store i32 -1, i32* %6, align 4
  br label %52

42:                                               ; preds = %32
  %43 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %7, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @tlsv1_set_key(%struct.tlsv1_credentials* %43, i32* %44, i64 %45, i8* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @os_free(i32* %48)
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %6, align 4
  br label %52

51:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %42, %38, %23
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @crypto_private_key_free(i32*) #1

declare dso_local i32 @tlsv1_set_key(%struct.tlsv1_credentials*, i32*, i64, i8*) #1

declare dso_local i64 @os_readfile(i8*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
