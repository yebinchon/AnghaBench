; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_target_resize_to_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_target_resize_to_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { %struct.section_table*, %struct.section_table* }
%struct.section_table = type { i32 }
%struct.TYPE_2__ = type { %struct.section_table*, %struct.section_table* }

@target_structs = common dso_local global %struct.target_ops** null, align 8
@target_struct_size = common dso_local global i32 0, align 4
@current_target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_resize_to_sections(%struct.target_ops* %0, i32 %1) #0 {
  %3 = alloca %struct.target_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.target_ops**, align 8
  %6 = alloca %struct.section_table*, align 8
  %7 = alloca i32, align 4
  store %struct.target_ops* %0, %struct.target_ops** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %9 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %8, i32 0, i32 1
  %10 = load %struct.section_table*, %struct.section_table** %9, align 8
  store %struct.section_table* %10, %struct.section_table** %6, align 8
  %11 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %12 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %11, i32 0, i32 1
  %13 = load %struct.section_table*, %struct.section_table** %12, align 8
  %14 = icmp ne %struct.section_table* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %17 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %16, i32 0, i32 0
  %18 = load %struct.section_table*, %struct.section_table** %17, align 8
  %19 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %20 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %19, i32 0, i32 1
  %21 = load %struct.section_table*, %struct.section_table** %20, align 8
  %22 = ptrtoint %struct.section_table* %18 to i64
  %23 = ptrtoint %struct.section_table* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %28 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %27, i32 0, i32 1
  %29 = load %struct.section_table*, %struct.section_table** %28, align 8
  %30 = bitcast %struct.section_table* %29 to i8*
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i64 @xrealloc(i8* %30, i32 %36)
  %38 = inttoptr i64 %37 to %struct.section_table*
  %39 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %40 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %39, i32 0, i32 1
  store %struct.section_table* %38, %struct.section_table** %40, align 8
  br label %50

41:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i64 @xmalloc(i32 %45)
  %47 = inttoptr i64 %46 to %struct.section_table*
  %48 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %49 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %48, i32 0, i32 1
  store %struct.section_table* %47, %struct.section_table** %49, align 8
  br label %50

50:                                               ; preds = %41, %15
  %51 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %52 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %51, i32 0, i32 1
  %53 = load %struct.section_table*, %struct.section_table** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.section_table, %struct.section_table* %53, i64 %57
  %59 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %60 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %59, i32 0, i32 0
  store %struct.section_table* %58, %struct.section_table** %60, align 8
  %61 = load %struct.section_table*, %struct.section_table** %6, align 8
  %62 = icmp ne %struct.section_table* %61, null
  br i1 %62, label %63, label %108

63:                                               ; preds = %50
  %64 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  store %struct.target_ops** %64, %struct.target_ops*** %5, align 8
  br label %65

65:                                               ; preds = %93, %63
  %66 = load %struct.target_ops**, %struct.target_ops*** %5, align 8
  %67 = load %struct.target_ops**, %struct.target_ops*** @target_structs, align 8
  %68 = load i32, i32* @target_struct_size, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.target_ops*, %struct.target_ops** %67, i64 %69
  %71 = icmp ult %struct.target_ops** %66, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %65
  %73 = load %struct.target_ops**, %struct.target_ops*** %5, align 8
  %74 = load %struct.target_ops*, %struct.target_ops** %73, align 8
  %75 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %74, i32 0, i32 1
  %76 = load %struct.section_table*, %struct.section_table** %75, align 8
  %77 = load %struct.section_table*, %struct.section_table** %6, align 8
  %78 = icmp eq %struct.section_table* %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %72
  %80 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %81 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %80, i32 0, i32 1
  %82 = load %struct.section_table*, %struct.section_table** %81, align 8
  %83 = load %struct.target_ops**, %struct.target_ops*** %5, align 8
  %84 = load %struct.target_ops*, %struct.target_ops** %83, align 8
  %85 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %84, i32 0, i32 1
  store %struct.section_table* %82, %struct.section_table** %85, align 8
  %86 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %87 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %86, i32 0, i32 0
  %88 = load %struct.section_table*, %struct.section_table** %87, align 8
  %89 = load %struct.target_ops**, %struct.target_ops*** %5, align 8
  %90 = load %struct.target_ops*, %struct.target_ops** %89, align 8
  %91 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %90, i32 0, i32 0
  store %struct.section_table* %88, %struct.section_table** %91, align 8
  br label %92

92:                                               ; preds = %79, %72
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.target_ops**, %struct.target_ops*** %5, align 8
  %95 = getelementptr inbounds %struct.target_ops*, %struct.target_ops** %94, i32 1
  store %struct.target_ops** %95, %struct.target_ops*** %5, align 8
  br label %65

96:                                               ; preds = %65
  %97 = load %struct.section_table*, %struct.section_table** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_target, i32 0, i32 1), align 8
  %98 = load %struct.section_table*, %struct.section_table** %6, align 8
  %99 = icmp eq %struct.section_table* %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %102 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %101, i32 0, i32 1
  %103 = load %struct.section_table*, %struct.section_table** %102, align 8
  store %struct.section_table* %103, %struct.section_table** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_target, i32 0, i32 1), align 8
  %104 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %105 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %104, i32 0, i32 0
  %106 = load %struct.section_table*, %struct.section_table** %105, align 8
  store %struct.section_table* %106, %struct.section_table** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_target, i32 0, i32 0), align 8
  br label %107

107:                                              ; preds = %100, %96
  br label %108

108:                                              ; preds = %107, %50
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
