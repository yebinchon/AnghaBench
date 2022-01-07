; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_stat.c_vmm_stat_desc_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_stat.c_vmm_stat_desc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmm_stat_type = type { i32, i32, i8* }

@vst_num_types = common dso_local global i32 0, align 4
@vsttab = common dso_local global %struct.vmm_stat_type** null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmm_stat_desc_copy(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmm_stat_type*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %61, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @vst_num_types, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = load %struct.vmm_stat_type**, %struct.vmm_stat_type*** @vsttab, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vmm_stat_type*, %struct.vmm_stat_type** %15, i64 %17
  %19 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %18, align 8
  store %struct.vmm_stat_type* %19, %struct.vmm_stat_type** %9, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %9, align 8
  %22 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %9, align 8
  %28 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %9, align 8
  %31 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = icmp slt i32 %26, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %25
  %36 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %9, align 8
  %37 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %9, align 8
  %44 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %9, align 8
  %48 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  %51 = call i32 @snprintf(i8* %41, i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %50)
  br label %59

52:                                               ; preds = %35
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.vmm_stat_type*, %struct.vmm_stat_type** %9, align 8
  %55 = getelementptr inbounds %struct.vmm_stat_type, %struct.vmm_stat_type* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @strlcpy(i8* %53, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %40
  store i32 0, i32* %4, align 4
  br label %66

60:                                               ; preds = %25, %14
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %10

64:                                               ; preds = %10
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
