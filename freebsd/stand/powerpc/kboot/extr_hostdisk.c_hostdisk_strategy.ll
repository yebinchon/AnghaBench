; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_hostdisk.c_hostdisk_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_hostdisk.c_hostdisk_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devdesc = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Seek error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64, i8*, i64*)* @hostdisk_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostdisk_strategy(i8* %0, i32 %1, i32 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.devdesc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.devdesc*
  store %struct.devdesc* %21, %struct.devdesc** %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 %22, 512
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %15, align 4
  %26 = ashr i32 %25, 32
  store i32 %26, i32* %19, align 4
  %27 = load %struct.devdesc*, %struct.devdesc** %14, align 8
  %28 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* %18, align 4
  %32 = call i64 @host_llseek(i32 %29, i32 %30, i32 %31, i32* %17, i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  store i32 %36, i32* %7, align 4
  br label %52

37:                                               ; preds = %6
  %38 = load %struct.devdesc*, %struct.devdesc** %14, align 8
  %39 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @host_read(i32 %40, i8* %41, i64 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @EIO, align 4
  store i32 %47, i32* %7, align 4
  br label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %13, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %46, %34
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i64 @host_llseek(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @host_read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
