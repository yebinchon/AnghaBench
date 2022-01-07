; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_freeino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_freeino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { i32, i32, i32 }
%union.dinode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ADDR = common dso_local global i32 0, align 4
@pass4check = common dso_local global i32 0, align 4
@USTATE = common dso_local global i32 0, align 4
@n_files = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeino(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inodesc, align 4
  %4 = alloca %union.dinode*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 @memset(%struct.inodesc* %3, i32 0, i32 12)
  %6 = load i32, i32* @ADDR, align 4
  %7 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %3, i32 0, i32 2
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @pass4check, align 4
  %9 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %3, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call %union.dinode* @ginode(i32 %12)
  store %union.dinode* %13, %union.dinode** %4, align 8
  %14 = load %union.dinode*, %union.dinode** %4, align 8
  %15 = call i32 @ckinode(%union.dinode* %14, %struct.inodesc* %3)
  %16 = load %union.dinode*, %union.dinode** %4, align 8
  %17 = call i32 @clearinode(%union.dinode* %16)
  %18 = load %union.dinode*, %union.dinode** %4, align 8
  %19 = call i32 @inodirty(%union.dinode* %18)
  %20 = load i32, i32* @USTATE, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call %struct.TYPE_2__* @inoinfo(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @n_files, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* @n_files, align 4
  ret void
}

declare dso_local i32 @memset(%struct.inodesc*, i32, i32) #1

declare dso_local %union.dinode* @ginode(i32) #1

declare dso_local i32 @ckinode(%union.dinode*, %struct.inodesc*) #1

declare dso_local i32 @clearinode(%union.dinode*) #1

declare dso_local i32 @inodirty(%union.dinode*) #1

declare dso_local %struct.TYPE_2__* @inoinfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
