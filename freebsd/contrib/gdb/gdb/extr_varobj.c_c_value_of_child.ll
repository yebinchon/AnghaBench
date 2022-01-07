; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_value_of_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_value_of_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.varobj = type { %struct.value* }
%struct.type = type { i32 }

@builtin_type_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vstructure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.varobj*, i32)* @c_value_of_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @c_value_of_child(%struct.varobj* %0, i32 %1) #0 {
  %3 = alloca %struct.varobj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca i8*, align 8
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.varobj*, %struct.varobj** %3, align 8
  %12 = call %struct.type* @get_type(%struct.varobj* %11)
  store %struct.type* %12, %struct.type** %8, align 8
  %13 = load %struct.type*, %struct.type** %8, align 8
  %14 = call %struct.type* @get_target_type(%struct.type* %13)
  store %struct.type* %14, %struct.type** %9, align 8
  %15 = load %struct.varobj*, %struct.varobj** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @name_of_child(%struct.varobj* %15, i32 %16)
  store i8* %17, i8** %10, align 8
  %18 = load %struct.varobj*, %struct.varobj** %3, align 8
  %19 = getelementptr inbounds %struct.varobj, %struct.varobj* %18, i32 0, i32 0
  %20 = load %struct.value*, %struct.value** %19, align 8
  store %struct.value* %20, %struct.value** %6, align 8
  store %struct.value* null, %struct.value** %5, align 8
  %21 = load %struct.value*, %struct.value** %6, align 8
  %22 = icmp ne %struct.value* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %2
  %24 = load %struct.type*, %struct.type** %8, align 8
  %25 = call i32 @TYPE_CODE(%struct.type* %24)
  switch i32 %25, label %46 [
    i32 131, label %26
    i32 129, label %33
    i32 128, label %33
    i32 130, label %36
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* @builtin_type_int, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call %struct.value* @value_from_longest(i32 %27, i32 %28)
  store %struct.value* %29, %struct.value** %7, align 8
  %30 = load %struct.value*, %struct.value** %6, align 8
  %31 = load %struct.value*, %struct.value** %7, align 8
  %32 = call i32 @gdb_value_subscript(%struct.value* %30, %struct.value* %31, %struct.value** %5)
  br label %47

33:                                               ; preds = %23, %23
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @gdb_value_struct_elt(i32* null, %struct.value** %5, %struct.value** %6, i32* null, i8* %34, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %47

36:                                               ; preds = %23
  %37 = load %struct.type*, %struct.type** %9, align 8
  %38 = call i32 @TYPE_CODE(%struct.type* %37)
  switch i32 %38, label %42 [
    i32 129, label %39
    i32 128, label %39
  ]

39:                                               ; preds = %36, %36
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @gdb_value_struct_elt(i32* null, %struct.value** %5, %struct.value** %6, i32* null, i8* %40, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %45

42:                                               ; preds = %36
  %43 = load %struct.value*, %struct.value** %6, align 8
  %44 = call i32 @gdb_value_ind(%struct.value* %43, %struct.value** %5)
  br label %45

45:                                               ; preds = %42, %39
  br label %47

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46, %45, %33, %26
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.value*, %struct.value** %5, align 8
  %50 = icmp ne %struct.value* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.value*, %struct.value** %5, align 8
  %53 = call i32 @release_value(%struct.value* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @xfree(i8* %55)
  %57 = load %struct.value*, %struct.value** %5, align 8
  ret %struct.value* %57
}

declare dso_local %struct.type* @get_type(%struct.varobj*) #1

declare dso_local %struct.type* @get_target_type(%struct.type*) #1

declare dso_local i8* @name_of_child(%struct.varobj*, i32) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

declare dso_local i32 @gdb_value_subscript(%struct.value*, %struct.value*, %struct.value**) #1

declare dso_local i32 @gdb_value_struct_elt(i32*, %struct.value**, %struct.value**, i32*, i8*, i32*, i8*) #1

declare dso_local i32 @gdb_value_ind(%struct.value*, %struct.value**) #1

declare dso_local i32 @release_value(%struct.value*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
