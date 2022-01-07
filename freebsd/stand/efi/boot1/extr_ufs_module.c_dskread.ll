; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_ufs_module.c_dskread.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/boot1/extr_ufs_module.c_dskread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*, i32, i32, i32, i8*)*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@devinfo = common dso_local global %struct.TYPE_7__* null, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"dskread: failed dev: %p, id: %u, lba: %ju, size: %d, status: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @dskread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dskread(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devinfo, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devinfo, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DEV_BSIZE, align 4
  %26 = sdiv i32 %24, %25
  %27 = sdiv i32 %17, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @DEV_BSIZE, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devinfo, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64 (%struct.TYPE_6__*, i32, i32, i32, i8*)*, i64 (%struct.TYPE_6__*, i32, i32, i32, i8*)** %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devinfo, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devinfo, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 %35(%struct.TYPE_6__* %38, i32 %45, i32 %46, i32 %47, i8* %48)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @EFI_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devinfo, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devinfo, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @EFI_ERROR_CODE(i64 %66)
  %68 = call i32 @DPRINTF(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %56, i32 %63, i32 %64, i32 %65, i32 %67)
  store i32 -1, i32* %4, align 4
  br label %70

69:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %53
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @DPRINTF(i8*, %struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @EFI_ERROR_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
