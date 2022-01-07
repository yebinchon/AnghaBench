; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32, %struct.TYPE_4__, i32*, %struct.ctl_be_lun }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ctl_be_lun = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_READONLY = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unexpected backend type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_be_block_lun*)* @ctl_be_block_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_be_block_close(%struct.ctl_be_block_lun* %0) #0 {
  %2 = alloca %struct.ctl_be_block_lun*, align 8
  %3 = alloca %struct.ctl_be_lun*, align 8
  %4 = alloca i32, align 4
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %2, align 8
  %5 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %2, align 8
  %6 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %5, i32 0, i32 3
  store %struct.ctl_be_lun* %6, %struct.ctl_be_lun** %3, align 8
  %7 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %2, align 8
  %8 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %65

11:                                               ; preds = %1
  %12 = load i32, i32* @FREAD, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CTL_LUN_FLAG_READONLY, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* @FWRITE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %11
  %24 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %2, align 8
  %25 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NOCRED, align 4
  %29 = load i32, i32* @curthread, align 4
  %30 = call i32 @vn_close(i32* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %2, align 8
  %32 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %2, align 8
  %34 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %57 [
    i32 130, label %36
    i32 129, label %37
    i32 128, label %56
  ]

36:                                               ; preds = %23
  br label %62

37:                                               ; preds = %23
  %38 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %2, align 8
  %39 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %2, align 8
  %46 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @crfree(i32* %49)
  %51 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %2, align 8
  %52 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %44, %37
  br label %62

56:                                               ; preds = %23
  br label %62

57:                                               ; preds = %23
  %58 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %2, align 8
  %59 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %56, %55, %36
  %63 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %2, align 8
  %64 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %63, i32 0, i32 0
  store i32 128, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %1
  ret i32 0
}

declare dso_local i32 @vn_close(i32*, i32, i32, i32) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
