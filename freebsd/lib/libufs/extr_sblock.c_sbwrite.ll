; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_sblock.c_sbwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_sblock.c_sbwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i32, %struct.fs }
%struct.fs = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to open disk for writing\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to write superblock\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unknown superblock write error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbwrite(%struct.uufsd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uufsd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fs*, align 8
  %7 = alloca i32, align 4
  store %struct.uufsd* %0, %struct.uufsd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %9 = call i32 @ERROR(%struct.uufsd* %8, i8* null)
  %10 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %11 = call i32 @ufs_disk_write(%struct.uufsd* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %16 = call i32 @ERROR(%struct.uufsd* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %19 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %18, i32 0, i32 1
  store %struct.fs* %19, %struct.fs** %6, align 8
  %20 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %21 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fs*, %struct.fs** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load %struct.fs*, %struct.fs** %6, align 8
  %28 = getelementptr inbounds %struct.fs, %struct.fs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = call i32 @sbput(i32 %22, %struct.fs* %23, i32 %32)
  store i32 %33, i32* @errno, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* @errno, align 4
  switch i32 %36, label %40 [
    i32 128, label %37
  ]

37:                                               ; preds = %35
  %38 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %39 = call i32 @ERROR(%struct.uufsd* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %43

40:                                               ; preds = %35
  %41 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %42 = call i32 @ERROR(%struct.uufsd* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 128, i32* @errno, align 4
  br label %43

43:                                               ; preds = %40, %37
  store i32 -1, i32* %3, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #1

declare dso_local i32 @ufs_disk_write(%struct.uufsd*) #1

declare dso_local i32 @sbput(i32, %struct.fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
