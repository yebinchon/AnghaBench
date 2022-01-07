; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_elf64_freebsd.c_elf64_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_elf64_freebsd.c_elf64_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.preloaded_file = type { i32 }
%struct.file_metadata = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MODINFOMD_ELFHDR = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@PT4 = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PT3 = common dso_local global i32* null, align 8
@PT2 = common dso_local global i32* null, align 8
@PG_V = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_U = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@entry_lo = common dso_local global i32 0, align 4
@entry_hi = common dso_local global i32 0, align 4
@amd64_tramp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"exec returned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.preloaded_file*)* @elf64_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf64_exec(%struct.preloaded_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.preloaded_file*, align 8
  %4 = alloca %struct.file_metadata*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.preloaded_file* %0, %struct.preloaded_file** %3, align 8
  %10 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %11 = load i32, i32* @MODINFOMD_ELFHDR, align 4
  %12 = call %struct.file_metadata* @file_findmetadata(%struct.preloaded_file* %10, i32 %11)
  store %struct.file_metadata* %12, %struct.file_metadata** %4, align 8
  %13 = icmp eq %struct.file_metadata* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @EFTYPE, align 4
  store i32 %15, i32* %2, align 4
  br label %120

16:                                               ; preds = %1
  %17 = load %struct.file_metadata*, %struct.file_metadata** %4, align 8
  %18 = getelementptr inbounds %struct.file_metadata, %struct.file_metadata* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %5, align 8
  %20 = load %struct.preloaded_file*, %struct.preloaded_file** %3, align 8
  %21 = getelementptr inbounds %struct.preloaded_file, %struct.preloaded_file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bi_load64(i32 %22, i32 0, i32* %6, i32* %7, i32 1)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %120

28:                                               ; preds = %16
  %29 = load i32*, i32** @PT4, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i32 @bzero(i32* %29, i32 %30)
  %32 = load i32*, i32** @PT3, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = call i32 @bzero(i32* %32, i32 %33)
  %35 = load i32*, i32** @PT2, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = call i32 @bzero(i32* %35, i32 %36)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %101, %28
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 512
  br i1 %40, label %41, label %104

41:                                               ; preds = %38
  %42 = load i32*, i32** @PT3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = ptrtoint i32* %43 to i64
  %45 = call i64 @VTOP(i64 %44)
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** @PT4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @PG_V, align 4
  %52 = load i32, i32* @PG_RW, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @PG_U, align 4
  %55 = or i32 %53, %54
  %56 = load i32*, i32** @PT4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load i32*, i32** @PT2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = ptrtoint i32* %63 to i64
  %65 = call i64 @VTOP(i64 %64)
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** @PT3, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @PG_V, align 4
  %72 = load i32, i32* @PG_RW, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @PG_U, align 4
  %75 = or i32 %73, %74
  %76 = load i32*, i32** @PT3, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 %82, 2097152
  %84 = load i32*, i32** @PT2, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* @PG_V, align 4
  %89 = load i32, i32* @PG_RW, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @PG_PS, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @PG_U, align 4
  %94 = or i32 %92, %93
  %95 = load i32*, i32** @PT2, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %94
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %41
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %38

104:                                              ; preds = %38
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* @entry_lo, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 32
  store i32 %111, i32* @entry_hi, align 4
  %112 = call i32 (...) @dev_cleanup()
  %113 = load i64, i64* @amd64_tramp, align 8
  %114 = call i64 @VTOP(i64 %113)
  %115 = inttoptr i64 %114 to i8*
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @__exec(i8* %115, i32 %116, i32 %117)
  %119 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %104, %26, %14
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.file_metadata* @file_findmetadata(%struct.preloaded_file*, i32) #1

declare dso_local i32 @bi_load64(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @VTOP(i64) #1

declare dso_local i32 @dev_cleanup(...) #1

declare dso_local i32 @__exec(i8*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
