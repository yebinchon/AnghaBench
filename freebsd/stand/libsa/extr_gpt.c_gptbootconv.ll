; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptbootconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gpt.c_gptbootconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsk = type { i32 }
%struct.gpt_hdr = type { i32, i64, i32, i32, i32, i64, i8*, i8* }
%struct.gpt_ent = type { i32, i64, i32, i32, i32, i64, i8*, i8* }

@DEV_BSIZE = common dso_local global i32 0, align 4
@GPT_ENT_ATTR_BOOTME = common dso_local global i32 0, align 4
@GPT_ENT_ATTR_BOOTONCE = common dso_local global i32 0, align 4
@GPT_ENT_ATTR_BOOTFAILED = common dso_local global i32 0, align 4
@secbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: unable to update %s GPT partition table\0A\00", align 1
@BOOTPROG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: unable to update %s GPT header\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dsk*, %struct.gpt_hdr*, %struct.gpt_ent*)* @gptbootconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gptbootconv(i8* %0, %struct.dsk* %1, %struct.gpt_hdr* %2, %struct.gpt_ent* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dsk*, align 8
  %7 = alloca %struct.gpt_hdr*, align 8
  %8 = alloca %struct.gpt_ent*, align 8
  %9 = alloca %struct.gpt_ent*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.dsk* %1, %struct.dsk** %6, align 8
  store %struct.gpt_hdr* %2, %struct.gpt_hdr** %7, align 8
  store %struct.gpt_ent* %3, %struct.gpt_ent** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @DEV_BSIZE, align 4
  %17 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %18 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %16, %19
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %99, %4
  %25 = load i64, i64* %10, align 8
  %26 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sdiv i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %28, %34
  %36 = icmp slt i64 %25, %35
  br i1 %36, label %37, label %105

37:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %73, %37
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %43, i64 %47
  store %struct.gpt_ent* %48, %struct.gpt_ent** %9, align 8
  %49 = load %struct.gpt_ent*, %struct.gpt_ent** %9, align 8
  %50 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GPT_ENT_ATTR_BOOTME, align 4
  %53 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @GPT_ENT_ATTR_BOOTFAILED, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %51, %56
  %58 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  br label %73

61:                                               ; preds = %42
  %62 = load i32, i32* @GPT_ENT_ATTR_BOOTONCE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.gpt_ent*, %struct.gpt_ent** %9, align 8
  %65 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @GPT_ENT_ATTR_BOOTFAILED, align 4
  %69 = load %struct.gpt_ent*, %struct.gpt_ent** %9, align 8
  %70 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %73

73:                                               ; preds = %61, %60
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %38

76:                                               ; preds = %38
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %99

80:                                               ; preds = %76
  %81 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.gpt_ent, %struct.gpt_ent* %81, i64 %83
  %85 = bitcast %struct.gpt_ent* %84 to %struct.gpt_hdr*
  %86 = load i32, i32* @secbuf, align 4
  %87 = load i32, i32* @DEV_BSIZE, align 4
  %88 = call i32 @bcopy(%struct.gpt_hdr* %85, i32 %86, i32 %87)
  %89 = load %struct.dsk*, %struct.dsk** %6, align 8
  %90 = load i32, i32* @secbuf, align 4
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @drvwrite(%struct.dsk* %89, i32 %90, i64 %91, i32 1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load i8*, i8** @BOOTPROG, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %95, i8* %96)
  br label %98

98:                                               ; preds = %94, %80
  br label %99

99:                                               ; preds = %98, %79
  %100 = load i64, i64* %10, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %10, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %14, align 4
  br label %24

105:                                              ; preds = %24
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %151

109:                                              ; preds = %105
  %110 = load %struct.gpt_ent*, %struct.gpt_ent** %8, align 8
  %111 = bitcast %struct.gpt_ent* %110 to %struct.gpt_hdr*
  %112 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %113 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %116 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = call i8* @crc32(%struct.gpt_hdr* %111, i32 %118)
  %120 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %121 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %120, i32 0, i32 7
  store i8* %119, i8** %121, align 8
  %122 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %123 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %122, i32 0, i32 6
  store i8* null, i8** %123, align 8
  %124 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %125 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %126 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @crc32(%struct.gpt_hdr* %124, i32 %127)
  %129 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %130 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* @secbuf, align 4
  %132 = load i32, i32* @DEV_BSIZE, align 4
  %133 = call i32 @bzero(i32 %131, i32 %132)
  %134 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %135 = load i32, i32* @secbuf, align 4
  %136 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %137 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @bcopy(%struct.gpt_hdr* %134, i32 %135, i32 %138)
  %140 = load %struct.dsk*, %struct.dsk** %6, align 8
  %141 = load i32, i32* @secbuf, align 4
  %142 = load %struct.gpt_hdr*, %struct.gpt_hdr** %7, align 8
  %143 = getelementptr inbounds %struct.gpt_hdr, %struct.gpt_hdr* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @drvwrite(%struct.dsk* %140, i32 %141, i64 %144, i32 1)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %109
  %148 = load i8*, i8** @BOOTPROG, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %148, i8* %149)
  br label %151

151:                                              ; preds = %108, %147, %109
  ret void
}

declare dso_local i32 @bcopy(%struct.gpt_hdr*, i32, i32) #1

declare dso_local i64 @drvwrite(%struct.dsk*, i32, i64, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @crc32(%struct.gpt_hdr*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
