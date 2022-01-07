; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_do_lun_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_do_lun_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32, i64, i64, i32, i32**, i32 }
%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CTL_FLAG_ABORT = common dso_local global i32 0, align 4
@CTL_FLAG_ABORT_STATUS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ooa_links = common dso_local global i32 0, align 4
@ctl_max_ports = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@CTL_LUN_RESERVED = common dso_local global i32 0, align 4
@CTL_MAX_INITIATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_lun*, i32, i32)* @ctl_do_lun_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_do_lun_reset(%struct.ctl_lun* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ctl_io*, align 8
  %8 = alloca i32, align 4
  store %struct.ctl_lun* %0, %struct.ctl_lun** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %10 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %12, i32 0, i32 5
  %14 = call i64 @TAILQ_FIRST(i32* %13)
  %15 = inttoptr i64 %14 to %union.ctl_io*
  store %union.ctl_io* %15, %union.ctl_io** %7, align 8
  br label %16

16:                                               ; preds = %32, %3
  %17 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %18 = icmp ne %union.ctl_io* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i32, i32* @CTL_FLAG_ABORT, align 4
  %21 = load i32, i32* @CTL_FLAG_ABORT_STATUS, align 4
  %22 = or i32 %20, %21
  %23 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %24 = bitcast %union.ctl_io* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %29 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i32 @ctl_try_unblock_io(%struct.ctl_lun* %28, %union.ctl_io* %29, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load %union.ctl_io*, %union.ctl_io** %7, align 8
  %34 = bitcast %union.ctl_io* %33 to %struct.TYPE_2__*
  %35 = load i32, i32* @ooa_links, align 4
  %36 = call i64 @TAILQ_NEXT(%struct.TYPE_2__* %34, i32 %35)
  %37 = inttoptr i64 %36 to %union.ctl_io*
  store %union.ctl_io* %37, %union.ctl_io** %7, align 8
  br label %16

38:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ctl_max_ports, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %45 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %44, i32 0, i32 4
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @M_CTL, align 4
  %52 = call i32 @free(i32* %50, i32 %51)
  %53 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %54 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %53, i32 0, i32 4
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load i32, i32* @CTL_LUN_RESERVED, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %66 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %70 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %84, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @CTL_MAX_INITIATORS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %80 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ctl_clear_mask(i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %74

87:                                               ; preds = %74
  %88 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %89 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %62
  %91 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %92 = call i32 @ctl_tpc_lun_clear(%struct.ctl_lun* %91, i32 -1)
  %93 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @ctl_est_ua_all(%struct.ctl_lun* %93, i32 -1, i32 %94)
  %96 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %97 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %96, i32 0, i32 0
  %98 = call i32 @mtx_unlock(i32* %97)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ctl_try_unblock_io(%struct.ctl_lun*, %union.ctl_io*, i32) #1

declare dso_local i64 @TAILQ_NEXT(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @ctl_clear_mask(i64, i32) #1

declare dso_local i32 @ctl_tpc_lun_clear(%struct.ctl_lun*, i32) #1

declare dso_local i32 @ctl_est_ua_all(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
