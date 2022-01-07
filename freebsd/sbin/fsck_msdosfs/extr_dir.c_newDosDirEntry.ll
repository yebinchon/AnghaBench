; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_newDosDirEntry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_dir.c_newDosDirEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dosDirEntry = type { %struct.dosDirEntry* }

@freede = common dso_local global %struct.dosDirEntry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dosDirEntry* ()* @newDosDirEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dosDirEntry* @newDosDirEntry() #0 {
  %1 = alloca %struct.dosDirEntry*, align 8
  %2 = alloca %struct.dosDirEntry*, align 8
  %3 = load %struct.dosDirEntry*, %struct.dosDirEntry** @freede, align 8
  store %struct.dosDirEntry* %3, %struct.dosDirEntry** %2, align 8
  %4 = icmp ne %struct.dosDirEntry* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = call %struct.dosDirEntry* @malloc(i32 8)
  store %struct.dosDirEntry* %6, %struct.dosDirEntry** %2, align 8
  %7 = icmp ne %struct.dosDirEntry* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store %struct.dosDirEntry* null, %struct.dosDirEntry** %1, align 8
  br label %16

9:                                                ; preds = %5
  br label %14

10:                                               ; preds = %0
  %11 = load %struct.dosDirEntry*, %struct.dosDirEntry** %2, align 8
  %12 = getelementptr inbounds %struct.dosDirEntry, %struct.dosDirEntry* %11, i32 0, i32 0
  %13 = load %struct.dosDirEntry*, %struct.dosDirEntry** %12, align 8
  store %struct.dosDirEntry* %13, %struct.dosDirEntry** @freede, align 8
  br label %14

14:                                               ; preds = %10, %9
  %15 = load %struct.dosDirEntry*, %struct.dosDirEntry** %2, align 8
  store %struct.dosDirEntry* %15, %struct.dosDirEntry** %1, align 8
  br label %16

16:                                               ; preds = %14, %8
  %17 = load %struct.dosDirEntry*, %struct.dosDirEntry** %1, align 8
  ret %struct.dosDirEntry* %17
}

declare dso_local %struct.dosDirEntry* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
