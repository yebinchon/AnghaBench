; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/acpica/extr_acpi_machdep.c_map_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/acpica/extr_acpi_machdep.c_map_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"ACPI: Failed checksum for table %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i8*)* @map_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_table(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i8* @pmap_mapbios(i32 %11, i8* inttoptr (i64 16 to i8*))
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %19 = call i64 @strncmp(i32 %16, i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = bitcast %struct.TYPE_2__* %22 to i8*
  %24 = call i32 @pmap_unmapbios(i8* %23, i8* inttoptr (i64 16 to i8*))
  store i8* null, i8** %4, align 8
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = bitcast %struct.TYPE_2__* %29 to i8*
  %31 = call i32 @pmap_unmapbios(i8* %30, i8* inttoptr (i64 16 to i8*))
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i8* @pmap_mapbios(i32 %32, i8* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @AcpiTbChecksum(i8* %35, i8* %36)
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %25
  %41 = load i64, i64* @bootverbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %47, %21
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

declare dso_local i8* @pmap_mapbios(i32, i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @pmap_unmapbios(i8*, i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiTbChecksum(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
