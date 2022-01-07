; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_change_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_change_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dos_partition* }
%struct.dos_partition = type { i32 }

@mboot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NDOSPART = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Partition %d is marked active\0A\00", align 1
@a_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Do you want to change the active partition?\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"active partition\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Active partition number must be in range 1-4.  Try again.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Are you happy with this choice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @change_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_active(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dos_partition*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load %struct.dos_partition*, %struct.dos_partition** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %8, i64 0
  store %struct.dos_partition* %9, %struct.dos_partition** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %35, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NDOSPART, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %15, i64 %17
  %19 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ACTIVE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %35

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load i64, i64* @a_flag, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %50, %44
  %52 = call i32 @ok(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %104

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %67, %55
  br label %57

57:                                               ; preds = %71, %56
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @Decimal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60, i32 0)
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 4
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %57
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %56

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69
  %72 = call i32 @ok(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %57, label %75

75:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %86, %75
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @NDOSPART, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %81, i64 %83
  %85 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %76

89:                                               ; preds = %76
  %90 = load i32, i32* %4, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @NDOSPART, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i32, i32* @ACTIVE, align 4
  %98 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %98, i64 %101
  %103 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %102, i32 0, i32 0
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %54, %96, %92, %89
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ok(i8*) #1

declare dso_local i32 @Decimal(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
