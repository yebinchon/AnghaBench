; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_get_relocated_section_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_get_relocated_section_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_addr_info = type { i32 }
%struct.section_table = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.section_addr_info* (i32*, i64)* @get_relocated_section_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.section_addr_info* @get_relocated_section_addrs(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.section_addr_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.section_table*, align 8
  %11 = alloca %struct.section_table*, align 8
  %12 = alloca %struct.section_table*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.section_addr_info* null, %struct.section_addr_info** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @bfd_count_sections(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @bfd_get_section_by_name(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %63

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @bfd_get_section_vma(i32* %22, i32* %23)
  store i64 %24, i64* %8, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %62

27:                                               ; preds = %20
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %9, align 8
  store %struct.section_table* null, %struct.section_table** %10, align 8
  store %struct.section_table* null, %struct.section_table** %11, align 8
  store %struct.section_table* null, %struct.section_table** %12, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @build_section_table(i32* %31, %struct.section_table** %10, %struct.section_table** %11)
  %33 = load %struct.section_table*, %struct.section_table** %10, align 8
  store %struct.section_table* %33, %struct.section_table** %12, align 8
  br label %34

34:                                               ; preds = %53, %27
  %35 = load %struct.section_table*, %struct.section_table** %12, align 8
  %36 = load %struct.section_table*, %struct.section_table** %11, align 8
  %37 = icmp ult %struct.section_table* %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.section_table*, %struct.section_table** %12, align 8
  %41 = getelementptr inbounds %struct.section_table, %struct.section_table* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.section_table*, %struct.section_table** %12, align 8
  %48 = getelementptr inbounds %struct.section_table, %struct.section_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  br label %53

53:                                               ; preds = %38
  %54 = load %struct.section_table*, %struct.section_table** %12, align 8
  %55 = getelementptr inbounds %struct.section_table, %struct.section_table* %54, i32 1
  store %struct.section_table* %55, %struct.section_table** %12, align 8
  br label %34

56:                                               ; preds = %34
  %57 = load %struct.section_table*, %struct.section_table** %10, align 8
  %58 = load %struct.section_table*, %struct.section_table** %11, align 8
  %59 = call %struct.section_addr_info* @build_section_addr_info_from_section_table(%struct.section_table* %57, %struct.section_table* %58)
  store %struct.section_addr_info* %59, %struct.section_addr_info** %5, align 8
  %60 = load %struct.section_table*, %struct.section_table** %10, align 8
  %61 = call i32 @xfree(%struct.section_table* %60)
  br label %62

62:                                               ; preds = %56, %26
  br label %63

63:                                               ; preds = %62, %19
  %64 = load %struct.section_addr_info*, %struct.section_addr_info** %5, align 8
  ret %struct.section_addr_info* %64
}

declare dso_local i32 @bfd_count_sections(i32*) #1

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i64 @bfd_get_section_vma(i32*, i32*) #1

declare dso_local i32 @build_section_table(i32*, %struct.section_table**, %struct.section_table**) #1

declare dso_local %struct.section_addr_info* @build_section_addr_info_from_section_table(%struct.section_table*, %struct.section_table*) #1

declare dso_local i32 @xfree(%struct.section_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
