; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptread.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.dsk = type { i64 }

@secbuf = common dso_local global i8* null, align 8
@hdr_backup_lba = common dso_local global i64 0, align 8
@hdr_primary_lba = common dso_local global i64 0, align 8
@curent = common dso_local global i32 0, align 4
@bootonce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@hdr_primary = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@table_primary = common dso_local global i32 0, align 4
@gpthdr = common dso_local global %struct.TYPE_7__* null, align 8
@gpttable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: unable to locate backup GPT header\0A\00", align 1
@BOOTPROG = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@hdr_backup = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@table_backup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: using backup GPT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gptread(%struct.dsk* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.dsk* %0, %struct.dsk** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  store i8* %7, i8** @secbuf, align 8
  store i64 0, i64* @hdr_backup_lba, align 8
  store i64 0, i64* @hdr_primary_lba, align 8
  store i32 -1, i32* @curent, align 4
  store i32 1, i32* @bootonce, align 4
  %8 = load %struct.dsk*, %struct.dsk** %4, align 8
  %9 = getelementptr inbounds %struct.dsk, %struct.dsk* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.dsk*, %struct.dsk** %4, align 8
  %11 = call i64 @gptread_hdr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.dsk* %10, %struct.TYPE_7__* @hdr_primary, i32 1)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.dsk*, %struct.dsk** %4, align 8
  %15 = load i32, i32* @table_primary, align 4
  %16 = call i64 @gptread_table(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.dsk* %14, %struct.TYPE_7__* @hdr_primary, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hdr_primary, i32 0, i32 0), align 8
  store i64 %19, i64* @hdr_primary_lba, align 8
  store %struct.TYPE_7__* @hdr_primary, %struct.TYPE_7__** @gpthdr, align 8
  %20 = load i32, i32* @table_primary, align 4
  store i32 %20, i32* @gpttable, align 4
  br label %21

21:                                               ; preds = %18, %13, %2
  %22 = load i64, i64* @hdr_primary_lba, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hdr_primary, i32 0, i32 1), align 8
  store i32 %25, i32* %6, align 4
  br label %35

26:                                               ; preds = %21
  %27 = load %struct.dsk*, %struct.dsk** %4, align 8
  %28 = call i32 @drvsize(%struct.dsk* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** @BOOTPROG, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %61

41:                                               ; preds = %35
  %42 = load %struct.dsk*, %struct.dsk** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @gptread_hdr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.dsk* %42, %struct.TYPE_7__* @hdr_backup, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.dsk*, %struct.dsk** %4, align 8
  %48 = load i32, i32* @table_backup, align 4
  %49 = call i64 @gptread_table(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.dsk* %47, %struct.TYPE_7__* @hdr_backup, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hdr_backup, i32 0, i32 0), align 8
  store i64 %52, i64* @hdr_backup_lba, align 8
  %53 = load i64, i64* @hdr_primary_lba, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  store %struct.TYPE_7__* @hdr_backup, %struct.TYPE_7__** @gpthdr, align 8
  %56 = load i32, i32* @table_backup, align 4
  store i32 %56, i32* @gpttable, align 4
  %57 = load i8*, i8** @BOOTPROG, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %46, %41
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i64, i64* @hdr_primary_lba, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.dsk*, %struct.dsk** %4, align 8
  %66 = load i32, i32* @table_primary, align 4
  %67 = call i32 @gptbootconv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.dsk* %65, %struct.TYPE_7__* @hdr_primary, i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i64, i64* @hdr_backup_lba, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.dsk*, %struct.dsk** %4, align 8
  %73 = load i32, i32* @table_backup, align 4
  %74 = call i32 @gptbootconv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.dsk* %72, %struct.TYPE_7__* @hdr_backup, i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i64, i64* @hdr_primary_lba, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i64, i64* @hdr_backup_lba, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 -1, i32* %3, align 4
  br label %83

82:                                               ; preds = %78, %75
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @gptread_hdr(i8*, %struct.dsk*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @gptread_table(i8*, %struct.dsk*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @drvsize(%struct.dsk*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @gptbootconv(i8*, %struct.dsk*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
