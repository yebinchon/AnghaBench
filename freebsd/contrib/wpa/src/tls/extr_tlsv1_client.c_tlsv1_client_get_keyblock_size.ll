; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_get_keyblock_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_get_keyblock_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CLIENT_HELLO = common dso_local global i64 0, align 8
@SERVER_HELLO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_client_get_keyblock_size(%struct.tlsv1_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tlsv1_client*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %3, align 8
  %4 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %5 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CLIENT_HELLO, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %11 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SERVER_HELLO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store i32 -1, i32* %2, align 4
  br label %32

16:                                               ; preds = %9
  %17 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %18 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %22 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %20, %24
  %26 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %27 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %25, %29
  %31 = mul nsw i32 2, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %16, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
