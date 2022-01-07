; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_value_of_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_value_of_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.varobj = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32*, %struct.varobj* }
%struct.frame_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.varobj**)* @c_value_of_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @c_value_of_root(%struct.varobj** %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.varobj**, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.varobj*, align 8
  %6 = alloca %struct.frame_info*, align 8
  %7 = alloca i32, align 4
  store %struct.varobj** %0, %struct.varobj*** %3, align 8
  %8 = load %struct.varobj**, %struct.varobj*** %3, align 8
  %9 = load %struct.varobj*, %struct.varobj** %8, align 8
  store %struct.varobj* %9, %struct.varobj** %5, align 8
  %10 = load %struct.varobj*, %struct.varobj** %5, align 8
  %11 = getelementptr inbounds %struct.varobj, %struct.varobj* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load %struct.varobj*, %struct.varobj** %13, align 8
  %15 = load %struct.varobj*, %struct.varobj** %5, align 8
  %16 = icmp ne %struct.varobj* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.value* null, %struct.value** %2, align 8
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.varobj*, %struct.varobj** %5, align 8
  %20 = getelementptr inbounds %struct.varobj, %struct.varobj* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %43

26:                                               ; preds = %18
  %27 = call i32 (...) @reinit_frame_cache()
  %28 = load %struct.varobj*, %struct.varobj** %5, align 8
  %29 = getelementptr inbounds %struct.varobj, %struct.varobj* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.frame_info* @frame_find_by_id(i32 %32)
  store %struct.frame_info* %33, %struct.frame_info** %6, align 8
  %34 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %35 = icmp ne %struct.frame_info* %34, null
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %41 = call i32 @select_frame(%struct.frame_info* %40)
  br label %42

42:                                               ; preds = %39, %26
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %43
  %47 = load %struct.varobj*, %struct.varobj** %5, align 8
  %48 = getelementptr inbounds %struct.varobj, %struct.varobj* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @gdb_evaluate_expression(i32 %51, %struct.value** %4)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load %struct.value*, %struct.value** %4, align 8
  %56 = call i64 @VALUE_LAZY(%struct.value* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.value*, %struct.value** %4, align 8
  %60 = call i32 @gdb_value_fetch_lazy(%struct.value* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load %struct.varobj*, %struct.varobj** %5, align 8
  %64 = getelementptr inbounds %struct.varobj, %struct.varobj* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %68

65:                                               ; preds = %58
  %66 = load %struct.varobj*, %struct.varobj** %5, align 8
  %67 = getelementptr inbounds %struct.varobj, %struct.varobj* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %54
  br label %73

70:                                               ; preds = %46
  %71 = load %struct.varobj*, %struct.varobj** %5, align 8
  %72 = getelementptr inbounds %struct.varobj, %struct.varobj* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %69
  %74 = load %struct.value*, %struct.value** %4, align 8
  %75 = call i32 @release_value(%struct.value* %74)
  %76 = load %struct.value*, %struct.value** %4, align 8
  store %struct.value* %76, %struct.value** %2, align 8
  br label %78

77:                                               ; preds = %43
  store %struct.value* null, %struct.value** %2, align 8
  br label %78

78:                                               ; preds = %77, %73, %17
  %79 = load %struct.value*, %struct.value** %2, align 8
  ret %struct.value* %79
}

declare dso_local i32 @reinit_frame_cache(...) #1

declare dso_local %struct.frame_info* @frame_find_by_id(i32) #1

declare dso_local i32 @select_frame(%struct.frame_info*) #1

declare dso_local i64 @gdb_evaluate_expression(i32, %struct.value**) #1

declare dso_local i64 @VALUE_LAZY(%struct.value*) #1

declare dso_local i32 @gdb_value_fetch_lazy(%struct.value*) #1

declare dso_local i32 @release_value(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
