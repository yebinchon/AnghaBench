; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdTable.c_AcpiOsTableOverride.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdTable.c_AcpiOsTableOverride.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@__const.AcpiOsTableOverride.modname = private unnamed_addr constant [10 x i8] c"acpi_dsdt\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_SIG_DSDT = common dso_local global i32 0, align 4
@AE_SUPPORT = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_DisableSsdtTableInstall = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiOsTableOverride(%struct.TYPE_5__* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %10 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.AcpiOsTableOverride.modname, i32 0, i32 0), i64 10, i1 false)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %15 = icmp eq %struct.TYPE_5__** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %24 = call i32 @ACPI_COMPARE_NAMESEG(i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %18
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %30 = call i32* @preload_search_by_type(i8* %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %34, i32* %3, align 4
  br label %52

35:                                               ; preds = %28
  %36 = load i32*, i32** %7, align 8
  %37 = call %struct.TYPE_5__* @preload_fetch_addr(i32* %36)
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %8, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @preload_fetch_size(i32* %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = icmp eq %struct.TYPE_5__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %35
  %46 = load i32, i32* @AE_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* @AcpiGbl_DisableSsdtTableInstall, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %50, align 8
  %51 = load i32, i32* @AE_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %45, %33, %26, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ACPI_COMPARE_NAMESEG(i32*, i32) #2

declare dso_local i32* @preload_search_by_type(i8*) #2

declare dso_local %struct.TYPE_5__* @preload_fetch_addr(i32*) #2

declare dso_local i64 @preload_fetch_size(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
