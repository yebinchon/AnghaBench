; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_boot.c_writefsinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_boot.c_writefsinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i32, i32, i32, i32 }

@DOSBOOTBLOCKSIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not read fsinfo block\00", align 1
@FSFATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to write bpbFSInfo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writefsinfo(i32 %0, %struct.bootblock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bootblock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.bootblock* %1, %struct.bootblock** %5, align 8
  %9 = load i32, i32* @DOSBOOTBLOCKSIZE, align 4
  %10 = mul nsw i32 2, %9
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %16 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %19 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i32 @lseek(i32 %14, i32 %21, i32 %22)
  %24 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %25 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %28 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = icmp ne i32 %23, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = mul nuw i64 8, %11
  %35 = trunc i64 %34 to i32
  %36 = call i32 @read(i32 %33, i64* %13, i32 %35)
  %37 = sext i32 %36 to i64
  %38 = mul nuw i64 8, %11
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32, %2
  %41 = call i32 @perr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @FSFATAL, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %120

43:                                               ; preds = %32
  %44 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %45 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %13, i64 488
  store i64 %47, i64* %48, align 16
  %49 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %50 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %13, i64 489
  store i64 %53, i64* %54, align 8
  %55 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %56 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 16
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %13, i64 490
  store i64 %59, i64* %60, align 16
  %61 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %62 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 24
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %13, i64 491
  store i64 %65, i64* %66, align 8
  %67 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %68 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %13, i64 492
  store i64 %70, i64* %71, align 16
  %72 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %73 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %13, i64 493
  store i64 %76, i64* %77, align 8
  %78 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %79 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 16
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %13, i64 494
  store i64 %82, i64* %83, align 16
  %84 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %85 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 24
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %13, i64 495
  store i64 %88, i64* %89, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %92 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %95 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = call i32 @lseek(i32 %90, i32 %97, i32 %98)
  %100 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %101 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.bootblock*, %struct.bootblock** %5, align 8
  %104 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = icmp ne i32 %99, %106
  br i1 %107, label %116, label %108

108:                                              ; preds = %43
  %109 = load i32, i32* %4, align 4
  %110 = mul nuw i64 8, %11
  %111 = trunc i64 %110 to i32
  %112 = call i32 @write(i32 %109, i64* %13, i32 %111)
  %113 = sext i32 %112 to i64
  %114 = mul nuw i64 8, %11
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %108, %43
  %117 = call i32 @perr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @FSFATAL, align 4
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %120

119:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %116, %40
  %121 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @read(i32, i64*, i32) #2

declare dso_local i32 @perr(i8*) #2

declare dso_local i32 @write(i32, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
