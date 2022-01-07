; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_serverinfo_find_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_serverinfo_find_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8**, i64*)* @serverinfo_find_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serverinfo_find_extension(i8* %0, i64 %1, i32 %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i8**, i8*** %10, align 8
  store i8* null, i8** %16, align 8
  %17 = load i64*, i64** %11, align 8
  store i64 0, i64* %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %5
  store i32 -1, i32* %6, align 4
  br label %55

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @PACKET_buf_init(i32* %12, i8* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %55

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %54, %30
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %32 = call i64 @PACKET_remaining(i32* %12)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %55

35:                                               ; preds = %31
  %36 = call i32 @PACKET_get_net_4(i32* %12, i64* %15)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = call i32 @PACKET_get_net_2(i32* %12, i32* %14)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 @PACKET_get_length_prefixed_2(i32* %12, i32* %13)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %38, %35
  store i32 -1, i32* %6, align 4
  br label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = call i8* @PACKET_data(i32* %13)
  %51 = load i8**, i8*** %10, align 8
  store i8* %50, i8** %51, align 8
  %52 = call i64 @PACKET_remaining(i32* %13)
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  store i32 1, i32* %6, align 4
  br label %55

54:                                               ; preds = %45
  br label %31

55:                                               ; preds = %49, %44, %34, %29, %23
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_net_4(i32*, i64*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i8* @PACKET_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
