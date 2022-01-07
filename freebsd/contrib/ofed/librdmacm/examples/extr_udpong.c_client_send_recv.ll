; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_client_send_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_client_send_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i64 }

@client_send_recv.seqno = internal global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.message*, i64, i32)* @client_send_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_send_recv(%struct.message* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.message*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.message* %0, %struct.message** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @client_send_recv.seqno, align 8
  %10 = load %struct.message*, %struct.message** %5, align 8
  %11 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %12

12:                                               ; preds = %36, %3
  %13 = load %struct.message*, %struct.message** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @client_send(%struct.message* %13, i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %12
  %23 = load %struct.message*, %struct.message** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @client_recv(%struct.message* %23, i64 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.message*, %struct.message** %5, align 8
  %32 = getelementptr inbounds %struct.message, %struct.message* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @client_send_recv.seqno, align 8
  %35 = icmp ne i64 %33, %34
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i1 [ true, %27 ], [ %35, %30 ]
  br i1 %37, label %12, label %38

38:                                               ; preds = %36
  %39 = load i64, i64* @client_send_recv.seqno, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* @client_send_recv.seqno, align 8
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @client_send(%struct.message*, i64) #1

declare dso_local i32 @client_recv(%struct.message*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
