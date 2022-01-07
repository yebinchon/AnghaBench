; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_getdirblk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_getdirblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufarea = type { i32 }

@pdirbp = common dso_local global %struct.bufarea* null, align 8
@B_INUSE = common dso_local global i32 0, align 4
@BT_DIRDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufarea* (i32, i64)* @getdirblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufarea* @getdirblk(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load %struct.bufarea*, %struct.bufarea** @pdirbp, align 8
  %6 = icmp ne %struct.bufarea* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* @B_INUSE, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.bufarea*, %struct.bufarea** @pdirbp, align 8
  %11 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %7, %2
  %15 = load i32, i32* %3, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @BT_DIRDATA, align 4
  %18 = call %struct.bufarea* @getdatablk(i32 %15, i64 %16, i32 %17)
  store %struct.bufarea* %18, %struct.bufarea** @pdirbp, align 8
  %19 = load %struct.bufarea*, %struct.bufarea** @pdirbp, align 8
  ret %struct.bufarea* %19
}

declare dso_local %struct.bufarea* @getdatablk(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
