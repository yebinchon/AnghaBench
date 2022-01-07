; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_set_addrinfo_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_set_addrinfo_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i64, %struct.addrinfo* }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrinfo*, i32)* @set_addrinfo_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_addrinfo_port(%struct.addrinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  store %struct.addrinfo* %6, %struct.addrinfo** %5, align 8
  br label %7

7:                                                ; preds = %31, %2
  %8 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %9 = icmp ne %struct.addrinfo* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %30 [
    i32 129, label %14
    i32 128, label %22
  ]

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = call i8* @htons(i32 %15)
  %17 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.sockaddr_in*
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  store i8* %16, i8** %21, align 8
  br label %30

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4
  %24 = call i8* @htons(i32 %23)
  %25 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.sockaddr_in6*
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  store i8* %24, i8** %29, align 8
  br label %30

30:                                               ; preds = %10, %22, %14
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 2
  %34 = load %struct.addrinfo*, %struct.addrinfo** %33, align 8
  store %struct.addrinfo* %34, %struct.addrinfo** %5, align 8
  br label %7

35:                                               ; preds = %7
  ret void
}

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
