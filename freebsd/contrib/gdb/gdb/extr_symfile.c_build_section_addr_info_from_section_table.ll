; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_build_section_addr_info_from_section_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_build_section_addr_info_from_section_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section_addr_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.section_table = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.section_addr_info* @build_section_addr_info_from_section_table(%struct.section_table* %0, %struct.section_table* %1) #0 {
  %3 = alloca %struct.section_table*, align 8
  %4 = alloca %struct.section_table*, align 8
  %5 = alloca %struct.section_addr_info*, align 8
  %6 = alloca %struct.section_table*, align 8
  %7 = alloca i32, align 4
  store %struct.section_table* %0, %struct.section_table** %3, align 8
  store %struct.section_table* %1, %struct.section_table** %4, align 8
  %8 = load %struct.section_table*, %struct.section_table** %4, align 8
  %9 = load %struct.section_table*, %struct.section_table** %3, align 8
  %10 = ptrtoint %struct.section_table* %8 to i64
  %11 = ptrtoint %struct.section_table* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 16
  %14 = trunc i64 %13 to i32
  %15 = call %struct.section_addr_info* @alloc_section_addr_info(i32 %14)
  store %struct.section_addr_info* %15, %struct.section_addr_info** %5, align 8
  %16 = load %struct.section_table*, %struct.section_table** %3, align 8
  store %struct.section_table* %16, %struct.section_table** %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %85, %2
  %18 = load %struct.section_table*, %struct.section_table** %6, align 8
  %19 = load %struct.section_table*, %struct.section_table** %4, align 8
  %20 = icmp ne %struct.section_table* %18, %19
  br i1 %20, label %21, label %88

21:                                               ; preds = %17
  %22 = load %struct.section_table*, %struct.section_table** %6, align 8
  %23 = getelementptr inbounds %struct.section_table, %struct.section_table* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.section_table*, %struct.section_table** %6, align 8
  %26 = getelementptr inbounds %struct.section_table, %struct.section_table* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call i32 @bfd_get_section_flags(i32 %24, %struct.TYPE_5__* %27)
  %29 = load i32, i32* @SEC_ALLOC, align 4
  %30 = load i32, i32* @SEC_LOAD, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %84

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.section_table*, %struct.section_table** %4, align 8
  %38 = load %struct.section_table*, %struct.section_table** %3, align 8
  %39 = ptrtoint %struct.section_table* %37 to i64
  %40 = ptrtoint %struct.section_table* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 16
  %43 = icmp slt i64 %36, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %34
  %45 = load %struct.section_table*, %struct.section_table** %6, align 8
  %46 = getelementptr inbounds %struct.section_table, %struct.section_table* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.section_addr_info*, %struct.section_addr_info** %5, align 8
  %49 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %47, i32* %54, align 4
  %55 = load %struct.section_table*, %struct.section_table** %6, align 8
  %56 = getelementptr inbounds %struct.section_table, %struct.section_table* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.section_table*, %struct.section_table** %6, align 8
  %59 = getelementptr inbounds %struct.section_table, %struct.section_table* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = call i32 @bfd_section_name(i32 %57, %struct.TYPE_5__* %60)
  %62 = call i32 @xstrdup(i32 %61)
  %63 = load %struct.section_addr_info*, %struct.section_addr_info** %5, align 8
  %64 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %62, i32* %69, align 4
  %70 = load %struct.section_table*, %struct.section_table** %6, align 8
  %71 = getelementptr inbounds %struct.section_table, %struct.section_table* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.section_addr_info*, %struct.section_addr_info** %5, align 8
  %76 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %44, %34, %21
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.section_table*, %struct.section_table** %6, align 8
  %87 = getelementptr inbounds %struct.section_table, %struct.section_table* %86, i32 1
  store %struct.section_table* %87, %struct.section_table** %6, align 8
  br label %17

88:                                               ; preds = %17
  %89 = load %struct.section_addr_info*, %struct.section_addr_info** %5, align 8
  ret %struct.section_addr_info* %89
}

declare dso_local %struct.section_addr_info* @alloc_section_addr_info(i32) #1

declare dso_local i32 @bfd_get_section_flags(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @bfd_section_name(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
