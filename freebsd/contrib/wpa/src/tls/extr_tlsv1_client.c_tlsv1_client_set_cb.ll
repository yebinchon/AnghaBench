; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_set_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_set_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { void (i8*, i32, %union.tls_event_data*)*, i32, i8* }
%union.tls_event_data = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlsv1_client_set_cb(%struct.tlsv1_client* %0, {}* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca {}*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store {}* %1, {}** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load {}*, {}** %6, align 8
  %10 = bitcast {}* %9 to void (i8*, i32, %union.tls_event_data*)*
  %11 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %12 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %11, i32 0, i32 0
  store void (i8*, i32, %union.tls_event_data*)* %10, void (i8*, i32, %union.tls_event_data*)** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %15 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %22 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
