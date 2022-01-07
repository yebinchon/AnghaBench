; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_last_ip.c_pt_last_ip_update_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_last_ip.c_pt_last_ip_update_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_last_ip = type { i32, i32, i32 }
%struct.pt_packet_ip = type { i32, i32 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_last_ip_update_ip(%struct.pt_last_ip* %0, %struct.pt_packet_ip* %1, %struct.pt_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_last_ip*, align 8
  %6 = alloca %struct.pt_packet_ip*, align 8
  %7 = alloca %struct.pt_config*, align 8
  store %struct.pt_last_ip* %0, %struct.pt_last_ip** %5, align 8
  store %struct.pt_packet_ip* %1, %struct.pt_packet_ip** %6, align 8
  store %struct.pt_config* %2, %struct.pt_config** %7, align 8
  %8 = load %struct.pt_config*, %struct.pt_config** %7, align 8
  %9 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %10 = icmp ne %struct.pt_last_ip* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %6, align 8
  %13 = icmp ne %struct.pt_packet_ip* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %105

17:                                               ; preds = %11
  %18 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %6, align 8
  %19 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %102 [
    i32 131, label %21
    i32 132, label %24
    i32 130, label %35
    i32 129, label %54
    i32 128, label %73
    i32 133, label %92
  ]

21:                                               ; preds = %17
  %22 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %23 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %105

24:                                               ; preds = %17
  %25 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %6, align 8
  %26 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sext(i32 %27, i32 48)
  %29 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %30 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %32 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %31, i32 0, i32 2
  store i32 1, i32* %32, align 4
  %33 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %34 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %105

35:                                               ; preds = %17
  %36 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %37 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, -65536
  %41 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %6, align 8
  %42 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, 65535
  %46 = or i64 %40, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %49 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %51 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %50, i32 0, i32 2
  store i32 1, i32* %51, align 4
  %52 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %53 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %105

54:                                               ; preds = %17
  %55 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %56 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = and i64 %58, -4294967296
  %60 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %6, align 8
  %61 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = and i64 %63, 4294967295
  %65 = or i64 %59, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %68 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %70 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %69, i32 0, i32 2
  store i32 1, i32* %70, align 4
  %71 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %72 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %105

73:                                               ; preds = %17
  %74 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %75 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = and i64 %77, -281474976710656
  %79 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %6, align 8
  %80 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = and i64 %82, 281474976710655
  %84 = or i64 %78, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %87 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %89 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %88, i32 0, i32 2
  store i32 1, i32* %89, align 4
  %90 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %91 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %90, i32 0, i32 0
  store i32 0, i32* %91, align 4
  store i32 0, i32* %4, align 4
  br label %105

92:                                               ; preds = %17
  %93 = load %struct.pt_packet_ip*, %struct.pt_packet_ip** %6, align 8
  %94 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %97 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %99 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %98, i32 0, i32 2
  store i32 1, i32* %99, align 4
  %100 = load %struct.pt_last_ip*, %struct.pt_last_ip** %5, align 8
  %101 = getelementptr inbounds %struct.pt_last_ip, %struct.pt_last_ip* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  store i32 0, i32* %4, align 4
  br label %105

102:                                              ; preds = %17
  %103 = load i32, i32* @pte_bad_packet, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %92, %73, %54, %35, %24, %21, %14
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @sext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
