; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux.c_linux_ifflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux.c_linux_ifflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }

@IFF_UP = common dso_local global i16 0, align 2
@LINUX_IFF_UP = common dso_local global i16 0, align 2
@IFF_BROADCAST = common dso_local global i16 0, align 2
@LINUX_IFF_BROADCAST = common dso_local global i16 0, align 2
@IFF_DEBUG = common dso_local global i16 0, align 2
@LINUX_IFF_DEBUG = common dso_local global i16 0, align 2
@IFF_LOOPBACK = common dso_local global i16 0, align 2
@LINUX_IFF_LOOPBACK = common dso_local global i16 0, align 2
@IFF_POINTOPOINT = common dso_local global i16 0, align 2
@LINUX_IFF_POINTOPOINT = common dso_local global i16 0, align 2
@IFF_DRV_RUNNING = common dso_local global i16 0, align 2
@LINUX_IFF_RUNNING = common dso_local global i16 0, align 2
@IFF_NOARP = common dso_local global i16 0, align 2
@LINUX_IFF_NOARP = common dso_local global i16 0, align 2
@IFF_PROMISC = common dso_local global i16 0, align 2
@LINUX_IFF_PROMISC = common dso_local global i16 0, align 2
@IFF_ALLMULTI = common dso_local global i16 0, align 2
@LINUX_IFF_ALLMULTI = common dso_local global i16 0, align 2
@IFF_MULTICAST = common dso_local global i16 0, align 2
@LINUX_IFF_MULTICAST = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_ifflags(%struct.ifnet* %0, i16* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16, align 2
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i16* %1, i16** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %8, %11
  %13 = and i32 %12, 65535
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %5, align 2
  %15 = load i16*, i16** %4, align 8
  store i16 0, i16* %15, align 2
  %16 = load i16, i16* %5, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @IFF_UP, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i16, i16* @LINUX_IFF_UP, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16*, i16** %4, align 8
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  %28 = or i32 %27, %24
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %25, align 2
  br label %30

30:                                               ; preds = %22, %2
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @IFF_BROADCAST, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i16, i16* @LINUX_IFF_BROADCAST, align 2
  %39 = sext i16 %38 to i32
  %40 = load i16*, i16** %4, align 8
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i32
  %43 = or i32 %42, %39
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %40, align 2
  br label %45

45:                                               ; preds = %37, %30
  %46 = load i16, i16* %5, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @IFF_DEBUG, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i16, i16* @LINUX_IFF_DEBUG, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16*, i16** %4, align 8
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  %58 = or i32 %57, %54
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %55, align 2
  br label %60

60:                                               ; preds = %52, %45
  %61 = load i16, i16* %5, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* @IFF_LOOPBACK, align 2
  %64 = zext i16 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load i16, i16* @LINUX_IFF_LOOPBACK, align 2
  %69 = sext i16 %68 to i32
  %70 = load i16*, i16** %4, align 8
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  %73 = or i32 %72, %69
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %70, align 2
  br label %75

75:                                               ; preds = %67, %60
  %76 = load i16, i16* %5, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @IFF_POINTOPOINT, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load i16, i16* @LINUX_IFF_POINTOPOINT, align 2
  %84 = sext i16 %83 to i32
  %85 = load i16*, i16** %4, align 8
  %86 = load i16, i16* %85, align 2
  %87 = sext i16 %86 to i32
  %88 = or i32 %87, %84
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %85, align 2
  br label %90

90:                                               ; preds = %82, %75
  %91 = load i16, i16* %5, align 2
  %92 = zext i16 %91 to i32
  %93 = load i16, i16* @IFF_DRV_RUNNING, align 2
  %94 = zext i16 %93 to i32
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load i16, i16* @LINUX_IFF_RUNNING, align 2
  %99 = sext i16 %98 to i32
  %100 = load i16*, i16** %4, align 8
  %101 = load i16, i16* %100, align 2
  %102 = sext i16 %101 to i32
  %103 = or i32 %102, %99
  %104 = trunc i32 %103 to i16
  store i16 %104, i16* %100, align 2
  br label %105

105:                                              ; preds = %97, %90
  %106 = load i16, i16* %5, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* @IFF_NOARP, align 2
  %109 = zext i16 %108 to i32
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load i16, i16* @LINUX_IFF_NOARP, align 2
  %114 = sext i16 %113 to i32
  %115 = load i16*, i16** %4, align 8
  %116 = load i16, i16* %115, align 2
  %117 = sext i16 %116 to i32
  %118 = or i32 %117, %114
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %115, align 2
  br label %120

120:                                              ; preds = %112, %105
  %121 = load i16, i16* %5, align 2
  %122 = zext i16 %121 to i32
  %123 = load i16, i16* @IFF_PROMISC, align 2
  %124 = zext i16 %123 to i32
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load i16, i16* @LINUX_IFF_PROMISC, align 2
  %129 = sext i16 %128 to i32
  %130 = load i16*, i16** %4, align 8
  %131 = load i16, i16* %130, align 2
  %132 = sext i16 %131 to i32
  %133 = or i32 %132, %129
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %130, align 2
  br label %135

135:                                              ; preds = %127, %120
  %136 = load i16, i16* %5, align 2
  %137 = zext i16 %136 to i32
  %138 = load i16, i16* @IFF_ALLMULTI, align 2
  %139 = zext i16 %138 to i32
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %135
  %143 = load i16, i16* @LINUX_IFF_ALLMULTI, align 2
  %144 = sext i16 %143 to i32
  %145 = load i16*, i16** %4, align 8
  %146 = load i16, i16* %145, align 2
  %147 = sext i16 %146 to i32
  %148 = or i32 %147, %144
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %145, align 2
  br label %150

150:                                              ; preds = %142, %135
  %151 = load i16, i16* %5, align 2
  %152 = zext i16 %151 to i32
  %153 = load i16, i16* @IFF_MULTICAST, align 2
  %154 = zext i16 %153 to i32
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %150
  %158 = load i16, i16* @LINUX_IFF_MULTICAST, align 2
  %159 = sext i16 %158 to i32
  %160 = load i16*, i16** %4, align 8
  %161 = load i16, i16* %160, align 2
  %162 = sext i16 %161 to i32
  %163 = or i32 %162, %159
  %164 = trunc i32 %163 to i16
  store i16 %164, i16* %160, align 2
  br label %165

165:                                              ; preds = %157, %150
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
