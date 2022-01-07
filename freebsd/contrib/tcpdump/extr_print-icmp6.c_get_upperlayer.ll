; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_get_upperlayer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_get_upperlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udphdr = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.ip6_hdr = type { i32 }
%struct.ip6_hbh = type { i32, i32 }
%struct.ip6_frag = type { i32, i32 }
%struct.ah = type { i32, i32 }

@IP6F_OFF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.udphdr* (%struct.TYPE_3__*, i32*, i32*)* @get_upperlayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.udphdr* @get_upperlayer(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.udphdr*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ip6_hdr*, align 8
  %10 = alloca %struct.udphdr*, align 8
  %11 = alloca %struct.ip6_hbh*, align 8
  %12 = alloca %struct.ip6_frag*, align 8
  %13 = alloca %struct.ah*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %17, %struct.ip6_hdr** %9, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %22 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ND_TTEST(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store %struct.udphdr* null, %struct.udphdr** %4, align 8
  br label %116

27:                                               ; preds = %3
  %28 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %29 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  store i32 4, i32* %15, align 4
  br label %31

31:                                               ; preds = %114, %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %115

35:                                               ; preds = %31
  %36 = load i32, i32* %15, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %6, align 8
  %40 = load i32, i32* %14, align 4
  switch i32 %40, label %111 [
    i32 128, label %41
    i32 129, label %41
    i32 131, label %54
    i32 133, label %54
    i32 130, label %54
    i32 132, label %72
    i32 134, label %93
  ]

41:                                               ; preds = %35, %35
  %42 = load i32*, i32** %6, align 8
  %43 = bitcast i32* %42 to %struct.udphdr*
  store %struct.udphdr* %43, %struct.udphdr** %10, align 8
  %44 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %45 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ND_TTEST(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  store %struct.udphdr* %52, %struct.udphdr** %4, align 8
  br label %116

53:                                               ; preds = %41
  store %struct.udphdr* null, %struct.udphdr** %4, align 8
  br label %116

54:                                               ; preds = %35, %35, %35
  %55 = load i32*, i32** %6, align 8
  %56 = bitcast i32* %55 to %struct.ip6_hbh*
  store %struct.ip6_hbh* %56, %struct.ip6_hbh** %11, align 8
  %57 = load %struct.ip6_hbh*, %struct.ip6_hbh** %11, align 8
  %58 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ND_TTEST(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store %struct.udphdr* null, %struct.udphdr** %4, align 8
  br label %116

63:                                               ; preds = %54
  %64 = load %struct.ip6_hbh*, %struct.ip6_hbh** %11, align 8
  %65 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  %67 = load %struct.ip6_hbh*, %struct.ip6_hbh** %11, align 8
  %68 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = shl i32 %70, 3
  store i32 %71, i32* %15, align 4
  br label %114

72:                                               ; preds = %35
  %73 = load i32*, i32** %6, align 8
  %74 = bitcast i32* %73 to %struct.ip6_frag*
  store %struct.ip6_frag* %74, %struct.ip6_frag** %12, align 8
  %75 = load %struct.ip6_frag*, %struct.ip6_frag** %12, align 8
  %76 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ND_TTEST(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  store %struct.udphdr* null, %struct.udphdr** %4, align 8
  br label %116

81:                                               ; preds = %72
  %82 = load %struct.ip6_frag*, %struct.ip6_frag** %12, align 8
  %83 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %82, i32 0, i32 0
  %84 = call i32 @EXTRACT_16BITS(i32* %83)
  %85 = load i32, i32* @IP6F_OFF_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store %struct.udphdr* null, %struct.udphdr** %4, align 8
  br label %116

89:                                               ; preds = %81
  %90 = load %struct.ip6_frag*, %struct.ip6_frag** %12, align 8
  %91 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %14, align 4
  store i32 8, i32* %15, align 4
  br label %114

93:                                               ; preds = %35
  %94 = load i32*, i32** %6, align 8
  %95 = bitcast i32* %94 to %struct.ah*
  store %struct.ah* %95, %struct.ah** %13, align 8
  %96 = load %struct.ah*, %struct.ah** %13, align 8
  %97 = getelementptr inbounds %struct.ah, %struct.ah* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @ND_TTEST(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  store %struct.udphdr* null, %struct.udphdr** %4, align 8
  br label %116

102:                                              ; preds = %93
  %103 = load %struct.ah*, %struct.ah** %13, align 8
  %104 = getelementptr inbounds %struct.ah, %struct.ah* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %14, align 4
  %106 = load %struct.ah*, %struct.ah** %13, align 8
  %107 = getelementptr inbounds %struct.ah, %struct.ah* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 2
  %110 = shl i32 %109, 2
  store i32 %110, i32* %15, align 4
  br label %114

111:                                              ; preds = %35
  %112 = load i32, i32* %14, align 4
  %113 = load i32*, i32** %7, align 8
  store i32 %112, i32* %113, align 4
  store %struct.udphdr* null, %struct.udphdr** %4, align 8
  br label %116

114:                                              ; preds = %102, %89, %63
  br label %31

115:                                              ; preds = %31
  store %struct.udphdr* null, %struct.udphdr** %4, align 8
  br label %116

116:                                              ; preds = %115, %111, %101, %88, %80, %62, %53, %49, %26
  %117 = load %struct.udphdr*, %struct.udphdr** %4, align 8
  ret %struct.udphdr* %117
}

declare dso_local i64 @ND_TTEST(i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
