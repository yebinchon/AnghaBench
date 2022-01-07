; ModuleID = '/home/carl/AnghaBench/freebsd/lib/geom/journal/extr_geom_journal_ufs.c_read_superblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/geom/journal/extr_geom_journal_ufs.c_read_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { %struct.fs }
%struct.fs = type { i32 }

@read_superblock.disk = internal global %struct.uufsd zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs* (i8*)* @read_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs* @read_superblock(i8* %0) #0 {
  %2 = alloca %struct.fs*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fs*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @ufs_disk_fillout(%struct.uufsd* @read_superblock.disk, i8* %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.fs* null, %struct.fs** %2, align 8
  br label %12

9:                                                ; preds = %1
  store %struct.fs* getelementptr inbounds (%struct.uufsd, %struct.uufsd* @read_superblock.disk, i32 0, i32 0), %struct.fs** %4, align 8
  %10 = call i32 @ufs_disk_close(%struct.uufsd* @read_superblock.disk)
  %11 = load %struct.fs*, %struct.fs** %4, align 8
  store %struct.fs* %11, %struct.fs** %2, align 8
  br label %12

12:                                               ; preds = %9, %8
  %13 = load %struct.fs*, %struct.fs** %2, align 8
  ret %struct.fs* %13
}

declare dso_local i32 @ufs_disk_fillout(%struct.uufsd*, i8*) #1

declare dso_local i32 @ufs_disk_close(%struct.uufsd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
