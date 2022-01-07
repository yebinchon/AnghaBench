; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_udp_send_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_udp_send_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_udp_send_query(i32* %0, i32 %1, %struct.sockaddr_storage* %2, i32 %3) #0 {
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
  %11 = load i32, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @ldns_buffer_begin(i32* %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @ldns_buffer_position(i32* %15)
  %17 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %18 = bitcast %struct.sockaddr_storage* %17 to %struct.sockaddr*
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @sendto(i32 %11, i8* %14, i64 %16, i32 0, %struct.sockaddr* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @ldns_buffer_position(i32* %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %4
  store i32 0, i32* %5, align 4
  br label %39

30:                                               ; preds = %23
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @ldns_buffer_position(i32* %33)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %36, %29
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @ldns_buffer_begin(i32*) #1

declare dso_local i64 @ldns_buffer_position(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
