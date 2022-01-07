; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_gai_addr2scopetype.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_gai_addr2scopetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*)* @gai_addr2scopetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gai_addr2scopetype(%struct.sockaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  %5 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %6 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %63 [
    i32 129, label %8
  ]

8:                                                ; preds = %1
  %9 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %10, %struct.sockaddr_in** %4, align 8
  %11 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 169
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 254
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 2, i32* %2, align 4
  br label %65

23:                                               ; preds = %16, %8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %54, label %29

29:                                               ; preds = %23
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 0
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 172
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 0
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 240
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %54, label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 0
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 192
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 168
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %35, %23
  store i32 14, i32* %2, align 4
  br label %65

55:                                               ; preds = %48, %42
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 0
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 127
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 2, i32* %2, align 4
  br label %65

62:                                               ; preds = %55
  store i32 14, i32* %2, align 4
  br label %65

63:                                               ; preds = %1
  %64 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %64, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %62, %61, %54, %22
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
