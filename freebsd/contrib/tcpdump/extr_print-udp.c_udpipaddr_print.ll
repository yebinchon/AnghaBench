; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-udp.c_udpipaddr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-udp.c_udpipaddr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i64, i32, i32 }
%struct.ip6_hdr = type { i64, i32, i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s > %s: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s.%s > %s.%s: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ip*, i32, i32)* @udpipaddr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udpipaddr_print(i32* %0, %struct.ip* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip6_hdr*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ip* %1, %struct.ip** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ip*, %struct.ip** %6, align 8
  %11 = call i32 @IP_V(%struct.ip* %10)
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.ip*, %struct.ip** %6, align 8
  %15 = bitcast %struct.ip* %14 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %15, %struct.ip6_hdr** %9, align 8
  br label %17

16:                                               ; preds = %4
  store %struct.ip6_hdr* null, %struct.ip6_hdr** %9, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %19 = icmp ne %struct.ip6_hdr* %18, null
  br i1 %19, label %20, label %78

20:                                               ; preds = %17
  %21 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %22 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IPPROTO_UDP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %33 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %32, i32 0, i32 2
  %34 = call i32 @ip6addr_string(i32* %31, i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %37 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %36, i32 0, i32 1
  %38 = call i32 @ip6addr_string(i32* %35, i32* %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @ND_PRINT(i32* %40)
  br label %61

42:                                               ; preds = %26
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %45, i32 0, i32 2
  %47 = call i32 @ip6addr_string(i32* %44, i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @udpport_string(i32* %48, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %53 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %52, i32 0, i32 1
  %54 = call i32 @ip6addr_string(i32* %51, i32* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @udpport_string(i32* %55, i32 %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @ND_PRINT(i32* %59)
  br label %61

61:                                               ; preds = %42, %29
  br label %77

62:                                               ; preds = %20
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @udpport_string(i32* %67, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @udpport_string(i32* %70, i32 %71)
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i32*
  %75 = call i32 @ND_PRINT(i32* %74)
  br label %76

76:                                               ; preds = %65, %62
  br label %77

77:                                               ; preds = %76, %61
  br label %136

78:                                               ; preds = %17
  %79 = load %struct.ip*, %struct.ip** %6, align 8
  %80 = getelementptr inbounds %struct.ip, %struct.ip* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IPPROTO_UDP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.ip*, %struct.ip** %6, align 8
  %91 = getelementptr inbounds %struct.ip, %struct.ip* %90, i32 0, i32 2
  %92 = call i32 @ipaddr_string(i32* %89, i32* %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.ip*, %struct.ip** %6, align 8
  %95 = getelementptr inbounds %struct.ip, %struct.ip* %94, i32 0, i32 1
  %96 = call i32 @ipaddr_string(i32* %93, i32* %95)
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i32*
  %99 = call i32 @ND_PRINT(i32* %98)
  br label %119

100:                                              ; preds = %84
  %101 = load i32*, i32** %5, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.ip*, %struct.ip** %6, align 8
  %104 = getelementptr inbounds %struct.ip, %struct.ip* %103, i32 0, i32 2
  %105 = call i32 @ipaddr_string(i32* %102, i32* %104)
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @udpport_string(i32* %106, i32 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.ip*, %struct.ip** %6, align 8
  %111 = getelementptr inbounds %struct.ip, %struct.ip* %110, i32 0, i32 1
  %112 = call i32 @ipaddr_string(i32* %109, i32* %111)
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @udpport_string(i32* %113, i32 %114)
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i32*
  %118 = call i32 @ND_PRINT(i32* %117)
  br label %119

119:                                              ; preds = %100, %87
  br label %135

120:                                              ; preds = %78
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, -1
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i32*, i32** %5, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @udpport_string(i32* %125, i32 %126)
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @udpport_string(i32* %128, i32 %129)
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i32*
  %133 = call i32 @ND_PRINT(i32* %132)
  br label %134

134:                                              ; preds = %123, %120
  br label %135

135:                                              ; preds = %134, %119
  br label %136

136:                                              ; preds = %135, %77
  ret void
}

declare dso_local i32 @IP_V(%struct.ip*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ip6addr_string(i32*, i32*) #1

declare dso_local i32 @udpport_string(i32*, i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
