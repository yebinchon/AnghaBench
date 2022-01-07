; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_sendmsgx.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_sendmsgx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sctp_sndrcvinfo = type { i8*, i8*, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sendmsgx(i32 %0, i8* %1, i64 %2, %struct.sockaddr* %3, i32 %4, i8* %5, i8* %6, i32 %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.sctp_sndrcvinfo, align 8
  store i32 %0, i32* %11, align 4
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %22 = bitcast %struct.sctp_sndrcvinfo* %21 to i8*
  %23 = call i32 @memset(i8* %22, i32 0, i32 40)
  %24 = load i8*, i8** %16, align 8
  %25 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %21, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %17, align 8
  %27 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %21, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %18, align 4
  %29 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %21, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %19, align 8
  %31 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %21, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %20, align 8
  %33 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %21, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @sctp_sendx(i32 %34, i8* %35, i64 %36, %struct.sockaddr* %37, i32 %38, %struct.sctp_sndrcvinfo* %21, i32 0)
  ret i32 %39
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sctp_sendx(i32, i8*, i64, %struct.sockaddr*, i32, %struct.sctp_sndrcvinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
