; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_dump_one_slvl_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_dump_one_slvl_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_params = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [244 x i8] c"SL2VLTableRecord dump:\0A\09\09LID........................%u\0A\09\09InPort.....................%u\0A\09\09OutPort....................%u\0A\09\09SL: 0| 1| 2| 3| 4| 5| 6| 7| 8| 9|10|11|12|13|14|15|\0A\09\09VL:%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|%2u|\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.query_params*)* @dump_one_slvl_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_one_slvl_record(i8* %0, %struct.query_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.query_params*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.query_params* %1, %struct.query_params** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i32* %10, i32** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cl_ntoh16(i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @ib_slvl_table_get(i32* %21, i32 0)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @ib_slvl_table_get(i32* %23, i32 1)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ib_slvl_table_get(i32* %25, i32 2)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @ib_slvl_table_get(i32* %27, i32 3)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @ib_slvl_table_get(i32* %29, i32 4)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @ib_slvl_table_get(i32* %31, i32 5)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @ib_slvl_table_get(i32* %33, i32 6)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ib_slvl_table_get(i32* %35, i32 7)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ib_slvl_table_get(i32* %37, i32 8)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @ib_slvl_table_get(i32* %39, i32 9)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @ib_slvl_table_get(i32* %41, i32 10)
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ib_slvl_table_get(i32* %43, i32 11)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @ib_slvl_table_get(i32* %45, i32 12)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @ib_slvl_table_get(i32* %47, i32 13)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @ib_slvl_table_get(i32* %49, i32 14)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @ib_slvl_table_get(i32* %51, i32 15)
  %53 = call i32 @printf(i8* getelementptr inbounds ([244 x i8], [244 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20, i32 %22, i32 %24, i32 %26, i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cl_ntoh16(i32) #1

declare dso_local i32 @ib_slvl_table_get(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
