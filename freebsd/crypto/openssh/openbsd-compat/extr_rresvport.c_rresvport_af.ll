; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_rresvport.c_rresvport_af.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_rresvport.c_rresvport_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i64 }
%struct.sockaddr_in6 = type { i64 }

@EPFNOSUPPORT = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPORT_RESERVED = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rresvport_af(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32 @memset(%struct.sockaddr_storage* %6, i8 signext 0, i32 4)
  %12 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %22 [
    i32 129, label %14
    i32 128, label %18
  ]

14:                                               ; preds = %2
  store i32 8, i32* %10, align 4
  %15 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_in*
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i64* %17, i64** %8, align 8
  br label %24

18:                                               ; preds = %2
  store i32 8, i32* %10, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in6*
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %20, i32 0, i32 0
  store i64* %21, i64** %8, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @EPFNOSUPPORT, align 8
  store i64 %23, i64* @errno, align 8
  store i32 -1, i32* %3, align 4
  br label %78

24:                                               ; preds = %18, %14
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SOCK_STREAM, align 4
  %30 = call i32 @socket(i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %78

34:                                               ; preds = %24
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @htons(i32 %36)
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IPPORT_RESERVED, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @bind(i32 %45, %struct.sockaddr* %46, i32 %47)
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %78

52:                                               ; preds = %44
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EADDRINUSE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @close(i32 %57)
  store i32 -1, i32* %3, align 4
  br label %78

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i64*, i64** %8, align 8
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %64 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %67 = call i32 @bindresvport_sa(i32 %65, %struct.sockaddr* %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @close(i32 %70)
  store i32 -1, i32* %3, align 4
  br label %78

72:                                               ; preds = %60
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ntohs(i64 %74)
  %76 = load i32*, i32** %4, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %69, %56, %50, %33, %22
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i8 signext, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bindresvport_sa(i32, %struct.sockaddr*) #1

declare dso_local i32 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
