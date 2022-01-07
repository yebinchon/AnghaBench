; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_user_ldt_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_user_ldt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_ldt = type { i32, i64 }
%struct.proc = type { i32, %struct.mdproc }
%struct.mdproc = type { %struct.proc_ldt*, i32 }
%struct.soft_segment_descriptor = type { i32, i32, i64, i64, i64, i32, i32, i64 }

@dt_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@M_SUBPROC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@max_ldt_segment = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SDT_SYSLDT = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@set_user_ldt_rv = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_ldt* @user_ldt_alloc(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca %struct.proc_ldt*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc_ldt*, align 8
  %7 = alloca %struct.proc_ldt*, align 8
  %8 = alloca %struct.mdproc*, align 8
  %9 = alloca %struct.soft_segment_descriptor, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* @dt_lock, i32 %12)
  %14 = load %struct.proc*, %struct.proc** %4, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 1
  store %struct.mdproc* %15, %struct.mdproc** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load %struct.mdproc*, %struct.mdproc** %8, align 8
  %20 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %19, i32 0, i32 0
  %21 = load %struct.proc_ldt*, %struct.proc_ldt** %20, align 8
  %22 = icmp ne %struct.proc_ldt* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.mdproc*, %struct.mdproc** %8, align 8
  %25 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %24, i32 0, i32 0
  %26 = load %struct.proc_ldt*, %struct.proc_ldt** %25, align 8
  store %struct.proc_ldt* %26, %struct.proc_ldt** %3, align 8
  br label %125

27:                                               ; preds = %18, %2
  %28 = call i32 @mtx_unlock(i32* @dt_lock)
  %29 = load i32, i32* @M_SUBPROC, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = call %struct.proc_ldt* @malloc(i32 16, i32 %29, i32 %30)
  store %struct.proc_ldt* %31, %struct.proc_ldt** %7, align 8
  %32 = load i32, i32* @max_ldt_segment, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @kmem_malloc(i32 %36, i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %43 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i32 @pmap_pti_add_kva(i64 %44, i64 %48, i32 0)
  %50 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %51 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %9, i32 0, i32 7
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %54, 1
  %56 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %9, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @SDT_SYSLDT, align 4
  %58 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %9, i32 0, i32 6
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @SEL_KPL, align 4
  %60 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %9, i32 0, i32 5
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %9, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %9, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %9, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.soft_segment_descriptor, %struct.soft_segment_descriptor* %9, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = call i32 @mtx_lock(i32* @dt_lock)
  %66 = load %struct.mdproc*, %struct.mdproc** %8, align 8
  %67 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %66, i32 0, i32 0
  %68 = load %struct.proc_ldt*, %struct.proc_ldt** %67, align 8
  store %struct.proc_ldt* %68, %struct.proc_ldt** %6, align 8
  %69 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %70 = icmp ne %struct.proc_ldt* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %27
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 @pmap_pti_remove_kva(i64 %75, i64 %79)
  %81 = load i64, i64* %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @kmem_free(i64 %81, i32 %82)
  %84 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %85 = load i32, i32* @M_SUBPROC, align 4
  %86 = call i32 @free(%struct.proc_ldt* %84, i32 %85)
  %87 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  store %struct.proc_ldt* %87, %struct.proc_ldt** %3, align 8
  br label %125

88:                                               ; preds = %71, %27
  %89 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %90 = icmp ne %struct.proc_ldt* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %93 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %96 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @max_ldt_segment, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = call i32 @bcopy(i64 %94, i64 %97, i32 %101)
  %103 = load %struct.proc_ldt*, %struct.proc_ldt** %6, align 8
  %104 = call i32 @user_ldt_derefl(%struct.proc_ldt* %103)
  br label %105

105:                                              ; preds = %91, %88
  %106 = call i32 (...) @critical_enter()
  %107 = load %struct.proc*, %struct.proc** %4, align 8
  %108 = getelementptr inbounds %struct.proc, %struct.proc* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %108, i32 0, i32 1
  %110 = call i32 @ssdtosyssd(%struct.soft_segment_descriptor* %9, i32* %109)
  %111 = call i32 (...) @atomic_thread_fence_rel()
  %112 = load %struct.proc_ldt*, %struct.proc_ldt** %7, align 8
  %113 = load %struct.mdproc*, %struct.mdproc** %8, align 8
  %114 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %113, i32 0, i32 0
  store %struct.proc_ldt* %112, %struct.proc_ldt** %114, align 8
  %115 = call i32 (...) @critical_exit()
  %116 = load i64, i64* @set_user_ldt_rv, align 8
  %117 = inttoptr i64 %116 to void (i8*)*
  %118 = load %struct.proc*, %struct.proc** %4, align 8
  %119 = getelementptr inbounds %struct.proc, %struct.proc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @smp_rendezvous(i32* null, void (i8*)* %117, i32* null, i32 %120)
  %122 = load %struct.mdproc*, %struct.mdproc** %8, align 8
  %123 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %122, i32 0, i32 0
  %124 = load %struct.proc_ldt*, %struct.proc_ldt** %123, align 8
  store %struct.proc_ldt* %124, %struct.proc_ldt** %3, align 8
  br label %125

125:                                              ; preds = %105, %74, %23
  %126 = load %struct.proc_ldt*, %struct.proc_ldt** %3, align 8
  ret %struct.proc_ldt* %126
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.proc_ldt* @malloc(i32, i32, i32) #1

declare dso_local i64 @kmem_malloc(i32, i32) #1

declare dso_local i32 @pmap_pti_add_kva(i64, i64, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @pmap_pti_remove_kva(i64, i64) #1

declare dso_local i32 @kmem_free(i64, i32) #1

declare dso_local i32 @free(%struct.proc_ldt*, i32) #1

declare dso_local i32 @bcopy(i64, i64, i32) #1

declare dso_local i32 @user_ldt_derefl(%struct.proc_ldt*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @ssdtosyssd(%struct.soft_segment_descriptor*, i32*) #1

declare dso_local i32 @atomic_thread_fence_rel(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @smp_rendezvous(i32*, void (i8*)*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
