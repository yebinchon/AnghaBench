; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_authenc_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_authenc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_queue = type { i32 }
%struct.ccp_session = type { i64, i32 }
%struct.cryptodesc = type { %struct.cryptodesc* }
%struct.cryptop = type { %struct.cryptodesc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_queue*, %struct.ccp_session*, i8*, i32)* @ccp_authenc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_authenc_done(%struct.ccp_queue* %0, %struct.ccp_session* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ccp_queue*, align 8
  %6 = alloca %struct.ccp_session*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cryptodesc*, align 8
  %10 = alloca %struct.cryptop*, align 8
  store %struct.ccp_queue* %0, %struct.ccp_queue** %5, align 8
  store %struct.ccp_session* %1, %struct.ccp_session** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ccp_session*, %struct.ccp_session** %6, align 8
  %12 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %11, i32 0, i32 1
  %13 = call i32 @explicit_bzero(i32* %12, i32 4)
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.cryptop*
  store %struct.cryptop* %15, %struct.cryptop** %10, align 8
  %16 = load %struct.ccp_session*, %struct.ccp_session** %6, align 8
  %17 = getelementptr inbounds %struct.ccp_session, %struct.ccp_session* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.cryptop*, %struct.cryptop** %10, align 8
  %22 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %21, i32 0, i32 0
  %23 = load %struct.cryptodesc*, %struct.cryptodesc** %22, align 8
  %24 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %23, i32 0, i32 0
  %25 = load %struct.cryptodesc*, %struct.cryptodesc** %24, align 8
  store %struct.cryptodesc* %25, %struct.cryptodesc** %9, align 8
  br label %30

26:                                               ; preds = %4
  %27 = load %struct.cryptop*, %struct.cryptop** %10, align 8
  %28 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %27, i32 0, i32 0
  %29 = load %struct.cryptodesc*, %struct.cryptodesc** %28, align 8
  store %struct.cryptodesc* %29, %struct.cryptodesc** %9, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.ccp_queue*, %struct.ccp_queue** %5, align 8
  %32 = load %struct.ccp_session*, %struct.ccp_session** %6, align 8
  %33 = load %struct.cryptop*, %struct.cryptop** %10, align 8
  %34 = load %struct.cryptodesc*, %struct.cryptodesc** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ccp_do_hmac_done(%struct.ccp_queue* %31, %struct.ccp_session* %32, %struct.cryptop* %33, %struct.cryptodesc* %34, i32 %35)
  ret void
}

declare dso_local i32 @explicit_bzero(i32*, i32) #1

declare dso_local i32 @ccp_do_hmac_done(%struct.ccp_queue*, %struct.ccp_session*, %struct.cryptop*, %struct.cryptodesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
