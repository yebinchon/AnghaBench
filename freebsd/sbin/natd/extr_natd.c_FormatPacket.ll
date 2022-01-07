; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_FormatPacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_FormatPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32, i32, i32, i32 }
%struct.tcphdr = type { i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.icmp = type { i32, i32 }

@FormatPacket.buf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [21 x i8] c"[TCP] %s:%d -> %s:%d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"[UDP] %s:%d -> %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"[ICMP] %s -> %s %u(%u)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"[%d] %s -> %s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ip*)* @FormatPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FormatPacket(%struct.ip* %0) #0 {
  %2 = alloca %struct.ip*, align 8
  %3 = alloca %struct.tcphdr*, align 8
  %4 = alloca %struct.udphdr*, align 8
  %5 = alloca %struct.icmp*, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca [20 x i8], align 16
  store %struct.ip* %0, %struct.ip** %2, align 8
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %9 = load %struct.ip*, %struct.ip** %2, align 8
  %10 = getelementptr inbounds %struct.ip, %struct.ip* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @inet_ntoa(i32 %11)
  %13 = call i32 @strcpy(i8* %8, i32 %12)
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %15 = load %struct.ip*, %struct.ip** %2, align 8
  %16 = getelementptr inbounds %struct.ip, %struct.ip* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @inet_ntoa(i32 %17)
  %19 = call i32 @strcpy(i8* %14, i32 %18)
  %20 = load %struct.ip*, %struct.ip** %2, align 8
  %21 = getelementptr inbounds %struct.ip, %struct.ip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %84 [
    i32 129, label %23
    i32 128, label %44
    i32 130, label %65
  ]

23:                                               ; preds = %1
  %24 = load %struct.ip*, %struct.ip** %2, align 8
  %25 = bitcast %struct.ip* %24 to i8*
  %26 = load %struct.ip*, %struct.ip** %2, align 8
  %27 = getelementptr inbounds %struct.ip, %struct.ip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  %32 = bitcast i8* %31 to %struct.tcphdr*
  store %struct.tcphdr* %32, %struct.tcphdr** %3, align 8
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %34 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %35 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntohs(i32 %36)
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %39 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %40 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohs(i32 %41)
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FormatPacket.buf, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %37, i8* %38, i32 %42)
  br label %91

44:                                               ; preds = %1
  %45 = load %struct.ip*, %struct.ip** %2, align 8
  %46 = bitcast %struct.ip* %45 to i8*
  %47 = load %struct.ip*, %struct.ip** %2, align 8
  %48 = getelementptr inbounds %struct.ip, %struct.ip* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %46, i64 %51
  %53 = bitcast i8* %52 to %struct.udphdr*
  store %struct.udphdr* %53, %struct.udphdr** %4, align 8
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %55 = load %struct.udphdr*, %struct.udphdr** %4, align 8
  %56 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohs(i32 %57)
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %60 = load %struct.udphdr*, %struct.udphdr** %4, align 8
  %61 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FormatPacket.buf, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %58, i8* %59, i32 %63)
  br label %91

65:                                               ; preds = %1
  %66 = load %struct.ip*, %struct.ip** %2, align 8
  %67 = bitcast %struct.ip* %66 to i8*
  %68 = load %struct.ip*, %struct.ip** %2, align 8
  %69 = getelementptr inbounds %struct.ip, %struct.ip* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %67, i64 %72
  %74 = bitcast i8* %73 to %struct.icmp*
  store %struct.icmp* %74, %struct.icmp** %5, align 8
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %76 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %77 = load %struct.icmp*, %struct.icmp** %5, align 8
  %78 = getelementptr inbounds %struct.icmp, %struct.icmp* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.icmp*, %struct.icmp** %5, align 8
  %81 = getelementptr inbounds %struct.icmp, %struct.icmp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FormatPacket.buf, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %75, i8* %76, i32 %79, i32 %82)
  br label %91

84:                                               ; preds = %1
  %85 = load %struct.ip*, %struct.ip** %2, align 8
  %86 = getelementptr inbounds %struct.ip, %struct.ip* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %89 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %90 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FormatPacket.buf, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %87, i8* %88, i8* %89)
  br label %91

91:                                               ; preds = %84, %65, %44, %23
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FormatPacket.buf, i64 0, i64 0)
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
