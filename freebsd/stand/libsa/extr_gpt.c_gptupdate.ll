; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptupdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsk = type { i32 }
%struct.gpt_hdr = type { i32, i32, i32, i32, i8*, i8*, i64 }
%struct.gpt_ent = type { i32, i32, i32, i32, i8*, i8*, i64 }

@DEV_BSIZE = common dso_local global i32 0, align 4
@curent = common dso_local global i32 0, align 4
@secbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: unable to update %s GPT partition table\0A\00", align 1
@BOOTPROG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: unable to update %s GPT header\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dsk*, %struct.gpt_hdr*, %struct.gpt_ent*)* @gptupdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gptupdate(i8* %0, %struct.dsk* %1, %struct.gpt_hdr* %2, %struct.gpt_ent* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dsk*, align 8
  %7 = alloca %struct.gpt_hdr*, align 8
  %8 = alloca %struct.gpt_ent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.dsk* %1, %struct.dsk** %6, align 8
  store %struct.gpt_hdr* %2, %struct.gpt_hdr** %7, align 8
  store %struct.gpt_ent* %3, %struct.gpt_ent** %8, align 8
  %12 = load i32, i32* @DEV_BSIZE, align 4
  %13 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %14 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %12, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @curent, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %23, i64 %25
  %27 = bitcast %struct.gpt_ent* %26 to %struct.gpt_hdr*
  %28 = load i32, i32* @secbuf, align 4
  %29 = load i32, i32* @DEV_BSIZE, align 4
  %30 = call i32 @bcopy(%struct.gpt_hdr* %27, i32 %28, i32 %29)
  %31 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %32 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load %struct.dsk*, %struct.dsk** %6, align 8
  %39 = load i32, i32* @secbuf, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @drvwrite(%struct.dsk* %38, i32 %39, i32 %40, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = load i8*, i8** @BOOTPROG, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  br label %89

47:                                               ; preds = %4
  %48 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %49 = bitcast %struct.gpt_ent* %48 to %struct.gpt_hdr*
  %50 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %51 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %54 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  %57 = call i8* @crc32(%struct.gpt_hdr* %49, i32 %56)
  %58 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %59 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %61 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %60, i32 0, i32 4
  store i8* null, i8** %61, align 8
  %62 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %63 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @crc32(%struct.gpt_hdr* %62, i32 %65)
  %67 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %68 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @secbuf, align 4
  %70 = load i32, i32* @DEV_BSIZE, align 4
  %71 = call i32 @bzero(i32 %69, i32 %70)
  %72 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %73 = load i32, i32* @secbuf, align 4
  %74 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %75 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bcopy(%struct.gpt_hdr* %72, i32 %73, i32 %76)
  %78 = load %struct.dsk*, %struct.dsk** %6, align 8
  %79 = load i32, i32* @secbuf, align 4
  %80 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %81 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @drvwrite(%struct.dsk* %78, i32 %79, i32 %82, i32 1)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %47
  %86 = load i8*, i8** @BOOTPROG, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %43, %85, %47
  ret void
}

declare dso_local i32 @bcopy(%struct.gpt_hdr*, i32, i32) #1

declare dso_local i64 @drvwrite(%struct.dsk*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @crc32(%struct.gpt_hdr*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
