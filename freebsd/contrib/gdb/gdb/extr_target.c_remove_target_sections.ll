; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_remove_target_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_remove_target_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { %struct.section_table*, %struct.section_table* }
%struct.section_table = type { i32* }

@target_structs = common dso_local global %struct.target_ops** null, align 8
@target_struct_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_target_sections(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.target_ops**, align 8
  %4 = alloca %struct.section_table*, align 8
  %5 = alloca %struct.section_table*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  store %struct.target_ops** %6, %struct.target_ops*** %3, align 8
  br label %7

7:                                                ; preds = %68, %1
  %8 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %9 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  %10 = load i32, i32* @target_struct_size, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.target_ops*, %struct.target_ops** %9, i64 %11
  %13 = icmp ult %struct.target_ops** %8, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %7
  %15 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %16 = load %struct.target_ops*, %struct.target_ops** %15, align 8
  %17 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %16, i32 0, i32 1
  %18 = load %struct.section_table*, %struct.section_table** %17, align 8
  store %struct.section_table* %18, %struct.section_table** %5, align 8
  %19 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %20 = load %struct.target_ops*, %struct.target_ops** %19, align 8
  %21 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %20, i32 0, i32 1
  %22 = load %struct.section_table*, %struct.section_table** %21, align 8
  store %struct.section_table* %22, %struct.section_table** %4, align 8
  br label %23

23:                                               ; preds = %49, %14
  %24 = load %struct.section_table*, %struct.section_table** %4, align 8
  %25 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %26 = load %struct.target_ops*, %struct.target_ops** %25, align 8
  %27 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %26, i32 0, i32 0
  %28 = load %struct.section_table*, %struct.section_table** %27, align 8
  %29 = icmp ult %struct.section_table* %24, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %23
  %31 = load %struct.section_table*, %struct.section_table** %4, align 8
  %32 = getelementptr inbounds %struct.section_table, %struct.section_table* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = icmp ne i32* %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.section_table*, %struct.section_table** %5, align 8
  %38 = load %struct.section_table*, %struct.section_table** %4, align 8
  %39 = icmp ult %struct.section_table* %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.section_table*, %struct.section_table** %5, align 8
  %42 = load %struct.section_table*, %struct.section_table** %4, align 8
  %43 = bitcast %struct.section_table* %41 to i8*
  %44 = bitcast %struct.section_table* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 8, i1 false)
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.section_table*, %struct.section_table** %5, align 8
  %47 = getelementptr inbounds %struct.section_table, %struct.section_table* %46, i32 1
  store %struct.section_table* %47, %struct.section_table** %5, align 8
  br label %48

48:                                               ; preds = %45, %30
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.section_table*, %struct.section_table** %4, align 8
  %51 = getelementptr inbounds %struct.section_table, %struct.section_table* %50, i32 1
  store %struct.section_table* %51, %struct.section_table** %4, align 8
  br label %23

52:                                               ; preds = %23
  %53 = load %struct.section_table*, %struct.section_table** %5, align 8
  %54 = load %struct.section_table*, %struct.section_table** %4, align 8
  %55 = icmp ult %struct.section_table* %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %58 = load %struct.target_ops*, %struct.target_ops** %57, align 8
  %59 = load %struct.section_table*, %struct.section_table** %5, align 8
  %60 = load %struct.section_table*, %struct.section_table** %4, align 8
  %61 = ptrtoint %struct.section_table* %59 to i64
  %62 = ptrtoint %struct.section_table* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @target_resize_to_sections(%struct.target_ops* %58, i32 %65)
  br label %67

67:                                               ; preds = %56, %52
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.target_ops**, %struct.target_ops*** %3, align 8
  %70 = getelementptr inbounds %struct.target_ops*, %struct.target_ops** %69, i32 1
  store %struct.target_ops** %70, %struct.target_ops*** %3, align 8
  br label %7

71:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @target_resize_to_sections(%struct.target_ops*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
