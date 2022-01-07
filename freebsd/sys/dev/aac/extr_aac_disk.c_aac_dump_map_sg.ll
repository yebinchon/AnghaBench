; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_disk.c_aac_dump_map_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_disk.c_aac_dump_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.aac_fib = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.aac_blockwrite = type { %struct.aac_sg_table }
%struct.aac_sg_table = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_7__*, i32, i32)* @aac_dump_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_dump_map_sg(i8* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aac_fib*, align 8
  %10 = alloca %struct.aac_blockwrite*, align 8
  %11 = alloca %struct.aac_sg_table*, align 8
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
  %19 = bitcast i32* %18 to %struct.aac_blockwrite*
  store %struct.aac_blockwrite* %19, %struct.aac_blockwrite** %10, align 8
  %20 = load %struct.aac_blockwrite*, %struct.aac_blockwrite** %10, align 8
  %21 = getelementptr inbounds %struct.aac_blockwrite, %struct.aac_blockwrite* %20, i32 0, i32 0
  store %struct.aac_sg_table* %21, %struct.aac_sg_table** %11, align 8
  %22 = load %struct.aac_sg_table*, %struct.aac_sg_table** %11, align 8
  %23 = icmp ne %struct.aac_sg_table* %22, null
  br i1 %23, label %24, label %80

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.aac_sg_table*, %struct.aac_sg_table** %11, align 8
  %27 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %69, %24
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %80

42:                                               ; preds = %32
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.aac_sg_table*, %struct.aac_sg_table** %11, align 8
  %50 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 %48, i64* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.aac_sg_table*, %struct.aac_sg_table** %11, align 8
  %63 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %61, i32* %68, align 8
  br label %69

69:                                               ; preds = %42
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %28

72:                                               ; preds = %28
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = load %struct.aac_fib*, %struct.aac_fib** %9, align 8
  %78 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  br label %80

80:                                               ; preds = %41, %72, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
