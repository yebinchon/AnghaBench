; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_on_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_s390-tdep.c_s390_on_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prologue_value = type { i32 }
%struct.s390_prologue_data = type { i32, i32, %struct.prologue_value, %struct.prologue_value*, %struct.prologue_value* }

@S390_SP_REGNUM = common dso_local global i64 0, align 8
@S390_R0_REGNUM = common dso_local global i64 0, align 8
@pv_definite_yes = common dso_local global i32 0, align 4
@pv_maybe = common dso_local global i32 0, align 4
@pv_definite_no = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prologue_value*, i32, %struct.s390_prologue_data*, %struct.prologue_value**)* @s390_on_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_on_stack(%struct.prologue_value* %0, i32 %1, %struct.s390_prologue_data* %2, %struct.prologue_value** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.prologue_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s390_prologue_data*, align 8
  %9 = alloca %struct.prologue_value**, align 8
  %10 = alloca %struct.prologue_value, align 4
  %11 = alloca %struct.prologue_value, align 4
  %12 = alloca %struct.prologue_value, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.prologue_value* %0, %struct.prologue_value** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.s390_prologue_data* %2, %struct.s390_prologue_data** %8, align 8
  store %struct.prologue_value** %3, %struct.prologue_value*** %9, align 8
  %15 = load i64, i64* @S390_SP_REGNUM, align 8
  %16 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %17 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 2, %18
  %20 = call i32 @pv_set_to_register(%struct.prologue_value* %10, i64 %15, i32 %19)
  %21 = load i64, i64* @S390_SP_REGNUM, align 8
  %22 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %23 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 16, %24
  %26 = call i32 @pv_set_to_register(%struct.prologue_value* %11, i64 %21, i32 %25)
  %27 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %28 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %27, i32 0, i32 4
  %29 = load %struct.prologue_value*, %struct.prologue_value** %28, align 8
  %30 = load i64, i64* @S390_SP_REGNUM, align 8
  %31 = load i64, i64* @S390_R0_REGNUM, align 8
  %32 = sub i64 %30, %31
  %33 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %29, i64 %32
  %34 = bitcast %struct.prologue_value* %12 to i8*
  %35 = bitcast %struct.prologue_value* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load %struct.prologue_value*, %struct.prologue_value** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %39 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pv_is_array_ref(%struct.prologue_value* %36, i32 %37, %struct.prologue_value* %10, i32 14, i32 %40, i32* %13)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @pv_definite_yes, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %4
  %46 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %47 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %46, i32 0, i32 3
  %48 = load %struct.prologue_value*, %struct.prologue_value** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %48, i64 %50
  %52 = load %struct.prologue_value**, %struct.prologue_value*** %9, align 8
  store %struct.prologue_value* %51, %struct.prologue_value** %52, align 8
  %53 = load i32, i32* @pv_definite_yes, align 4
  store i32 %53, i32* %5, align 4
  br label %109

54:                                               ; preds = %4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @pv_maybe, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @pv_maybe, align 4
  store i32 %59, i32* %5, align 4
  br label %109

60:                                               ; preds = %54
  %61 = load %struct.prologue_value*, %struct.prologue_value** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %64 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pv_is_array_ref(%struct.prologue_value* %61, i32 %62, %struct.prologue_value* %11, i32 4, i32 %65, i32* %13)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @pv_definite_yes, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %72 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %71, i32 0, i32 3
  %73 = load %struct.prologue_value*, %struct.prologue_value** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 14, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.prologue_value, %struct.prologue_value* %73, i64 %76
  %78 = load %struct.prologue_value**, %struct.prologue_value*** %9, align 8
  store %struct.prologue_value* %77, %struct.prologue_value** %78, align 8
  %79 = load i32, i32* @pv_definite_yes, align 4
  store i32 %79, i32* %5, align 4
  br label %109

80:                                               ; preds = %60
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @pv_maybe, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @pv_maybe, align 4
  store i32 %85, i32* %5, align 4
  br label %109

86:                                               ; preds = %80
  %87 = load %struct.prologue_value*, %struct.prologue_value** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %90 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pv_is_array_ref(%struct.prologue_value* %87, i32 %88, %struct.prologue_value* %12, i32 1, i32 %91, i32* %13)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @pv_definite_yes, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = load %struct.s390_prologue_data*, %struct.s390_prologue_data** %8, align 8
  %98 = getelementptr inbounds %struct.s390_prologue_data, %struct.s390_prologue_data* %97, i32 0, i32 2
  %99 = load %struct.prologue_value**, %struct.prologue_value*** %9, align 8
  store %struct.prologue_value* %98, %struct.prologue_value** %99, align 8
  %100 = load i32, i32* @pv_definite_yes, align 4
  store i32 %100, i32* %5, align 4
  br label %109

101:                                              ; preds = %86
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @pv_maybe, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @pv_maybe, align 4
  store i32 %106, i32* %5, align 4
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @pv_definite_no, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %105, %96, %84, %70, %58, %45
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @pv_set_to_register(%struct.prologue_value*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pv_is_array_ref(%struct.prologue_value*, i32, %struct.prologue_value*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
