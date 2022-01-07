; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_dns.c_generic_dns_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_dns.c_generic_dns_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_dns_callback_result = type { i32, i8, i32, i32, i64, i32*, i32* }

@DNS_IPv4_A = common dso_local global i8 0, align 1
@DNS_IPv6_AAAA = common dso_local global i8 0, align 1
@DNS_PTR = common dso_local global i8 0, align 1
@n_replies_left = common dso_local global i64 0, align 8
@exit_port = common dso_local global i32* null, align 8
@exit_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8, i32, i32, i8*, i8*)* @generic_dns_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_dns_callback(i32 %0, i8 signext %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.generic_dns_callback_result*, align 8
  store i32 %0, i32* %7, align 4
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = bitcast i8* %15 to %struct.generic_dns_callback_result*
  store %struct.generic_dns_callback_result* %16, %struct.generic_dns_callback_result** %14, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.generic_dns_callback_result*, %struct.generic_dns_callback_result** %14, align 8
  %19 = getelementptr inbounds %struct.generic_dns_callback_result, %struct.generic_dns_callback_result* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i8, i8* %8, align 1
  %21 = load %struct.generic_dns_callback_result*, %struct.generic_dns_callback_result** %14, align 8
  %22 = getelementptr inbounds %struct.generic_dns_callback_result, %struct.generic_dns_callback_result* %21, i32 0, i32 1
  store i8 %20, i8* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.generic_dns_callback_result*, %struct.generic_dns_callback_result** %14, align 8
  %25 = getelementptr inbounds %struct.generic_dns_callback_result, %struct.generic_dns_callback_result* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.generic_dns_callback_result*, %struct.generic_dns_callback_result** %14, align 8
  %28 = getelementptr inbounds %struct.generic_dns_callback_result, %struct.generic_dns_callback_result* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i8, i8* %8, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @DNS_IPv4_A, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %6
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %13, align 8
  br label %66

38:                                               ; preds = %6
  %39 = load i8, i8* %8, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @DNS_IPv6_AAAA, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 16
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %13, align 8
  br label %65

48:                                               ; preds = %38
  %49 = load i8, i8* %8, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @DNS_PTR, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %13, align 8
  br label %64

59:                                               ; preds = %48
  store i64 0, i64* %13, align 8
  %60 = load %struct.generic_dns_callback_result*, %struct.generic_dns_callback_result** %14, align 8
  %61 = getelementptr inbounds %struct.generic_dns_callback_result, %struct.generic_dns_callback_result* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.generic_dns_callback_result*, %struct.generic_dns_callback_result** %14, align 8
  %63 = getelementptr inbounds %struct.generic_dns_callback_result, %struct.generic_dns_callback_result* %62, i32 0, i32 6
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.generic_dns_callback_result*, %struct.generic_dns_callback_result** %14, align 8
  %72 = getelementptr inbounds %struct.generic_dns_callback_result, %struct.generic_dns_callback_result* %71, i32 0, i32 4
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp ugt i64 %73, 256
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i64 256, i64* %13, align 8
  br label %76

76:                                               ; preds = %75, %69
  %77 = load %struct.generic_dns_callback_result*, %struct.generic_dns_callback_result** %14, align 8
  %78 = getelementptr inbounds %struct.generic_dns_callback_result, %struct.generic_dns_callback_result* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @memcpy(i32* %79, i8* %80, i64 %81)
  %83 = load %struct.generic_dns_callback_result*, %struct.generic_dns_callback_result** %14, align 8
  %84 = getelementptr inbounds %struct.generic_dns_callback_result, %struct.generic_dns_callback_result* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.generic_dns_callback_result*, %struct.generic_dns_callback_result** %14, align 8
  %87 = getelementptr inbounds %struct.generic_dns_callback_result, %struct.generic_dns_callback_result* %86, i32 0, i32 6
  store i32* %85, i32** %87, align 8
  br label %88

88:                                               ; preds = %76, %66
  %89 = load i64, i64* @n_replies_left, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* @n_replies_left, align 8
  %91 = load i64, i64* @n_replies_left, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i32*, i32** @exit_port, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32*, i32** @exit_port, align 8
  %98 = call i32 @evdns_close_server_port(i32* %97)
  store i32* null, i32** @exit_port, align 8
  br label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @exit_base, align 4
  %101 = call i32 @event_base_loopexit(i32 %100, i32* null)
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102, %88
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @evdns_close_server_port(i32*) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
