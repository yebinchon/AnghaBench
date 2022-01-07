; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prologue_value = type { i64, i32 }
%struct.s390_prologue_data = type { i32 }
%struct.section_table = type { i32, i32 }

@pv_constant = common dso_local global i64 0, align 8
@current_target = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@pv_definite_yes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prologue_value*, i32, %struct.prologue_value*, %struct.s390_prologue_data*)* @s390_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_load(%struct.prologue_value* %0, i32 %1, %struct.prologue_value* %2, %struct.s390_prologue_data* %3) #0 {
  %5 = alloca %struct.prologue_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.prologue_value*, align 8
  %8 = alloca %struct.s390_prologue_data*, align 8
  %9 = alloca %struct.prologue_value*, align 8
  %10 = alloca %struct.section_table*, align 8
  store %struct.prologue_value* %0, %struct.prologue_value** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.prologue_value* %2, %struct.prologue_value** %7, align 8
  store %struct.s390_prologue_data* %3, %struct.s390_prologue_data** %8, align 8
  %11 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %12 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @pv_constant, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %4
  %17 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %18 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.section_table* @target_section_by_addr(i32* @current_target, i32 %19)
  store %struct.section_table* %20, %struct.section_table** %10, align 8
  %21 = load %struct.section_table*, %struct.section_table** %10, align 8
  %22 = icmp ne %struct.section_table* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %16
  %24 = load %struct.section_table*, %struct.section_table** %10, align 8
  %25 = getelementptr inbounds %struct.section_table, %struct.section_table* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.section_table*, %struct.section_table** %10, align 8
  %28 = getelementptr inbounds %struct.section_table, %struct.section_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bfd_get_section_flags(i32 %26, i32 %29)
  %31 = load i32, i32* @SEC_READONLY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load %struct.prologue_value*, %struct.prologue_value** %7, align 8
  %36 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %37 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @read_memory_integer(i32 %38, i32 %39)
  %41 = call i32 @pv_set_to_constant(%struct.prologue_value* %35, i32 %40)
  br label %58

42:                                               ; preds = %23, %16
  br label %43

43:                                               ; preds = %42, %4
  %44 = load %struct.prologue_value*, %struct.prologue_value** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %47 = call i64 @s390_on_stack(%struct.prologue_value* %44, i32 %45, %struct.s390_prologue_data* %46, %struct.prologue_value** %9)
  %48 = load i64, i64* @pv_definite_yes, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.prologue_value*, %struct.prologue_value** %7, align 8
  %52 = load %struct.prologue_value*, %struct.prologue_value** %9, align 8
  %53 = bitcast %struct.prologue_value* %51 to i8*
  %54 = bitcast %struct.prologue_value* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  br label %58

55:                                               ; preds = %43
  %56 = load %struct.prologue_value*, %struct.prologue_value** %7, align 8
  %57 = call i32 @pv_set_to_unknown(%struct.prologue_value* %56)
  br label %58

58:                                               ; preds = %55, %50, %34
  ret void
}

declare dso_local %struct.section_table* @target_section_by_addr(i32*, i32) #1

declare dso_local i32 @bfd_get_section_flags(i32, i32) #1

declare dso_local i32 @pv_set_to_constant(%struct.prologue_value*, i32) #1

declare dso_local i32 @read_memory_integer(i32, i32) #1

declare dso_local i64 @s390_on_stack(%struct.prologue_value*, i32, %struct.s390_prologue_data*, %struct.prologue_value**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pv_set_to_unknown(%struct.prologue_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
