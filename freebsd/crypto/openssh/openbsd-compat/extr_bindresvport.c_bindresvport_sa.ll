; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bindresvport.c_bindresvport_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_bindresvport.c_bindresvport_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i64 }
%struct.sockaddr_in6 = type { i64 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EPFNOSUPPORT = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@NPORTS = common dso_local global i32 0, align 4
@STARTPORT = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENDPORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bindresvport_sa(i32 %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %16 = icmp eq %struct.sockaddr* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 4)
  %19 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  store %struct.sockaddr* %19, %struct.sockaddr** %5, align 8
  store i32 4, i32* %13, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = call i32 @getsockname(i32 %20, %struct.sockaddr* %21, i32* %13)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %112

25:                                               ; preds = %17
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 %29)
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @AF_INET, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %41 = bitcast %struct.sockaddr* %40 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %41, %struct.sockaddr_in** %9, align 8
  store i32 8, i32* %13, align 4
  %42 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 0
  store i64* %43, i64** %11, align 8
  br label %56

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @AF_INET6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %50 = bitcast %struct.sockaddr* %49 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %50, %struct.sockaddr_in6** %10, align 8
  store i32 8, i32* %13, align 4
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 0
  store i64* %52, i64** %11, align 8
  br label %55

53:                                               ; preds = %44
  %54 = load i64, i64* @EPFNOSUPPORT, align 8
  store i64 %54, i64* @errno, align 8
  store i32 -1, i32* %3, align 4
  br label %112

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %59 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i64*, i64** %11, align 8
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @ntohs(i64 %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load i32, i32* @NPORTS, align 4
  %67 = call i64 @arc4random_uniform(i32 %66)
  %68 = load i64, i64* @STARTPORT, align 8
  %69 = add nsw i64 %67, %68
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %65, %56
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %107, %70
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @NPORTS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  %76 = load i64, i64* %12, align 8
  %77 = call i64 @htons(i64 %76)
  %78 = load i64*, i64** %11, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @bind(i32 %79, %struct.sockaddr* %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %110

86:                                               ; preds = %75
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i64, i64* @errno, align 8
  %91 = load i64, i64* @EADDRINUSE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* @errno, align 8
  %95 = load i64, i64* @EINVAL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %110

98:                                               ; preds = %93, %89, %86
  %99 = load i64, i64* %12, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* @ENDPORT, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i64, i64* @STARTPORT, align 8
  store i64 %105, i64* %12, align 8
  br label %106

106:                                              ; preds = %104, %98
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %71

110:                                              ; preds = %97, %85, %71
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %53, %24
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @arc4random_uniform(i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
