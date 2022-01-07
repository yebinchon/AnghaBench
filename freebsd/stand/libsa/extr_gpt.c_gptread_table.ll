; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptread_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptread_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsk = type { i32 }
%struct.gpt_hdr = type { i32, i32, i64, i32 }
%struct.gpt_ent = type { i32 }

@DEV_BSIZE = common dso_local global i32 0, align 4
@secbuf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"%s: unable to read %s GPT partition table\0A\00", align 1
@BOOTPROG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: %s GPT table checksum mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dsk*, %struct.gpt_hdr*, %struct.gpt_ent*)* @gptread_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gptread_table(i8* %0, %struct.dsk* %1, %struct.gpt_hdr* %2, %struct.gpt_ent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsk*, align 8
  %8 = alloca %struct.gpt_hdr*, align 8
  %9 = alloca %struct.gpt_ent*, align 8
  %10 = alloca %struct.gpt_ent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.dsk* %1, %struct.dsk** %7, align 8
  store %struct.gpt_hdr* %2, %struct.gpt_hdr** %8, align 8
  store %struct.gpt_ent* %3, %struct.gpt_ent** %9, align 8
  %15 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %16 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

20:                                               ; preds = %4
  %21 = load i32, i32* @DEV_BSIZE, align 4
  %22 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %23 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %21, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %27 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %73, %20
  %30 = load %struct.dsk*, %struct.dsk** %7, align 8
  %31 = load i64, i64* @secbuf, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @drvread(%struct.dsk* %30, i64 %31, i32 %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i8*, i8** @BOOTPROG, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37)
  store i32 -1, i32* %5, align 4
  br label %93

39:                                               ; preds = %29
  %40 = load i64, i64* @secbuf, align 8
  %41 = inttoptr i64 %40 to %struct.gpt_ent*
  store %struct.gpt_ent* %41, %struct.gpt_ent** %10, align 8
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %61, %39
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load %struct.gpt_ent*, %struct.gpt_ent** %10, align 8
  %48 = load %struct.gpt_ent*, %struct.gpt_ent** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %48, i64 %50
  %52 = call i32 @bcopy(%struct.gpt_ent* %47, %struct.gpt_ent* %51, i32 4)
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %56 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %66

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load %struct.gpt_ent*, %struct.gpt_ent** %10, align 8
  %65 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %64, i32 1
  store %struct.gpt_ent* %65, %struct.gpt_ent** %10, align 8
  br label %42

66:                                               ; preds = %59, %42
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %69 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %29

76:                                               ; preds = %72
  %77 = load %struct.gpt_ent*, %struct.gpt_ent** %9, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %80 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %78, %81
  %83 = call i64 @crc32(%struct.gpt_ent* %77, i32 %82)
  %84 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %85 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load i8*, i8** @BOOTPROG, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %89, i8* %90)
  store i32 -1, i32* %5, align 4
  br label %93

92:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %88, %35, %19
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @drvread(%struct.dsk*, i64, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @bcopy(%struct.gpt_ent*, %struct.gpt_ent*, i32) #1

declare dso_local i64 @crc32(%struct.gpt_ent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
