; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_prevent_allow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_prevent_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ctl_lun = type { i32, %struct.TYPE_4__*, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 (%union.ctl_io*)* }
%union.ctl_io = type { i32 }
%struct.scsi_prevent = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ctl_prevent_allow\0A\00", align 1
@CTL_LUN_REMOVABLE = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@PR_PREVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_prevent_allow(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_prevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %8)
  store %struct.ctl_lun* %9, %struct.ctl_lun** %4, align 8
  %10 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %12 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.scsi_prevent*
  store %struct.scsi_prevent* %14, %struct.scsi_prevent** %5, align 8
  %15 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %16 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CTL_LUN_REMOVABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %23 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21, %1
  %27 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %28 = call i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio* %27)
  %29 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %30 = bitcast %struct.ctl_scsiio* %29 to %union.ctl_io*
  %31 = call i32 @ctl_done(%union.ctl_io* %30)
  %32 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %32, i32* %2, align 4
  br label %102

33:                                               ; preds = %21
  %34 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @ctl_get_initindex(i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %39 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %38, i32 0, i32 2
  %40 = call i32 @mtx_lock(i32* %39)
  %41 = load %struct.scsi_prevent*, %struct.scsi_prevent** %5, align 8
  %42 = getelementptr inbounds %struct.scsi_prevent, %struct.scsi_prevent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PR_PREVENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %33
  %48 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %49 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @ctl_is_set(i32* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %56 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ctl_set_mask(i32* %57, i32 %58)
  %60 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %61 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %89

64:                                               ; preds = %47, %33
  %65 = load %struct.scsi_prevent*, %struct.scsi_prevent** %5, align 8
  %66 = getelementptr inbounds %struct.scsi_prevent, %struct.scsi_prevent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PR_PREVENT, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %64
  %72 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %73 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @ctl_is_set(i32* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %80 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ctl_clear_mask(i32* %81, i32 %82)
  %84 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %85 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %78, %71, %64
  br label %89

89:                                               ; preds = %88, %54
  %90 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %91 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %90, i32 0, i32 2
  %92 = call i32 @mtx_unlock(i32* %91)
  %93 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %94 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32 (%union.ctl_io*)*, i32 (%union.ctl_io*)** %96, align 8
  %98 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %99 = bitcast %struct.ctl_scsiio* %98 to %union.ctl_io*
  %100 = call i32 %97(%union.ctl_io* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %89, %26
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_get_initindex(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @ctl_is_set(i32*, i32) #1

declare dso_local i32 @ctl_set_mask(i32*, i32) #1

declare dso_local i32 @ctl_clear_mask(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
