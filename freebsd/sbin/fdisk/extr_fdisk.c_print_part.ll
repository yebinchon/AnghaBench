; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_print_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_print_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_partition = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@mtpart = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"<UNUSED>\0A\00", align 1
@secsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"sysid %d (%#04x),(%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"    start %lu, size %lu (%ju Meg), flag %x%s\0A\00", align 1
@ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" (active)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"\09beg: cyl %d/ head %d/ sector %d;\0A\09end: cyl %d/ head %d/ sector %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dos_partition*)* @print_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_part(%struct.dos_partition* %0) #0 {
  %2 = alloca %struct.dos_partition*, align 8
  %3 = alloca i32, align 4
  store %struct.dos_partition* %0, %struct.dos_partition** %2, align 8
  %4 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %5 = call i32 @bcmp(%struct.dos_partition* %4, i32* @mtpart, i32 48)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %77

9:                                                ; preds = %1
  %10 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %11 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @secsize, align 4
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 1048576
  store i32 %17, i32* %3, align 4
  %18 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %19 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %22 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %25 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @get_type(i32 %26)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23, i8* %27)
  %29 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %30 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %34 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %38 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %41 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ACTIVE, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %35, i32 %36, i32 %39, i8* %46)
  %48 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %49 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %52 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @DPCYL(i32 %50, i32 %53)
  %55 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %56 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %59 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @DPSECT(i32 %60)
  %62 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %63 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %66 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @DPCYL(i32 %64, i32 %67)
  %69 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %70 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dos_partition*, %struct.dos_partition** %2, align 8
  %73 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @DPSECT(i32 %74)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %54, i32 %57, i32 %61, i32 %68, i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @bcmp(%struct.dos_partition*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @get_type(i32) #1

declare dso_local i32 @DPCYL(i32, i32) #1

declare dso_local i32 @DPSECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
