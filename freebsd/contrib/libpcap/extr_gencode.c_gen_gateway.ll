; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_gateway.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_gateway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.addrinfo = type { %struct.TYPE_13__*, %struct.addrinfo* }
%struct.TYPE_13__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"direction applied to 'gateway'\00", align 1
@Q_OR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"'gateway' supported only on ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@Q_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"illegal modifier of 'gateway'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_15__*, i32*, %struct.addrinfo*, i32, i32)* @gen_gateway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_gateway(%struct.TYPE_15__* %0, i32* %1, %struct.addrinfo* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.block*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.block*, align 8
  %13 = alloca %struct.block*, align 8
  %14 = alloca %struct.block*, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca %struct.sockaddr_in*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = call i32 @bpf_error(%struct.TYPE_15__* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %128 [
    i32 130, label %24
    i32 129, label %24
    i32 131, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %22, %22, %22, %22
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %65 [
    i32 143, label %28
    i32 136, label %28
    i32 135, label %28
    i32 142, label %42
    i32 141, label %47
    i32 140, label %52
    i32 133, label %52
    i32 138, label %52
    i32 139, label %52
    i32 134, label %52
    i32 132, label %57
    i32 137, label %60
  ]

28:                                               ; preds = %24, %24, %24
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = call %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_15__* %29)
  store %struct.block* %30, %struct.block** %13, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @Q_OR, align 4
  %34 = call %struct.block* @gen_ehostop(%struct.TYPE_15__* %31, i32* %32, i32 %33)
  store %struct.block* %34, %struct.block** %12, align 8
  %35 = load %struct.block*, %struct.block** %13, align 8
  %36 = icmp ne %struct.block* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.block*, %struct.block** %13, align 8
  %39 = load %struct.block*, %struct.block** %12, align 8
  %40 = call i32 @gen_and(%struct.block* %38, %struct.block* %39)
  br label %41

41:                                               ; preds = %37, %28
  br label %68

42:                                               ; preds = %24
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @Q_OR, align 4
  %46 = call %struct.block* @gen_fhostop(%struct.TYPE_15__* %43, i32* %44, i32 %45)
  store %struct.block* %46, %struct.block** %12, align 8
  br label %68

47:                                               ; preds = %24
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @Q_OR, align 4
  %51 = call %struct.block* @gen_thostop(%struct.TYPE_15__* %48, i32* %49, i32 %50)
  store %struct.block* %51, %struct.block** %12, align 8
  br label %68

52:                                               ; preds = %24, %24, %24, %24, %24
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @Q_OR, align 4
  %56 = call %struct.block* @gen_wlanhostop(%struct.TYPE_15__* %53, i32* %54, i32 %55)
  store %struct.block* %56, %struct.block** %12, align 8
  br label %68

57:                                               ; preds = %24
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = call i32 @bpf_error(%struct.TYPE_15__* %58, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  br label %68

60:                                               ; preds = %24
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @Q_OR, align 4
  %64 = call %struct.block* @gen_ipfchostop(%struct.TYPE_15__* %61, i32* %62, i32 %63)
  store %struct.block* %64, %struct.block** %12, align 8
  br label %68

65:                                               ; preds = %24
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = call i32 @bpf_error(%struct.TYPE_15__* %66, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60, %57, %52, %47, %42, %41
  store %struct.block* null, %struct.block** %13, align 8
  %69 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %69, %struct.addrinfo** %15, align 8
  br label %70

70:                                               ; preds = %113, %68
  %71 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %72 = icmp ne %struct.addrinfo* %71, null
  br i1 %72, label %73, label %117

73:                                               ; preds = %70
  %74 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = icmp ne %struct.TYPE_13__* %76, null
  br i1 %77, label %78, label %112

78:                                               ; preds = %73
  %79 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AF_INET, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %78
  %87 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = bitcast %struct.TYPE_13__* %89 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %90, %struct.sockaddr_in** %16, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ntohl(i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @Q_OR, align 4
  %99 = load i32, i32* @Q_HOST, align 4
  %100 = call %struct.block* @gen_host(%struct.TYPE_15__* %91, i32 %96, i32 -1, i32 %97, i32 %98, i32 %99)
  store %struct.block* %100, %struct.block** %14, align 8
  %101 = load %struct.block*, %struct.block** %13, align 8
  %102 = icmp eq %struct.block* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %86
  %104 = load %struct.block*, %struct.block** %14, align 8
  store %struct.block* %104, %struct.block** %13, align 8
  br label %110

105:                                              ; preds = %86
  %106 = load %struct.block*, %struct.block** %13, align 8
  %107 = load %struct.block*, %struct.block** %14, align 8
  %108 = call i32 @gen_or(%struct.block* %106, %struct.block* %107)
  %109 = load %struct.block*, %struct.block** %14, align 8
  store %struct.block* %109, %struct.block** %13, align 8
  br label %110

110:                                              ; preds = %105, %103
  br label %111

111:                                              ; preds = %110, %78
  br label %112

112:                                              ; preds = %111, %73
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %115 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %114, i32 0, i32 1
  %116 = load %struct.addrinfo*, %struct.addrinfo** %115, align 8
  store %struct.addrinfo* %116, %struct.addrinfo** %15, align 8
  br label %70

117:                                              ; preds = %70
  %118 = load %struct.block*, %struct.block** %13, align 8
  %119 = icmp eq %struct.block* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store %struct.block* null, %struct.block** %6, align 8
  br label %131

121:                                              ; preds = %117
  %122 = load %struct.block*, %struct.block** %13, align 8
  %123 = call i32 @gen_not(%struct.block* %122)
  %124 = load %struct.block*, %struct.block** %12, align 8
  %125 = load %struct.block*, %struct.block** %13, align 8
  %126 = call i32 @gen_and(%struct.block* %124, %struct.block* %125)
  %127 = load %struct.block*, %struct.block** %13, align 8
  store %struct.block* %127, %struct.block** %6, align 8
  br label %131

128:                                              ; preds = %22
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %130 = call i32 @bpf_error(%struct.TYPE_15__* %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %121, %120
  %132 = load %struct.block*, %struct.block** %6, align 8
  ret %struct.block* %132
}

declare dso_local i32 @bpf_error(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.block* @gen_prevlinkhdr_check(%struct.TYPE_15__*) #1

declare dso_local %struct.block* @gen_ehostop(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_fhostop(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local %struct.block* @gen_thostop(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local %struct.block* @gen_wlanhostop(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local %struct.block* @gen_ipfchostop(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local %struct.block* @gen_host(%struct.TYPE_15__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local i32 @gen_not(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
