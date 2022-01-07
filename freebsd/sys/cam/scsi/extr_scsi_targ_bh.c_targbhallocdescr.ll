; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhallocdescr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhallocdescr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.targbh_cmd_desc = type { i32, i32* }

@M_SCSIBH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.targbh_cmd_desc* ()* @targbhallocdescr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.targbh_cmd_desc* @targbhallocdescr() #0 {
  %1 = alloca %struct.targbh_cmd_desc*, align 8
  %2 = alloca %struct.targbh_cmd_desc*, align 8
  %3 = load i32, i32* @M_SCSIBH, align 4
  %4 = load i32, i32* @M_NOWAIT, align 4
  %5 = call i32* @malloc(i32 16, i32 %3, i32 %4)
  %6 = bitcast i32* %5 to %struct.targbh_cmd_desc*
  store %struct.targbh_cmd_desc* %6, %struct.targbh_cmd_desc** %2, align 8
  %7 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %2, align 8
  %8 = icmp eq %struct.targbh_cmd_desc* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.targbh_cmd_desc* null, %struct.targbh_cmd_desc** %1, align 8
  br label %32

10:                                               ; preds = %0
  %11 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %2, align 8
  %12 = call i32 @bzero(%struct.targbh_cmd_desc* %11, i32 16)
  %13 = load i32, i32* @MAX_BUF_SIZE, align 4
  %14 = load i32, i32* @M_SCSIBH, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call i32* @malloc(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %2, align 8
  %18 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %2, align 8
  %20 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %10
  %24 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %2, align 8
  %25 = load i32, i32* @M_SCSIBH, align 4
  %26 = call i32 @free(%struct.targbh_cmd_desc* %24, i32 %25)
  store %struct.targbh_cmd_desc* null, %struct.targbh_cmd_desc** %1, align 8
  br label %32

27:                                               ; preds = %10
  %28 = load i32, i32* @MAX_BUF_SIZE, align 4
  %29 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %2, align 8
  %30 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %2, align 8
  store %struct.targbh_cmd_desc* %31, %struct.targbh_cmd_desc** %1, align 8
  br label %32

32:                                               ; preds = %27, %23, %9
  %33 = load %struct.targbh_cmd_desc*, %struct.targbh_cmd_desc** %1, align 8
  ret %struct.targbh_cmd_desc* %33
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.targbh_cmd_desc*, i32) #1

declare dso_local i32 @free(%struct.targbh_cmd_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
