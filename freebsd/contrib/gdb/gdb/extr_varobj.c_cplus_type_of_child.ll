; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cplus_type_of_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cplus_type_of_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.varobj = type { %struct.varobj* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.varobj*, i32)* @cplus_type_of_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @cplus_type_of_child(%struct.varobj* %0, i32 %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.varobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca i8*, align 8
  store %struct.varobj* %0, %struct.varobj** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.varobj*, %struct.varobj** %4, align 8
  %10 = call i64 @CPLUS_FAKE_CHILD(%struct.varobj* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.varobj*, %struct.varobj** %4, align 8
  %14 = getelementptr inbounds %struct.varobj, %struct.varobj* %13, i32 0, i32 0
  %15 = load %struct.varobj*, %struct.varobj** %14, align 8
  %16 = call %struct.type* @get_type_deref(%struct.varobj* %15)
  store %struct.type* %16, %struct.type** %7, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.varobj*, %struct.varobj** %4, align 8
  %19 = call %struct.type* @get_type_deref(%struct.varobj* %18)
  store %struct.type* %19, %struct.type** %7, align 8
  br label %20

20:                                               ; preds = %17, %12
  store %struct.type* null, %struct.type** %6, align 8
  %21 = load %struct.type*, %struct.type** %7, align 8
  %22 = call i32 @TYPE_CODE(%struct.type* %21)
  switch i32 %22, label %48 [
    i32 129, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = load %struct.varobj*, %struct.varobj** %4, align 8
  %25 = call i64 @CPLUS_FAKE_CHILD(%struct.varobj* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.varobj*, %struct.varobj** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @cplus_name_of_child(%struct.varobj* %28, i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load %struct.type*, %struct.type** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call %struct.type* @lookup_struct_elt_type(%struct.type* %31, i8* %32, i32 0)
  store %struct.type* %33, %struct.type** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @xfree(i8* %34)
  br label %47

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.type*, %struct.type** %7, align 8
  %39 = call i32 @TYPE_N_BASECLASSES(%struct.type* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.type*, %struct.type** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %42, i32 %43)
  store %struct.type* %44, %struct.type** %6, align 8
  br label %46

45:                                               ; preds = %36
  store %struct.type* null, %struct.type** %3, align 8
  br label %58

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %27
  br label %49

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48, %47
  %50 = load %struct.type*, %struct.type** %6, align 8
  %51 = icmp eq %struct.type* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.varobj*, %struct.varobj** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call %struct.type* @c_type_of_child(%struct.varobj* %53, i32 %54)
  store %struct.type* %55, %struct.type** %3, align 8
  br label %58

56:                                               ; preds = %49
  %57 = load %struct.type*, %struct.type** %6, align 8
  store %struct.type* %57, %struct.type** %3, align 8
  br label %58

58:                                               ; preds = %56, %52, %45
  %59 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %59
}

declare dso_local i64 @CPLUS_FAKE_CHILD(%struct.varobj*) #1

declare dso_local %struct.type* @get_type_deref(%struct.varobj*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i8* @cplus_name_of_child(%struct.varobj*, i32) #1

declare dso_local %struct.type* @lookup_struct_elt_type(%struct.type*, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local %struct.type* @c_type_of_child(%struct.varobj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
