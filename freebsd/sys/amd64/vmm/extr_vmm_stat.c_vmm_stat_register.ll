; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_stat.c_vmm_stat_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_stat.c_vmm_stat_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmm_stat_type = type { i8*, i64, i64, i64 }

@VMM_STAT_SCOPE_INTEL = common dso_local global i64 0, align 8
@VMM_STAT_SCOPE_AMD = common dso_local global i64 0, align 8
@vst_num_elems = common dso_local global i64 0, align 8
@MAX_VMM_STAT_ELEMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Cannot accommodate vmm stat type \22%s\22!\0A\00", align 1
@vsttab = common dso_local global %struct.vmm_stat_type** null, align 8
@vst_num_types = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmm_stat_register(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmm_stat_type*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vmm_stat_type*
  store %struct.vmm_stat_type* %5, %struct.vmm_stat_type** %3, align 8
  %6 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %3, align 8
  %7 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %3, align 8
  %13 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VMM_STAT_SCOPE_INTEL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = call i32 (...) @vmm_is_intel()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %59

21:                                               ; preds = %17, %11
  %22 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %3, align 8
  %23 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VMM_STAT_SCOPE_AMD, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = call i32 (...) @vmm_is_amd()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %59

31:                                               ; preds = %27, %21
  %32 = load i64, i64* @vst_num_elems, align 8
  %33 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %3, align 8
  %34 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i64, i64* @MAX_VMM_STAT_ELEMS, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %3, align 8
  %41 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %59

44:                                               ; preds = %31
  %45 = load i64, i64* @vst_num_elems, align 8
  %46 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %3, align 8
  %47 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %3, align 8
  %49 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @vst_num_elems, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* @vst_num_elems, align 8
  %53 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %3, align 8
  %54 = load %struct.vmm_stat_type**, %struct.vmm_stat_type*** @vsttab, align 8
  %55 = load i32, i32* @vst_num_types, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @vst_num_types, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds %struct.vmm_stat_type*, %struct.vmm_stat_type** %54, i64 %57
  store %struct.vmm_stat_type* %53, %struct.vmm_stat_type** %58, align 8
  br label %59

59:                                               ; preds = %44, %39, %30, %20, %10
  ret void
}

declare dso_local i32 @vmm_is_intel(...) #1

declare dso_local i32 @vmm_is_amd(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
