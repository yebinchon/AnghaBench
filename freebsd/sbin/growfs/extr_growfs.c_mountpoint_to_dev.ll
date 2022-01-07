; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/growfs/extr_growfs.c_mountpoint_to_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/growfs/extr_growfs.c_mountpoint_to_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i8*, i32 }
%struct.fstab = type { i8* }

@MNT_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mountpoint_to_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mountpoint_to_dev(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.statfs*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca %struct.fstab*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MNT_NOWAIT, align 4
  %10 = call i32 @getmntinfo(%struct.statfs** %4, i32 %9)
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %31, %1
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load %struct.statfs*, %struct.statfs** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.statfs, %struct.statfs* %16, i64 %18
  store %struct.statfs* %19, %struct.statfs** %5, align 8
  %20 = load %struct.statfs*, %struct.statfs** %5, align 8
  %21 = getelementptr inbounds %struct.statfs, %struct.statfs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @strcmp(i32 %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load %struct.statfs*, %struct.statfs** %5, align 8
  %28 = getelementptr inbounds %struct.statfs, %struct.statfs* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %2, align 8
  br label %44

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %11

34:                                               ; preds = %11
  %35 = load i8*, i8** %3, align 8
  %36 = call %struct.fstab* @getfsfile(i8* %35)
  store %struct.fstab* %36, %struct.fstab** %6, align 8
  %37 = load %struct.fstab*, %struct.fstab** %6, align 8
  %38 = icmp ne %struct.fstab* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.fstab*, %struct.fstab** %6, align 8
  %41 = getelementptr inbounds %struct.fstab, %struct.fstab* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %2, align 8
  br label %44

43:                                               ; preds = %34
  store i8* null, i8** %2, align 8
  br label %44

44:                                               ; preds = %43, %39, %26
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.fstab* @getfsfile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
