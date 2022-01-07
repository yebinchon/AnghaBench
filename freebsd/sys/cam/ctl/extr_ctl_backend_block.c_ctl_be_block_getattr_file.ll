; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_getattr_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_getattr_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ctl_be_block_lun = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vattr = type { i32 }
%struct.statfs = type { i32, i32 }

@UINT64_MAX = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"blocksused\00", align 1
@curthread = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"blocksavail\00", align 1
@VI_DOOMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_be_block_lun*, i8*)* @ctl_be_block_getattr_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_be_block_getattr_file(%struct.ctl_be_block_lun* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctl_be_block_lun*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vattr, align 4
  %7 = alloca %struct.statfs, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @UINT64_MAX, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %12 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %19 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load i32, i32* @LK_SHARED, align 4
  %22 = load i32, i32* @LK_RETRY, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @vn_lock(%struct.TYPE_7__* %20, i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %17
  %29 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %30 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @VOP_GETATTR(%struct.TYPE_7__* %31, %struct.vattr* %6, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %42 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %40, %44
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %38, %28
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %47
  %52 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %53 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VI_DOOMED, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %51
  %61 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %62 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @VFS_STATFS(i32 %65, %struct.statfs* %7)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %71, %73
  %75 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %76 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sdiv i32 %74, %78
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %69, %60
  br label %81

81:                                               ; preds = %80, %51, %47
  %82 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %4, align 8
  %83 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = call i32 @VOP_UNLOCK(%struct.TYPE_7__* %84, i32 0)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %15
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @vn_lock(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @VOP_GETATTR(%struct.TYPE_7__*, %struct.vattr*, i32) #1

declare dso_local i32 @VFS_STATFS(i32, %struct.statfs*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
