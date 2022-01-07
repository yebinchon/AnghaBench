; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_inode.c_putinode.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_inode.c_putinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i32, %struct.fs, i32*, i32, %struct.TYPE_2__ }
%struct.fs = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"No inode block allocated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putinode(%struct.uufsd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uufsd*, align 8
  %4 = alloca %struct.fs*, align 8
  store %struct.uufsd* %0, %struct.uufsd** %3, align 8
  %5 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %6 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %5, i32 0, i32 1
  store %struct.fs* %6, %struct.fs** %4, align 8
  %7 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %8 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %13 = call i32 @ERROR(%struct.uufsd* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %16 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.fs*, %struct.fs** %4, align 8
  %21 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %22 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ffs_update_dinode_ckhash(%struct.fs* %20, i32 %24)
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %28 = load %struct.fs*, %struct.fs** %4, align 8
  %29 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %30 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %29, i32 0, i32 1
  %31 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %32 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ino_to_fsba(%struct.fs* %30, i32 %33)
  %35 = call i32 @fsbtodb(%struct.fs* %28, i32 %34)
  %36 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %37 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.uufsd*, %struct.uufsd** %3, align 8
  %40 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.fs, %struct.fs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @bwrite(%struct.uufsd* %27, i32 %35, i32* %38, i32 %42)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %47

46:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %45, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #1

declare dso_local i32 @ffs_update_dinode_ckhash(%struct.fs*, i32) #1

declare dso_local i64 @bwrite(%struct.uufsd*, i32, i32*, i32) #1

declare dso_local i32 @fsbtodb(%struct.fs*, i32) #1

declare dso_local i32 @ino_to_fsba(%struct.fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
