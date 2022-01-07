; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_CG_Free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_CG_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.qm_mc_command = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.qm_mc_result = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@QM_CGR_WE_MASK = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"QmFreeCgId failed\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"QmPortalUnregisterCg failed\00", align 1
@QM_MCC_VERB_MODIFYCGR = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"INITCGR failed: %s\00", align 1
@E_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @QM_CG_Free(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qm_mc_command*, align 8
  %6 = alloca %struct.qm_mc_result*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = load i32, i32* @E_INVALID_HANDLE, align 4
  %12 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_10__* %10, i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = call i32 @NCSW_PLOCK(%struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.qm_mc_command* @qm_mc_start(i32 %21)
  store %struct.qm_mc_command* %22, %struct.qm_mc_command** %5, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.qm_mc_command*, %struct.qm_mc_command** %5, align 8
  %27 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @QM_CGR_WE_MASK, align 4
  %30 = load %struct.qm_mc_command*, %struct.qm_mc_command** %5, align 8
  %31 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @QmFreeCgId(i32 %35, i32 %38)
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = call i32 @XX_Free(%struct.TYPE_10__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = call i32 @PUNLOCK(%struct.TYPE_9__* %45)
  %47 = load i32, i32* @MAJOR, align 4
  %48 = load i32, i32* @E_INVALID_STATE, align 4
  %49 = call i32 @RETURN_ERROR(i32 %47, i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %42, %1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @QmPortalUnregisterCg(i64 %53, i32 %56)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = call i32 @XX_Free(%struct.TYPE_10__* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = call i32 @PUNLOCK(%struct.TYPE_9__* %63)
  %65 = load i32, i32* @MAJOR, align 4
  %66 = load i32, i32* @E_INVALID_STATE, align 4
  %67 = call i32 @RETURN_ERROR(i32 %65, i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %60, %50
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @QM_MCC_VERB_MODIFYCGR, align 4
  %73 = call i32 @qm_mc_commit(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %81, %68
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.qm_mc_result* @qm_mc_result(i32 %77)
  store %struct.qm_mc_result* %78, %struct.qm_mc_result** %6, align 8
  %79 = icmp ne %struct.qm_mc_result* %78, null
  %80 = xor i1 %79, true
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %74

82:                                               ; preds = %74
  %83 = load %struct.qm_mc_result*, %struct.qm_mc_result** %6, align 8
  %84 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @QM_MCC_VERB_MODIFYCGR, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT_COND(i32 %90)
  %92 = load %struct.qm_mc_result*, %struct.qm_mc_result** %6, align 8
  %93 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %82
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = call i32 @PUNLOCK(%struct.TYPE_9__* %98)
  %100 = load i32, i32* @MINOR, align 4
  %101 = load i32, i32* @E_INVALID_STATE, align 4
  %102 = load %struct.qm_mc_result*, %struct.qm_mc_result** %6, align 8
  %103 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @mcr_result_str(i64 %104)
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @RETURN_ERROR(i32 %100, i32 %101, i8* %107)
  br label %109

109:                                              ; preds = %97, %82
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = call i32 @PUNLOCK(%struct.TYPE_9__* %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = call i32 @XX_Free(%struct.TYPE_10__* %112)
  %114 = load i64, i64* @E_OK, align 8
  ret i64 %114
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_9__*) #1

declare dso_local %struct.qm_mc_command* @qm_mc_start(i32) #1

declare dso_local i64 @QmFreeCgId(i32, i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_10__*) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @QmPortalUnregisterCg(i64, i32) #1

declare dso_local i32 @qm_mc_commit(i32, i32) #1

declare dso_local %struct.qm_mc_result* @qm_mc_result(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @mcr_result_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
