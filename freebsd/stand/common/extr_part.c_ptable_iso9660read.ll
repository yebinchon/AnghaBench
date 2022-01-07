; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_part.c_ptable_iso9660read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_part.c_ptable_iso9660read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptable = type { i32, i32, i32, i32 }
%struct.iso_primary_descriptor = type { i32 }
%struct.pentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@ISO_STANDARD_ID = common dso_local global i32 0, align 4
@PART_ISO9660 = common dso_local global i32 0, align 4
@PTABLE_ISO9660 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ptable* (%struct.ptable*, i8*, i64 (i8*, i32*, i32, i32)*)* @ptable_iso9660read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ptable* @ptable_iso9660read(%struct.ptable* %0, i8* %1, i64 (i8*, i32*, i32, i32)* %2) #0 {
  %4 = alloca %struct.ptable*, align 8
  %5 = alloca %struct.ptable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i8*, i32*, i32, i32)*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.iso_primary_descriptor*, align 8
  %10 = alloca %struct.pentry*, align 8
  store %struct.ptable* %0, %struct.ptable** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 (i8*, i32*, i32, i32)* %2, i64 (i8*, i32*, i32, i32)** %7, align 8
  %11 = load %struct.ptable*, %struct.ptable** %5, align 8
  %12 = getelementptr inbounds %struct.ptable, %struct.ptable* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @malloc(i32 %13)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load %struct.ptable*, %struct.ptable** %5, align 8
  store %struct.ptable* %19, %struct.ptable** %4, align 8
  br label %76

20:                                               ; preds = %3
  %21 = load i64 (i8*, i32*, i32, i32)*, i64 (i8*, i32*, i32, i32)** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @cdb2devb(i32 16)
  %25 = call i64 %21(i8* %22, i32* %23, i32 1, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = call i32 @DPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.ptable*, %struct.ptable** %5, align 8
  %30 = call i32 @ptable_close(%struct.ptable* %29)
  store %struct.ptable* null, %struct.ptable** %5, align 8
  br label %72

31:                                               ; preds = %20
  %32 = load i32*, i32** %8, align 8
  %33 = bitcast i32* %32 to %struct.iso_primary_descriptor*
  store %struct.iso_primary_descriptor* %33, %struct.iso_primary_descriptor** %9, align 8
  %34 = load %struct.iso_primary_descriptor*, %struct.iso_primary_descriptor** %9, align 8
  %35 = getelementptr inbounds %struct.iso_primary_descriptor, %struct.iso_primary_descriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ISO_STANDARD_ID, align 4
  %38 = call i64 @bcmp(i32 %36, i32 %37, i32 4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %72

41:                                               ; preds = %31
  %42 = call i8* @malloc(i32 24)
  %43 = bitcast i8* %42 to %struct.pentry*
  store %struct.pentry* %43, %struct.pentry** %10, align 8
  %44 = load %struct.pentry*, %struct.pentry** %10, align 8
  %45 = icmp eq %struct.pentry* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %72

47:                                               ; preds = %41
  %48 = load %struct.pentry*, %struct.pentry** %10, align 8
  %49 = getelementptr inbounds %struct.pentry, %struct.pentry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.ptable*, %struct.ptable** %5, align 8
  %52 = getelementptr inbounds %struct.ptable, %struct.ptable* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pentry*, %struct.pentry** %10, align 8
  %55 = getelementptr inbounds %struct.pentry, %struct.pentry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @PART_ISO9660, align 4
  %58 = load %struct.pentry*, %struct.pentry** %10, align 8
  %59 = getelementptr inbounds %struct.pentry, %struct.pentry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load %struct.pentry*, %struct.pentry** %10, align 8
  %62 = getelementptr inbounds %struct.pentry, %struct.pentry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.ptable*, %struct.ptable** %5, align 8
  %65 = getelementptr inbounds %struct.ptable, %struct.ptable* %64, i32 0, i32 2
  %66 = load %struct.pentry*, %struct.pentry** %10, align 8
  %67 = load %struct.pentry*, %struct.pentry** %10, align 8
  %68 = call i32 @STAILQ_INSERT_TAIL(i32* %65, %struct.pentry* %66, %struct.pentry* %67)
  %69 = load i32, i32* @PTABLE_ISO9660, align 4
  %70 = load %struct.ptable*, %struct.ptable** %5, align 8
  %71 = getelementptr inbounds %struct.ptable, %struct.ptable* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %47, %46, %40, %27
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @free(i32* %73)
  %75 = load %struct.ptable*, %struct.ptable** %5, align 8
  store %struct.ptable* %75, %struct.ptable** %4, align 8
  br label %76

76:                                               ; preds = %72, %18
  %77 = load %struct.ptable*, %struct.ptable** %4, align 8
  ret %struct.ptable* %77
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @cdb2devb(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ptable_close(%struct.ptable*) #1

declare dso_local i64 @bcmp(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pentry*, %struct.pentry*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
