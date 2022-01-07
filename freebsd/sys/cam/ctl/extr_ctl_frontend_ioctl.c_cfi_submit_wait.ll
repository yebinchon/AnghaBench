; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_ioctl.c_cfi_submit_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_ioctl.c_cfi_submit_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%union.ctl_io.0*)* }
%union.ctl_io.0 = type opaque
%struct.ctl_fe_ioctl_params = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ctl_fe_ioctl_params* }

@.str = private unnamed_addr constant [10 x i8] c"ctliocmtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ctlioccv\00", align 1
@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"cfi_submit_wait\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"got CTL_IOCTL_DATAMOVE\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"got CTL_IOCTL_DONE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @cfi_submit_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_submit_wait(%union.ctl_io* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ctl_io*, align 8
  %4 = alloca %struct.ctl_fe_ioctl_params, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %3, align 8
  %8 = call i32 @bzero(%struct.ctl_fe_ioctl_params* %4, i32 12)
  %9 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 2
  %10 = load i32, i32* @MTX_DEF, align 4
  %11 = call i32 @mtx_init(i32* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %10)
  %12 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 1
  %13 = call i32 @cv_init(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 0
  store i32 128, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %18 = bitcast %union.ctl_io* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.ctl_fe_ioctl_params* %4, %struct.ctl_fe_ioctl_params** %23, align 8
  %24 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %26 = call i32 @ctl_queue(%union.ctl_io* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %83

31:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %74, %31
  %33 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 2
  %34 = call i32 @mtx_lock(i32* %33)
  %35 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 1
  %41 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 2
  %42 = call i32 @cv_wait(i32* %40, i32* %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  %46 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %70 [
    i32 128, label %48
    i32 130, label %51
    i32 129, label %66
  ]

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 2
  %50 = call i32 @mtx_unlock(i32* %49)
  br label %73

51:                                               ; preds = %43
  %52 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 128, i32* %5, align 4
  %53 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 0
  store i32 128, i32* %53, align 4
  %54 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 2
  %55 = call i32 @mtx_unlock(i32* %54)
  %56 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %57 = bitcast %union.ctl_io* %56 to %struct.TYPE_6__*
  %58 = call i32 @ctl_ioctl_do_datamove(%struct.TYPE_6__* %57)
  %59 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %60 = bitcast %union.ctl_io* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%union.ctl_io.0*)*, i32 (%union.ctl_io.0*)** %61, align 8
  %63 = load %union.ctl_io*, %union.ctl_io** %3, align 8
  %64 = bitcast %union.ctl_io* %63 to %union.ctl_io.0*
  %65 = call i32 %62(%union.ctl_io.0* %64)
  br label %73

66:                                               ; preds = %43
  %67 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 2
  %68 = call i32 @mtx_unlock(i32* %67)
  %69 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %73

70:                                               ; preds = %43
  %71 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 2
  %72 = call i32 @mtx_unlock(i32* %71)
  br label %73

73:                                               ; preds = %70, %66, %51, %48
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %32, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 2
  %79 = call i32 @mtx_destroy(i32* %78)
  %80 = getelementptr inbounds %struct.ctl_fe_ioctl_params, %struct.ctl_fe_ioctl_params* %4, i32 0, i32 1
  %81 = call i32 @cv_destroy(i32* %80)
  %82 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %29
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @bzero(%struct.ctl_fe_ioctl_params*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @ctl_queue(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_ioctl_do_datamove(%struct.TYPE_6__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
