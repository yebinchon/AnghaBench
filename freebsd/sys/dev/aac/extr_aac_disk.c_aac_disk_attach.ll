; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_disk.c_aac_disk_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_disk.c_aac_disk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_disk = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.aac_softc*, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aac_disk* }
%struct.aac_softc = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_FLAGS_LBA_64BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%juMB (%ju sectors)\0A\00", align 1
@AAC_BLOCK_SIZE = common dso_local global i32 0, align 4
@DISKFLAG_UNMAPPED_BIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"aacd\00", align 1
@aac_disk_open = common dso_local global i32 0, align 4
@aac_disk_close = common dso_local global i32 0, align 4
@aac_disk_strategy = common dso_local global i32 0, align 4
@aac_disk_dump = common dso_local global i32 0, align 4
@DISK_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aac_disk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_disk_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_disk*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @device_get_softc(i32 %4)
  %6 = inttoptr i64 %5 to %struct.aac_disk*
  store %struct.aac_disk* %6, %struct.aac_disk** %3, align 8
  %7 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %8 = call i32 @fwprintf(i32* null, i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  %11 = call i64 @device_get_softc(i32 %10)
  %12 = inttoptr i64 %11 to %struct.aac_softc*
  %13 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %14 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %13, i32 0, i32 6
  store %struct.aac_softc* %12, %struct.aac_softc** %14, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.TYPE_7__* @device_get_ivars(i32 %15)
  %17 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %18 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %17, i32 0, i32 7
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %18, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %21 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %23 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %22, i32 0, i32 7
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %29 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %31 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %30, i32 0, i32 6
  %32 = load %struct.aac_softc*, %struct.aac_softc** %31, align 8
  %33 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AAC_FLAGS_LBA_64BIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %1
  %39 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %40 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %39, i32 0, i32 7
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 %45, 32
  %47 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %48 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %38, %1
  %52 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %53 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 2097152
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %58 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %57, i32 0, i32 1
  store i32 255, i32* %58, align 4
  %59 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %60 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %59, i32 0, i32 2
  store i32 63, i32* %60, align 8
  br label %77

61:                                               ; preds = %51
  %62 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %63 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %64, 1048576
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %68 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %67, i32 0, i32 1
  store i32 128, i32* %68, align 4
  %69 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %70 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %69, i32 0, i32 2
  store i32 32, i32* %70, align 8
  br label %76

71:                                               ; preds = %61
  %72 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %73 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %72, i32 0, i32 1
  store i32 64, i32* %73, align 4
  %74 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %75 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %74, i32 0, i32 2
  store i32 32, i32* %75, align 8
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %79 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %82 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %85 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %83, %86
  %88 = sdiv i32 %80, %87
  %89 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %90 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %2, align 4
  %92 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %93 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @AAC_BLOCK_SIZE, align 4
  %96 = sdiv i32 1048576, %95
  %97 = sdiv i32 %94, %96
  %98 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %99 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load i32, i32* %2, align 4
  %103 = call i32 @device_get_unit(i32 %102)
  %104 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %105 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = call %struct.TYPE_6__* (...) @disk_alloc()
  %107 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %108 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %107, i32 0, i32 4
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %108, align 8
  %109 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %110 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %111 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %110, i32 0, i32 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 12
  store %struct.aac_disk* %109, %struct.aac_disk** %113, align 8
  %114 = load i32, i32* @DISKFLAG_UNMAPPED_BIO, align 4
  %115 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %116 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %115, i32 0, i32 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 11
  store i32 %114, i32* %118, align 8
  %119 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %120 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %119, i32 0, i32 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %122, align 8
  %123 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %124 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %123, i32 0, i32 6
  %125 = load %struct.aac_softc*, %struct.aac_softc** %124, align 8
  %126 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 9
  %129 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %130 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %129, i32 0, i32 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i32 %128, i32* %132, align 8
  %133 = load i32, i32* @aac_disk_open, align 4
  %134 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %135 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %134, i32 0, i32 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 10
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* @aac_disk_close, align 4
  %139 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %140 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %139, i32 0, i32 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 9
  store i32 %138, i32* %142, align 8
  %143 = load i32, i32* @aac_disk_strategy, align 4
  %144 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %145 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %144, i32 0, i32 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 8
  store i32 %143, i32* %147, align 4
  %148 = load i32, i32* @aac_disk_dump, align 4
  %149 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %150 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %149, i32 0, i32 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 7
  store i32 %148, i32* %152, align 8
  %153 = load i32, i32* @AAC_BLOCK_SIZE, align 4
  %154 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %155 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %154, i32 0, i32 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  store i32 %153, i32* %157, align 4
  %158 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %159 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @AAC_BLOCK_SIZE, align 4
  %162 = mul nsw i32 %160, %161
  %163 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %164 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %163, i32 0, i32 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  store i32 %162, i32* %166, align 8
  %167 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %168 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %171 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %170, i32 0, i32 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 4
  store i32 %169, i32* %173, align 4
  %174 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %175 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %178 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %177, i32 0, i32 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 5
  store i32 %176, i32* %180, align 8
  %181 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %182 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %185 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %184, i32 0, i32 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 6
  store i32 %183, i32* %187, align 4
  %188 = load %struct.aac_disk*, %struct.aac_disk** %3, align 8
  %189 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %188, i32 0, i32 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load i32, i32* @DISK_VERSION, align 4
  %192 = call i32 @disk_create(%struct.TYPE_6__* %190, i32 %191)
  ret i32 0
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @fwprintf(i32*, i8*, i8*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.TYPE_7__* @device_get_ivars(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_6__* @disk_alloc(...) #1

declare dso_local i32 @disk_create(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
