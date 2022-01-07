; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_adjust_section_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_kld.c_adjust_section_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_table = type { i64, i64, %struct.TYPE_4__*, %struct.bfd_section* }
%struct.TYPE_4__ = type { i32 }
%struct.bfd_section = type { i32 }

@EXEC_P = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.section_table*, i64*)* @adjust_section_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_section_address(%struct.section_table* %0, i64* %1) #0 {
  %3 = alloca %struct.section_table*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.bfd_section*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.section_table* %0, %struct.section_table** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.section_table*, %struct.section_table** %3, align 8
  %8 = getelementptr inbounds %struct.section_table, %struct.section_table* %7, i32 0, i32 3
  %9 = load %struct.bfd_section*, %struct.bfd_section** %8, align 8
  store %struct.bfd_section* %9, %struct.bfd_section** %5, align 8
  %10 = load %struct.section_table*, %struct.section_table** %3, align 8
  %11 = getelementptr inbounds %struct.section_table, %struct.section_table* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EXEC_P, align 4
  %17 = load i32, i32* @DYNAMIC, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.section_table*, %struct.section_table** %3, align 8
  %25 = getelementptr inbounds %struct.section_table, %struct.section_table* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.section_table*, %struct.section_table** %3, align 8
  %31 = getelementptr inbounds %struct.section_table, %struct.section_table* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  br label %59

34:                                               ; preds = %2
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %39 = call i32 @bfd_get_section_alignment(%struct.TYPE_4__* %37, %struct.bfd_section* %38)
  %40 = call i64 @align_power(i64 %36, i32 %39)
  %41 = load i64*, i64** %4, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.section_table*, %struct.section_table** %3, align 8
  %45 = getelementptr inbounds %struct.section_table, %struct.section_table* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.section_table*, %struct.section_table** %3, align 8
  %47 = getelementptr inbounds %struct.section_table, %struct.section_table* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %51 = call i64 @bfd_section_size(%struct.TYPE_4__* %49, %struct.bfd_section* %50)
  %52 = add nsw i64 %48, %51
  %53 = load %struct.section_table*, %struct.section_table** %3, align 8
  %54 = getelementptr inbounds %struct.section_table, %struct.section_table* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.section_table*, %struct.section_table** %3, align 8
  %56 = getelementptr inbounds %struct.section_table, %struct.section_table* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %4, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %34, %21
  ret void
}

declare dso_local i64 @align_power(i64, i32) #1

declare dso_local i32 @bfd_get_section_alignment(%struct.TYPE_4__*, %struct.bfd_section*) #1

declare dso_local i64 @bfd_section_size(%struct.TYPE_4__*, %struct.bfd_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
