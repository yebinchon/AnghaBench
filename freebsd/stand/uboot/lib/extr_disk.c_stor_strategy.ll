; ModuleID = '/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_disk.c_stor_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/uboot/lib/extr_disk.c_stor_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i64 }
%struct.TYPE_2__ = type { i64 }

@F_MASK = common dso_local global i32 0, align 4
@F_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"write attempt, operation not supported!\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"size=%zu not multiple of device block size=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i8*, i64*)* @stor_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stor_strategy(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.disk_devdesc*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__, align 8
  %18 = alloca %struct.TYPE_2__, align 8
  %19 = alloca %struct.TYPE_2__, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %21, %struct.disk_devdesc** %14, align 8
  %22 = load i32, i32* @F_MASK, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @F_READ, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = call i32 (i8*, ...) @stor_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EROFS, align 4
  store i32 %30, i32* %7, align 4
  br label %81

31:                                               ; preds = %6
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %34 = call i64 @SI(%struct.disk_devdesc* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = urem i64 %32, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %43 = call i64 @SI(%struct.disk_devdesc* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, ...) @stor_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %46)
  %48 = load i32, i32* @EIO, align 4
  store i32 %48, i32* %7, align 4
  br label %81

49:                                               ; preds = %31
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %52 = call i64 @SI(%struct.disk_devdesc* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = udiv i64 %50, %55
  store i64 %56, i64* %15, align 8
  %57 = load i64*, i64** %13, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64*, i64** %13, align 8
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %59, %49
  %62 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %65 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = load i64, i64* %15, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @stor_readdev(%struct.disk_devdesc* %62, i64 %67, i64 %68, i8* %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %61
  %74 = load i64*, i64** %13, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64, i64* %11, align 8
  %78 = load i64*, i64** %13, align 8
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %73, %61
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %40, %28
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @stor_printf(i8*, ...) #1

declare dso_local i64 @SI(%struct.disk_devdesc*) #1

declare dso_local i32 @stor_readdev(%struct.disk_devdesc*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
