; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptbootfailed.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptbootfailed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dsk = type { i32 }

@gpttable = common dso_local global %struct.TYPE_6__* null, align 8
@curent = common dso_local global i64 0, align 8
@GPT_ENT_ATTR_BOOTONCE = common dso_local global i32 0, align 4
@hdr_primary_lba = common dso_local global i64 0, align 8
@table_primary = common dso_local global %struct.TYPE_5__* null, align 8
@GPT_ENT_ATTR_BOOTFAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@hdr_primary = common dso_local global i32 0, align 4
@hdr_backup_lba = common dso_local global i64 0, align 8
@table_backup = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@hdr_backup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gptbootfailed(%struct.dsk* %0) #0 {
  %2 = alloca %struct.dsk*, align 8
  store %struct.dsk* %0, %struct.dsk** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gpttable, align 8
  %4 = load i64, i64* @curent, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %56

12:                                               ; preds = %1
  %13 = load i64, i64* @hdr_primary_lba, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_primary, align 8
  %19 = load i64, i64* @curent, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %17
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @GPT_ENT_ATTR_BOOTFAILED, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_primary, align 8
  %26 = load i64, i64* @curent, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = load %struct.dsk*, %struct.dsk** %2, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_primary, align 8
  %33 = call i32 @gptupdate(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.dsk* %31, i32* @hdr_primary, %struct.TYPE_5__* %32)
  br label %34

34:                                               ; preds = %15, %12
  %35 = load i64, i64* @hdr_backup_lba, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_backup, align 8
  %41 = load i64, i64* @curent, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @GPT_ENT_ATTR_BOOTFAILED, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_backup, align 8
  %48 = load i64, i64* @curent, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load %struct.dsk*, %struct.dsk** %2, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table_backup, align 8
  %55 = call i32 @gptupdate(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.dsk* %53, i32* @hdr_backup, %struct.TYPE_5__* %54)
  br label %56

56:                                               ; preds = %11, %37, %34
  ret void
}

declare dso_local i32 @gptupdate(i8*, %struct.dsk*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
