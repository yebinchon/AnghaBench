; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_open_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_open_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.device* }
%struct.TYPE_2__ = type { i8* }

@dev_base = common dso_local global i64 0, align 8
@probed_dev = common dso_local global %struct.device* null, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to detect device `%s'\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to activate device `%s'\00", align 1
@pktInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"pkt\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@active_dev = common dso_local global %struct.device* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"device `%s' not supported\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"device `%s' not probed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (i8*, i8*, i32)* @open_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @open_driver(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @dev_base, align 8
  %10 = inttoptr i64 %9 to %struct.device*
  store %struct.device* %10, %struct.device** %8, align 8
  br label %11

11:                                               ; preds = %121, %3
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %125

14:                                               ; preds = %11
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 2
  %17 = load i32 (%struct.device*)*, i32 (%struct.device*)** %16, align 8
  %18 = call i32 @PCAP_ASSERT(i32 (%struct.device*)* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 2
  %22 = load i32 (%struct.device*)*, i32 (%struct.device*)** %21, align 8
  %23 = call i64 @strcmp(i8* %19, i32 (%struct.device*)* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %121

26:                                               ; preds = %14
  %27 = load %struct.device*, %struct.device** @probed_dev, align 8
  %28 = icmp ne %struct.device* %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 4
  %32 = load i32 (%struct.device*)*, i32 (%struct.device*)** %31, align 8
  %33 = call i32 @PCAP_ASSERT(i32 (%struct.device*)* %32)
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 4
  %36 = load i32 (%struct.device*)*, i32 (%struct.device*)** %35, align 8
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = call i32 %36(%struct.device* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @pcap_snprintf(i8* %41, i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %43)
  store %struct.device* null, %struct.device** %4, align 8
  br label %144

45:                                               ; preds = %29
  %46 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %46, %struct.device** @probed_dev, align 8
  br label %53

47:                                               ; preds = %26
  %48 = load %struct.device*, %struct.device** %8, align 8
  %49 = load %struct.device*, %struct.device** @probed_dev, align 8
  %50 = icmp ne %struct.device* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %134

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %45
  %54 = call i32 (...) @FLUSHK()
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* @IFF_ALLMULTI, align 4
  %59 = load i32, i32* @IFF_PROMISC, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.device*, %struct.device** %8, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %74

65:                                               ; preds = %53
  %66 = load i32, i32* @IFF_ALLMULTI, align 4
  %67 = load i32, i32* @IFF_PROMISC, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.device*, %struct.device** %8, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %65, %57
  %75 = load %struct.device*, %struct.device** %8, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 3
  %77 = load i32 (%struct.device*)*, i32 (%struct.device*)** %76, align 8
  %78 = call i32 @PCAP_ASSERT(i32 (%struct.device*)* %77)
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = getelementptr inbounds %struct.device, %struct.device* %79, i32 0, i32 3
  %81 = load i32 (%struct.device*)*, i32 (%struct.device*)** %80, align 8
  %82 = load %struct.device*, %struct.device** %8, align 8
  %83 = call i32 %81(%struct.device* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %105, label %85

85:                                               ; preds = %74
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @pcap_snprintf(i8* %86, i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pktInfo, i32 0, i32 0), align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load %struct.device*, %struct.device** %8, align 8
  %94 = getelementptr inbounds %struct.device, %struct.device* %93, i32 0, i32 2
  %95 = load i32 (%struct.device*)*, i32 (%struct.device*)** %94, align 8
  %96 = call i32 @strncmp(i32 (%struct.device*)* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @strcat(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i8*, i8** %6, align 8
  %102 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pktInfo, i32 0, i32 0), align 8
  %103 = call i32 @strcat(i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %98, %92, %85
  store %struct.device* null, %struct.device** %4, align 8
  br label %144

105:                                              ; preds = %74
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load %struct.device*, %struct.device** %8, align 8
  %110 = getelementptr inbounds %struct.device, %struct.device* %109, i32 0, i32 1
  %111 = load i32 (%struct.device*)*, i32 (%struct.device*)** %110, align 8
  %112 = icmp ne i32 (%struct.device*)* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.device*, %struct.device** %8, align 8
  %115 = getelementptr inbounds %struct.device, %struct.device* %114, i32 0, i32 1
  %116 = load i32 (%struct.device*)*, i32 (%struct.device*)** %115, align 8
  %117 = load %struct.device*, %struct.device** %8, align 8
  %118 = call i32 %116(%struct.device* %117)
  br label %119

119:                                              ; preds = %113, %108, %105
  %120 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %120, %struct.device** @active_dev, align 8
  br label %125

121:                                              ; preds = %25
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = getelementptr inbounds %struct.device, %struct.device* %122, i32 0, i32 5
  %124 = load %struct.device*, %struct.device** %123, align 8
  store %struct.device* %124, %struct.device** %8, align 8
  br label %11

125:                                              ; preds = %119, %11
  %126 = load %struct.device*, %struct.device** %8, align 8
  %127 = icmp ne %struct.device* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @pcap_snprintf(i8* %129, i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %131)
  store %struct.device* null, %struct.device** %4, align 8
  br label %144

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %51
  %135 = load %struct.device*, %struct.device** @probed_dev, align 8
  %136 = icmp ne %struct.device* %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %6, align 8
  %139 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @pcap_snprintf(i8* %138, i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %140)
  store %struct.device* null, %struct.device** %4, align 8
  br label %144

142:                                              ; preds = %134
  %143 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %143, %struct.device** %4, align 8
  br label %144

144:                                              ; preds = %142, %137, %128, %104, %40
  %145 = load %struct.device*, %struct.device** %4, align 8
  ret %struct.device* %145
}

declare dso_local i32 @PCAP_ASSERT(i32 (%struct.device*)*) #1

declare dso_local i64 @strcmp(i8*, i32 (%struct.device*)*) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @FLUSHK(...) #1

declare dso_local i32 @strncmp(i32 (%struct.device*)*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
