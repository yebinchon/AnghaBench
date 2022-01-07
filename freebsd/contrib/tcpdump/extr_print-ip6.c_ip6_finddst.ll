; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip6.c_ip6_finddst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ip6.c_ip6_finddst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.in6_addr = type { i32 }
%struct.ip6_hdr = type { i32, %struct.in6_addr }
%struct.ip6_rthdr = type { i32, i32 }
%struct.ip6_rthdr0 = type { %struct.in6_addr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.in6_addr*, %struct.ip6_hdr*)* @ip6_finddst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_finddst(%struct.TYPE_3__* %0, %struct.in6_addr* %1, %struct.ip6_hdr* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ip6_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.ip6_rthdr*, align 8
  %12 = alloca %struct.ip6_rthdr0*, align 8
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.ip6_hdr* %2, %struct.ip6_hdr** %6, align 8
  %16 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %17 = bitcast %struct.ip6_hdr* %16 to i32*
  store i32* %17, i32** %7, align 8
  store i32 8, i32* %8, align 4
  %18 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %19 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %21, i32 0, i32 1
  store %struct.in6_addr* %22, %struct.in6_addr** %10, align 8
  br label %23

23:                                               ; preds = %104, %3
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ult i32* %24, %27
  br i1 %28, label %29, label %105

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %7, align 8
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %103 [
    i32 134, label %35
    i32 137, label %35
    i32 131, label %35
    i32 132, label %35
    i32 135, label %46
    i32 130, label %52
    i32 138, label %102
    i32 136, label %102
    i32 133, label %102
  ]

35:                                               ; preds = %29, %29, %29, %29
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ND_TCHECK2(i32 %37, i32 2)
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = shl i32 %42, 3
  store i32 %43, i32* %8, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  br label %104

46:                                               ; preds = %29
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ND_TCHECK2(i32 %48, i32 1)
  store i32 4, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  br label %104

52:                                               ; preds = %29
  %53 = load i32*, i32** %7, align 8
  %54 = bitcast i32* %53 to %struct.ip6_rthdr*
  store %struct.ip6_rthdr* %54, %struct.ip6_rthdr** %11, align 8
  %55 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %11, align 8
  %56 = bitcast %struct.ip6_rthdr* %55 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = call i32 @ND_TCHECK(i64 %57)
  %59 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %11, align 8
  %60 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %11, align 8
  %63 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %100 [
    i32 129, label %65
    i32 128, label %65
  ]

65:                                               ; preds = %52, %52
  %66 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %11, align 8
  %67 = bitcast %struct.ip6_rthdr* %66 to %struct.ip6_rthdr0*
  store %struct.ip6_rthdr0* %67, %struct.ip6_rthdr0** %12, align 8
  %68 = load i32, i32* %15, align 4
  %69 = srem i32 %68, 2
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %107

72:                                               ; preds = %65
  %73 = load i32, i32* %15, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %12, align 8
  %76 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %75, i32 0, i32 0
  %77 = load %struct.in6_addr*, %struct.in6_addr** %76, align 8
  %78 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %77, i64 0
  store %struct.in6_addr* %78, %struct.in6_addr** %13, align 8
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %96, %72
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %85 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %84, i64 1
  %86 = bitcast %struct.in6_addr* %85 to i32*
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ugt i32* %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %107

92:                                               ; preds = %83
  %93 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  store %struct.in6_addr* %93, %struct.in6_addr** %10, align 8
  %94 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %95 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %94, i32 1
  store %struct.in6_addr* %95, %struct.in6_addr** %13, align 8
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %79

99:                                               ; preds = %79
  br label %101

100:                                              ; preds = %52
  br label %101

101:                                              ; preds = %100, %99
  br label %106

102:                                              ; preds = %29, %29, %29
  br label %103

103:                                              ; preds = %29, %102
  br label %106

104:                                              ; preds = %46, %35
  br label %23

105:                                              ; preds = %23
  br label %106

106:                                              ; preds = %105, %103, %101
  br label %107

107:                                              ; preds = %106, %91, %71
  %108 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %109 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %110 = call i32 @UNALIGNED_MEMCPY(%struct.in6_addr* %108, %struct.in6_addr* %109, i32 4)
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @UNALIGNED_MEMCPY(%struct.in6_addr*, %struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
