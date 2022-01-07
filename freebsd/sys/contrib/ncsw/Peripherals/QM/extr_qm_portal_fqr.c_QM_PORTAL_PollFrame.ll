; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_PORTAL_PollFrame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_PORTAL_PollFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.qm_dqrr_entry = type { i32, i32, i32 }
%struct.qman_fq = type { i32, i32*, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_NULL_POINTER = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_RSTASH = common dso_local global i32 0, align 4
@E_EMPTY = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_DCA = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QM_PORTAL_PollFrame(i64 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.qm_dqrr_entry*, align 8
  %8 = alloca %struct.qman_fq*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = load i32, i32* @E_INVALID_HANDLE, align 4
  %14 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__* %12, i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = load i32, i32* @E_NULL_POINTER, align 4
  %17 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__* %15, i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = call i32 @NCSW_PLOCK(%struct.TYPE_7__* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @QMAN_PORTAL_FLAG_RSTASH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qmPortalDqrrPvbPrefetch(i32 %33)
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @qmPortalDqrrPvbUpdate(i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.qm_dqrr_entry* @qm_dqrr_current(i32 %42)
  store %struct.qm_dqrr_entry* %43, %struct.qm_dqrr_entry** %7, align 8
  %44 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %45 = icmp ne %struct.qm_dqrr_entry* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = call i32 @PUNLOCK(%struct.TYPE_7__* %47)
  %49 = load i32, i32* @E_EMPTY, align 4
  %50 = call i32 @ERROR_CODE(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %135

51:                                               ; preds = %35
  %52 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %53 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.qman_fq* @ptr_from_aligned_int(i32 %54)
  store %struct.qman_fq* %55, %struct.qman_fq** %8, align 8
  %56 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %57 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ASSERT_COND(i32 %58)
  %60 = load %struct.qman_fq*, %struct.qman_fq** %8, align 8
  %61 = icmp ne %struct.qman_fq* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %51
  %63 = load %struct.qman_fq*, %struct.qman_fq** %8, align 8
  %64 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.qman_fq*, %struct.qman_fq** %8, align 8
  %69 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  store i32* %70, i32** %72, align 8
  %73 = load %struct.qman_fq*, %struct.qman_fq** %8, align 8
  %74 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = bitcast i32* %79 to i8*
  %81 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %82 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %81, i32 0, i32 0
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 @memcpy(i8* %80, i8* %83, i32 4)
  br label %105

85:                                               ; preds = %51
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  store i32* null, i32** %92, align 8
  %93 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %94 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = bitcast i32* %99 to i8*
  %101 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %102 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %101, i32 0, i32 0
  %103 = bitcast i32* %102 to i8*
  %104 = call i32 @memcpy(i8* %100, i8* %103, i32 4)
  br label %105

105:                                              ; preds = %85, %62
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @QMAN_PORTAL_FLAG_DCA, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %105
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %117 = call i32 @qmPortalDqrrDcaConsume1ptr(i32 %115, %struct.qm_dqrr_entry* %116, i32 0)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @qm_dqrr_next(i32 %120)
  br label %131

122:                                              ; preds = %105
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @qm_dqrr_next(i32 %125)
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @qmPortalDqrrCciConsume(i32 %129, i32 1)
  br label %131

131:                                              ; preds = %122, %112
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = call i32 @PUNLOCK(%struct.TYPE_7__* %132)
  %134 = load i32, i32* @E_OK, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %46
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @qmPortalDqrrPvbPrefetch(i32) #1

declare dso_local i32 @qmPortalDqrrPvbUpdate(i32) #1

declare dso_local %struct.qm_dqrr_entry* @qm_dqrr_current(i32) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @ERROR_CODE(i32) #1

declare dso_local %struct.qman_fq* @ptr_from_aligned_int(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @qmPortalDqrrDcaConsume1ptr(i32, %struct.qm_dqrr_entry*, i32) #1

declare dso_local i32 @qm_dqrr_next(i32) #1

declare dso_local i32 @qmPortalDqrrCciConsume(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
