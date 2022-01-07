; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_serverinfo_process_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_rsa.c_serverinfo_process_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_SERVERINFOV1 = common dso_local global i32 0, align 4
@SSL_SERVERINFOV2 = common dso_local global i32 0, align 4
@SYNTHV1CONTEXT = common dso_local global i64 0, align 8
@serverinfo_srv_add_cb = common dso_local global i32 0, align 4
@serverinfo_srv_parse_cb = common dso_local global i32 0, align 4
@serverinfoex_srv_add_cb = common dso_local global i32 0, align 4
@serverinfoex_srv_parse_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i32*)* @serverinfo_process_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serverinfo_process_buffer(i32 %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %86

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SSL_SERVERINFOV1, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SSL_SERVERINFOV2, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %86

29:                                               ; preds = %24, %20
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @PACKET_buf_init(i32* %10, i8* %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %86

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %84, %56, %35
  %37 = call i64 @PACKET_remaining(i32* %10)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %36
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SSL_SERVERINFOV2, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call i32 @PACKET_get_net_4(i32* %10, i64* %11)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43, %39
  %47 = call i32 @PACKET_get_net_2(i32* %10, i32* %12)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = call i32 @PACKET_get_length_prefixed_2(i32* %10, i32* %13)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49, %46, %43
  store i32 0, i32* %5, align 4
  br label %86

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %36

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SSL_SERVERINFOV1, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @SYNTHV1CONTEXT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61, %57
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @serverinfo_srv_add_cb, align 4
  %69 = load i32, i32* @serverinfo_srv_parse_cb, align 4
  %70 = call i32 @SSL_CTX_add_server_custom_ext(i32* %66, i32 %67, i32 %68, i32* null, i32* null, i32 %69, i32* null)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %86

73:                                               ; preds = %65
  br label %84

74:                                               ; preds = %61
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* @serverinfoex_srv_add_cb, align 4
  %79 = load i32, i32* @serverinfoex_srv_parse_cb, align 4
  %80 = call i32 @SSL_CTX_add_custom_ext(i32* %75, i32 %76, i64 %77, i32 %78, i32* null, i32* null, i32 %79, i32* null)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %86

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %73
  br label %36

85:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %82, %72, %52, %34, %28, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @PACKET_get_net_4(i32*, i64*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @SSL_CTX_add_server_custom_ext(i32*, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_add_custom_ext(i32*, i32, i64, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
