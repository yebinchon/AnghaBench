; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_disk.c_aac_dump_map_sg64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_disk.c_aac_dump_map_sg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.aac_fib = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.aac_blockwrite64 = type { %struct.aac_sg_table64 }
%struct.aac_sg_table64 = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_7__*, i32, i32)* @aac_dump_map_sg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_dump_map_sg64(i8* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aac_fib*, align 8
  %10 = alloca %struct.aac_blockwrite64*, align 8
  %11 = alloca %struct.aac_sg_table64*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.aac_fib*
  store %struct.aac_fib* %14, %struct.aac_fib** %9, align 8
  %15 = load %struct.aac_fib*, %struct.aac_fib** %9, align 8
  %16 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = bitcast i32* %18 to %struct.aac_blockwrite64*
  store %struct.aac_blockwrite64* %19, %struct.aac_blockwrite64** %10, align 8
  %20 = load %struct.aac_blockwrite64*, %struct.aac_blockwrite64** %10, align 8
  %21 = getelementptr inbounds %struct.aac_blockwrite64, %struct.aac_blockwrite64* %20, i32 0, i32 0
  store %struct.aac_sg_table64* %21, %struct.aac_sg_table64** %11, align 8
  %22 = load %struct.aac_sg_table64*, %struct.aac_sg_table64** %11, align 8
  %23 = icmp ne %struct.aac_sg_table64* %22, null
  br i1 %23, label %24, label %70

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.aac_sg_table64*, %struct.aac_sg_table64** %11, align 8
  %27 = getelementptr inbounds %struct.aac_sg_table64, %struct.aac_sg_table64* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %59, %24
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aac_sg_table64*, %struct.aac_sg_table64** %11, align 8
  %40 = getelementptr inbounds %struct.aac_sg_table64, %struct.aac_sg_table64* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %38, i32* %45, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.aac_sg_table64*, %struct.aac_sg_table64** %11, align 8
  %53 = getelementptr inbounds %struct.aac_sg_table64, %struct.aac_sg_table64* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %51, i32* %58, align 4
  br label %59

59:                                               ; preds = %32
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %28

62:                                               ; preds = %28
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = load %struct.aac_fib*, %struct.aac_fib** %9, align 8
  %68 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %62, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
