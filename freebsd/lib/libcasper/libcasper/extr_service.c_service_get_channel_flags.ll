; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_get_channel_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_service.c_service_get_channel_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service = type { i64, i32 }

@SERVICE_MAGIC = common dso_local global i64 0, align 8
@CASPER_SERVICE_NO_UNIQ_LIMITS = common dso_local global i32 0, align 4
@CASPER_NO_UNIQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @service_get_channel_flags(%struct.service* %0) #0 {
  %2 = alloca %struct.service*, align 8
  %3 = alloca i32, align 4
  store %struct.service* %0, %struct.service** %2, align 8
  %4 = load %struct.service*, %struct.service** %2, align 8
  %5 = getelementptr inbounds %struct.service, %struct.service* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SERVICE_MAGIC, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  store i32 0, i32* %3, align 4
  %11 = load %struct.service*, %struct.service** %2, align 8
  %12 = getelementptr inbounds %struct.service, %struct.service* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CASPER_SERVICE_NO_UNIQ_LIMITS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @CASPER_NO_UNIQ, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
