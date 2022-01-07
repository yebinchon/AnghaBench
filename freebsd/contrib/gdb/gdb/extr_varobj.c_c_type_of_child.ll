; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_type_of_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_type_of_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.varobj = type { %struct.type* }

@.str = private unnamed_addr constant [51 x i8] c"Child of parent whose type does not allow children\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.varobj*, i32)* @c_type_of_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @c_type_of_child(%struct.varobj* %0, i32 %1) #0 {
  %3 = alloca %struct.varobj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca i8*, align 8
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.varobj*, %struct.varobj** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i8* @name_of_child(%struct.varobj* %7, i32 %8)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.varobj*, %struct.varobj** %3, align 8
  %11 = getelementptr inbounds %struct.varobj, %struct.varobj* %10, i32 0, i32 0
  %12 = load %struct.type*, %struct.type** %11, align 8
  %13 = call i32 @TYPE_CODE(%struct.type* %12)
  switch i32 %13, label %43 [
    i32 131, label %14
    i32 129, label %19
    i32 128, label %19
    i32 130, label %25
  ]

14:                                               ; preds = %2
  %15 = load %struct.varobj*, %struct.varobj** %3, align 8
  %16 = getelementptr inbounds %struct.varobj, %struct.varobj* %15, i32 0, i32 0
  %17 = load %struct.type*, %struct.type** %16, align 8
  %18 = call %struct.type* @get_target_type(%struct.type* %17)
  store %struct.type* %18, %struct.type** %5, align 8
  br label %45

19:                                               ; preds = %2, %2
  %20 = load %struct.varobj*, %struct.varobj** %3, align 8
  %21 = getelementptr inbounds %struct.varobj, %struct.varobj* %20, i32 0, i32 0
  %22 = load %struct.type*, %struct.type** %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.type* @lookup_struct_elt_type(%struct.type* %22, i8* %23, i32 0)
  store %struct.type* %24, %struct.type** %5, align 8
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.varobj*, %struct.varobj** %3, align 8
  %27 = getelementptr inbounds %struct.varobj, %struct.varobj* %26, i32 0, i32 0
  %28 = load %struct.type*, %struct.type** %27, align 8
  %29 = call %struct.type* @get_target_type(%struct.type* %28)
  %30 = call i32 @TYPE_CODE(%struct.type* %29)
  switch i32 %30, label %37 [
    i32 129, label %31
    i32 128, label %31
  ]

31:                                               ; preds = %25, %25
  %32 = load %struct.varobj*, %struct.varobj** %3, align 8
  %33 = getelementptr inbounds %struct.varobj, %struct.varobj* %32, i32 0, i32 0
  %34 = load %struct.type*, %struct.type** %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call %struct.type* @lookup_struct_elt_type(%struct.type* %34, i8* %35, i32 0)
  store %struct.type* %36, %struct.type** %5, align 8
  br label %42

37:                                               ; preds = %25
  %38 = load %struct.varobj*, %struct.varobj** %3, align 8
  %39 = getelementptr inbounds %struct.varobj, %struct.varobj* %38, i32 0, i32 0
  %40 = load %struct.type*, %struct.type** %39, align 8
  %41 = call %struct.type* @get_target_type(%struct.type* %40)
  store %struct.type* %41, %struct.type** %5, align 8
  br label %42

42:                                               ; preds = %37, %31
  br label %45

43:                                               ; preds = %2
  %44 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store %struct.type* null, %struct.type** %5, align 8
  br label %45

45:                                               ; preds = %43, %42, %19, %14
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @xfree(i8* %46)
  %48 = load %struct.type*, %struct.type** %5, align 8
  ret %struct.type* %48
}

declare dso_local i8* @name_of_child(%struct.varobj*, i32) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @get_target_type(%struct.type*) #1

declare dso_local %struct.type* @lookup_struct_elt_type(%struct.type*, i8*, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
