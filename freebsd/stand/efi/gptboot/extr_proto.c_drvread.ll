; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/gptboot/extr_proto.c_drvread.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/gptboot/extr_proto.c_drvread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsk = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_8__*, i32, i32, i32, i8*)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@DEV_BSIZE = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"dskread: failed dev: %p, id: %u, lba: %ju, size: %d, status: %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drvread(%struct.dsk* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsk*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.dsk* %0, %struct.dsk** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dsk*, %struct.dsk** %6, align 8
  %15 = getelementptr inbounds %struct.dsk, %struct.dsk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %12, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DEV_BSIZE, align 4
  %28 = udiv i32 %26, %27
  %29 = udiv i32 %21, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @DEV_BSIZE, align 4
  %32 = mul i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64 (%struct.TYPE_8__*, i32, i32, i32, i8*)*, i64 (%struct.TYPE_8__*, i32, i32, i32, i8*)** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 %35(%struct.TYPE_8__* %36, i32 %41, i32 %42, i32 %43, i8* %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @EFI_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @EFI_ERROR_CODE(i64 %60)
  %62 = call i32 @DPRINTF(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %52, i32 %57, i32 %58, i32 %59, i32 %61)
  store i32 -1, i32* %5, align 4
  br label %64

63:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @DPRINTF(i8*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @EFI_ERROR_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
