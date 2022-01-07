; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_tcp_send_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_tcp_send_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@uint8_t = common dso_local global i32 0, align 4
@sendbuf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_tcp_send_query(i32* %0, i32 %1, %struct.sockaddr_storage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @uint8_t, align 4
  %12 = load i32, i32* @sendbuf, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* @uint8_t, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @ldns_buffer_position(i32* %15)
  %17 = add nsw i32 %16, 2
  %18 = call i32 @LDNS_XMALLOC(i32 %14, i32 %17)
  store i32 %18, i32* @sendbuf, align 4
  %19 = load i32, i32* @sendbuf, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

22:                                               ; preds = %4
  %23 = load i32, i32* @sendbuf, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @ldns_buffer_position(i32* %24)
  %26 = call i32 @ldns_write_uint16(i32 %23, i32 %25)
  %27 = load i32, i32* @sendbuf, align 4
  %28 = add nsw i32 %27, 2
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @ldns_buffer_begin(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @ldns_buffer_position(i32* %31)
  %33 = call i32 @memcpy(i32 %28, i32 %30, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @sendbuf, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @ldns_buffer_position(i32* %38)
  %40 = add nsw i32 %39, 2
  %41 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %42 = bitcast %struct.sockaddr_storage* %41 to %struct.sockaddr*
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @sendto(i32 %34, i8* %37, i32 %40, i32 0, %struct.sockaddr* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @sendbuf, align 4
  %46 = call i32 @LDNS_FREE(i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %57, label %49

49:                                               ; preds = %22
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @ldns_buffer_position(i32* %52)
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49, %22
  store i32 0, i32* %5, align 4
  br label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %57, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @LDNS_XMALLOC(i32, i32) #1

declare dso_local i32 @ldns_buffer_position(i32*) #1

declare dso_local i32 @ldns_write_uint16(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ldns_buffer_begin(i32*) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @LDNS_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
