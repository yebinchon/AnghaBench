; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_ucma_convert_to_ai.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_ucma_convert_to_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32*, i32, i32, i32, i8*, i32, i32 }
%struct.rdma_addrinfo = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@RAI_PASSIVE = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@RAI_NUMERICHOST = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i8* null, align 8
@IPPROTO_UDP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.addrinfo*, %struct.rdma_addrinfo*)* @ucma_convert_to_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_convert_to_ai(%struct.addrinfo* %0, %struct.rdma_addrinfo* %1) #0 {
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.rdma_addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %3, align 8
  store %struct.rdma_addrinfo* %1, %struct.rdma_addrinfo** %4, align 8
  %5 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %6 = call i32 @memset(%struct.addrinfo* %5, i32 0, i32 48)
  %7 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %8 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RAI_PASSIVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @AI_PASSIVE, align 4
  %15 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %19 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RAI_NUMERICHOST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @AI_NUMERICHOST, align 4
  %26 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %32 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_IB, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %38 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %44 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %54 [
    i32 136, label %46
    i32 135, label %46
    i32 132, label %46
    i32 133, label %46
    i32 134, label %50
  ]

46:                                               ; preds = %42, %42, %42, %42
  %47 = load i32, i32* @SOCK_STREAM, align 4
  %48 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @SOCK_DGRAM, align 4
  %52 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %42, %50, %46
  %55 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %56 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %88 [
    i32 129, label %58
    i32 130, label %62
    i32 128, label %62
    i32 131, label %66
  ]

58:                                               ; preds = %54
  %59 = load i8*, i8** @IPPROTO_TCP, align 8
  %60 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  br label %88

62:                                               ; preds = %54, %54
  %63 = load i8*, i8** @IPPROTO_UDP, align 8
  %64 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  br label %88

66:                                               ; preds = %54
  %67 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SOCK_STREAM, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i8*, i8** @IPPROTO_TCP, align 8
  %74 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  br label %87

76:                                               ; preds = %66
  %77 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %78 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SOCK_DGRAM, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i8*, i8** @IPPROTO_UDP, align 8
  %84 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %85 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %72
  br label %88

88:                                               ; preds = %54, %87, %62, %58
  %89 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %90 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RAI_PASSIVE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %97 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %102 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %105 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  br label %117

106:                                              ; preds = %88
  %107 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %108 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %111 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %113 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %116 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %106, %95
  %118 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %119 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %122 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %124 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  ret void
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
