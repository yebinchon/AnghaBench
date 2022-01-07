; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_set_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32, %struct.value*, i32 }
%struct.value = type { i32 }
%struct.expression = type { i32 }

@input_radix = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @varobj_set_value(%struct.varobj* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.varobj*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.expression*, align 8
  %10 = alloca %struct.value*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.varobj* %0, %struct.varobj** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @input_radix, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.varobj*, %struct.varobj** %4, align 8
  %16 = getelementptr inbounds %struct.varobj, %struct.varobj* %15, i32 0, i32 1
  %17 = load %struct.value*, %struct.value** %16, align 8
  %18 = icmp ne %struct.value* %17, null
  br i1 %18, label %19, label %69

19:                                               ; preds = %2
  %20 = load %struct.varobj*, %struct.varobj** %4, align 8
  %21 = call i64 @variable_editable(%struct.varobj* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  %24 = load %struct.varobj*, %struct.varobj** %4, align 8
  %25 = getelementptr inbounds %struct.varobj, %struct.varobj* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %69, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  store i8* %29, i8** %12, align 8
  store i32 10, i32* @input_radix, align 4
  %30 = call i32 @gdb_parse_exp_1(i8** %12, i32 0, i32 0, %struct.expression** %9)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %70

33:                                               ; preds = %28
  %34 = load %struct.expression*, %struct.expression** %9, align 8
  %35 = call i32 @gdb_evaluate_expression(%struct.expression* %34, %struct.value** %10)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load %struct.expression*, %struct.expression** %9, align 8
  %39 = call i32 @xfree(%struct.expression* %38)
  store i32 0, i32* %3, align 4
  br label %70

40:                                               ; preds = %33
  %41 = load %struct.varobj*, %struct.varobj** %4, align 8
  %42 = getelementptr inbounds %struct.varobj, %struct.varobj* %41, i32 0, i32 1
  %43 = load %struct.value*, %struct.value** %42, align 8
  %44 = load %struct.value*, %struct.value** %10, align 8
  %45 = call i32 @my_value_equal(%struct.value* %43, %struct.value* %44, i32* %7)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load %struct.varobj*, %struct.varobj** %4, align 8
  %49 = getelementptr inbounds %struct.varobj, %struct.varobj* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.varobj*, %struct.varobj** %4, align 8
  %52 = getelementptr inbounds %struct.varobj, %struct.varobj* %51, i32 0, i32 1
  %53 = load %struct.value*, %struct.value** %52, align 8
  %54 = load %struct.value*, %struct.value** %10, align 8
  %55 = call i32 @gdb_value_assign(%struct.value* %53, %struct.value* %54, %struct.value** %6)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %70

58:                                               ; preds = %50
  %59 = load %struct.varobj*, %struct.varobj** %4, align 8
  %60 = getelementptr inbounds %struct.varobj, %struct.varobj* %59, i32 0, i32 1
  %61 = load %struct.value*, %struct.value** %60, align 8
  %62 = call i32 @value_free(%struct.value* %61)
  %63 = load %struct.value*, %struct.value** %6, align 8
  %64 = call i32 @release_value(%struct.value* %63)
  %65 = load %struct.value*, %struct.value** %6, align 8
  %66 = load %struct.varobj*, %struct.varobj** %4, align 8
  %67 = getelementptr inbounds %struct.varobj, %struct.varobj* %66, i32 0, i32 1
  store %struct.value* %65, %struct.value** %67, align 8
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* @input_radix, align 4
  store i32 1, i32* %3, align 4
  br label %70

69:                                               ; preds = %23, %19, %2
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %58, %57, %37, %32
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @variable_editable(%struct.varobj*) #1

declare dso_local i32 @gdb_parse_exp_1(i8**, i32, i32, %struct.expression**) #1

declare dso_local i32 @gdb_evaluate_expression(%struct.expression*, %struct.value**) #1

declare dso_local i32 @xfree(%struct.expression*) #1

declare dso_local i32 @my_value_equal(%struct.value*, %struct.value*, i32*) #1

declare dso_local i32 @gdb_value_assign(%struct.value*, %struct.value*, %struct.value**) #1

declare dso_local i32 @value_free(%struct.value*) #1

declare dso_local i32 @release_value(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
