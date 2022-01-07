; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptread_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptread_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsk = type { i32 }
%struct.gpt_hdr = type { i64, i32, i32, i64, i64, i32, i32 }

@secbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: unable to read %s GPT header\0A\00", align 1
@BOOTPROG = common dso_local global i8* null, align 8
@GPT_HDR_SIG = common dso_local global i32 0, align 4
@MAXTBLENTS = common dso_local global i64 0, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: invalid %s GPT header\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: %s GPT header checksum mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dsk*, %struct.gpt_hdr*, i64)* @gptread_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gptread_hdr(i8* %0, %struct.dsk* %1, %struct.gpt_hdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsk*, align 8
  %8 = alloca %struct.gpt_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.dsk* %1, %struct.dsk** %7, align 8
  store %struct.gpt_hdr* %2, %struct.gpt_hdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.dsk*, %struct.dsk** %7, align 8
  %12 = load i32, i32* @secbuf, align 4
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @drvread(%struct.dsk* %11, i32 %12, i64 %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i8*, i8** @BOOTPROG, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  store i32 -1, i32* %5, align 4
  br label %85

20:                                               ; preds = %4
  %21 = load i32, i32* @secbuf, align 4
  %22 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %23 = call i32 @bcopy(i32 %21, %struct.gpt_hdr* %22, i32 40)
  %24 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %25 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GPT_HDR_SIG, align 4
  %28 = call i64 @bcmp(i32 %26, i32 %27, i32 4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %60, label %30

30:                                               ; preds = %20
  %31 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %32 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %60, label %36

36:                                               ; preds = %30
  %37 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %38 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 65536
  br i1 %40, label %60, label %41

41:                                               ; preds = %36
  %42 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %43 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 4
  br i1 %46, label %60, label %47

47:                                               ; preds = %41
  %48 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %49 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MAXTBLENTS, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @DEV_BSIZE, align 4
  %55 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %56 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53, %47, %41, %36, %30, %20
  %61 = load i8*, i8** @BOOTPROG, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %62)
  store i32 -1, i32* %5, align 4
  br label %85

64:                                               ; preds = %53
  %65 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %66 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %10, align 8
  %68 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %69 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %71 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %72 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @crc32(%struct.gpt_hdr* %70, i32 %73)
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load i8*, i8** @BOOTPROG, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %78, i8* %79)
  store i32 -1, i32* %5, align 4
  br label %85

81:                                               ; preds = %64
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.gpt_hdr*, %struct.gpt_hdr** %8, align 8
  %84 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %83, i32 0, i32 4
  store i64 %82, i64* %84, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %77, %60, %16
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @drvread(%struct.dsk*, i32, i64, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @bcopy(i32, %struct.gpt_hdr*, i32) #1

declare dso_local i64 @bcmp(i32, i32, i32) #1

declare dso_local i64 @crc32(%struct.gpt_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
