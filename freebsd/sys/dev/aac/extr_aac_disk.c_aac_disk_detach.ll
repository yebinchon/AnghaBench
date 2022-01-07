; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_disk.c_aac_disk_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_disk.c_aac_disk_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_disk = type { i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_DISK_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aac_disk_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_disk_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_disk*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @device_get_softc(i32 %5)
  %7 = inttoptr i64 %6 to %struct.aac_disk*
  store %struct.aac_disk* %7, %struct.aac_disk** %4, align 8
  %8 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %9 = call i32 @fwprintf(i32* null, i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.aac_disk*, %struct.aac_disk** %4, align 8
  %11 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AAC_DISK_OPEN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.aac_disk*, %struct.aac_disk** %4, align 8
  %20 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @disk_destroy(i32 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @fwprintf(i32*, i8*, i8*) #1

declare dso_local i32 @disk_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
