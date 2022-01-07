; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_type.c_ufs_disk_fillout.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_type.c_ufs_disk_fillout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"could not read superblock to fill out disk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_disk_fillout(%struct.uufsd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uufsd*, align 8
  %5 = alloca i8*, align 8
  store %struct.uufsd* %0, %struct.uufsd** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @ufs_disk_fillout_blank(%struct.uufsd* %6, i8* %7)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %13 = call i32 @sbread(%struct.uufsd* %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %17 = call i32 @ERROR(%struct.uufsd* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.uufsd*, %struct.uufsd** %4, align 8
  %19 = call i32 @ufs_disk_close(%struct.uufsd* %18)
  store i32 -1, i32* %3, align 4
  br label %21

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %15, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @ufs_disk_fillout_blank(%struct.uufsd*, i8*) #1

declare dso_local i32 @sbread(%struct.uufsd*) #1

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #1

declare dso_local i32 @ufs_disk_close(%struct.uufsd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
