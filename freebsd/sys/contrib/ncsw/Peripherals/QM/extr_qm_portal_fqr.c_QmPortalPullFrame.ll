; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QmPortalPullFrame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QmPortalPullFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.qm_dqrr_entry = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.qman_fq = type { i32 }

@E_INVALID_STATE = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_RSTASH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@QMAN_PORTAL_FLAG_DCA = common dso_local global i32 0, align 4
@QM_DQRR_STAT_FD_VALID = common dso_local global i32 0, align 4
@E_EMPTY = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.TYPE_7__*)* @QmPortalPullFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QmPortalPullFrame(i64 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.qm_dqrr_entry*, align 8
  %10 = alloca %struct.qman_fq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = call i32 @ASSERT_COND(%struct.TYPE_7__* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = call i32 @ASSERT_COND(%struct.TYPE_7__* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @E_INVALID_STATE, align 4
  %24 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %22, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = call i32 @NCSW_PLOCK(%struct.TYPE_7__* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @qm_dqrr_pdqcr_set(i32 %29, i32 %30)
  %32 = call i32 (...) @mb()
  br label %33

33:                                               ; preds = %39, %3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @qm_dqrr_pdqcr_get(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %33

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @QMAN_PORTAL_FLAG_RSTASH, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %71, %40
  %50 = load i64, i64* @TRUE, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %131

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @qmPortalDqrrPvbPrefetch(i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @qmPortalDqrrPvbUpdate(i32 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.qm_dqrr_entry* @qm_dqrr_current(i32 %67)
  store %struct.qm_dqrr_entry* %68, %struct.qm_dqrr_entry** %9, align 8
  %69 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %70 = icmp ne %struct.qm_dqrr_entry* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %60
  br label %49

72:                                               ; preds = %60
  %73 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %74 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.qman_fq* @ptr_from_aligned_int(i32 %75)
  store %struct.qman_fq* %76, %struct.qman_fq** %10, align 8
  %77 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %78 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = call i32 @ASSERT_COND(%struct.TYPE_7__* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = bitcast %struct.TYPE_7__* %81 to i32*
  store i32* %82, i32** %12, align 8
  %83 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %84 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %83, i32 0, i32 1
  store i32* %84, i32** %13, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @QMAN_PORTAL_FLAG_DCA, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %72
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %116 = call i32 @qmPortalDqrrDcaConsume1ptr(i32 %114, %struct.qm_dqrr_entry* %115, i32 0)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @qm_dqrr_next(i32 %119)
  br label %130

121:                                              ; preds = %72
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @qm_dqrr_next(i32 %124)
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @qmPortalDqrrCciConsume(i32 %128, i32 1)
  br label %130

130:                                              ; preds = %121, %111
  br label %131

131:                                              ; preds = %130, %49
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %133 = call i32 @PUNLOCK(%struct.TYPE_7__* %132)
  %134 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %9, align 8
  %135 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @QM_DQRR_STAT_FD_VALID, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %131
  %141 = load i32, i32* @E_EMPTY, align 4
  %142 = call i32 @ERROR_CODE(i32 %141)
  store i32 %142, i32* %4, align 4
  br label %145

143:                                              ; preds = %131
  %144 = load i32, i32* @E_OK, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %140
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_7__*) #1

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32, i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @qm_dqrr_pdqcr_set(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @qm_dqrr_pdqcr_get(i32) #1

declare dso_local i32 @qmPortalDqrrPvbPrefetch(i32) #1

declare dso_local i32 @qmPortalDqrrPvbUpdate(i32) #1

declare dso_local %struct.qm_dqrr_entry* @qm_dqrr_current(i32) #1

declare dso_local %struct.qman_fq* @ptr_from_aligned_int(i32) #1

declare dso_local i32 @qmPortalDqrrDcaConsume1ptr(i32, %struct.qm_dqrr_entry*, i32) #1

declare dso_local i32 @qm_dqrr_next(i32) #1

declare dso_local i32 @qmPortalDqrrCciConsume(i32, i32) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @ERROR_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
