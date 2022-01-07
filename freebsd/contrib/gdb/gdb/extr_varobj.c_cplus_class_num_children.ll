; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cplus_class_num_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cplus_class_num_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@v_public = common dso_local global i64 0, align 8
@v_private = common dso_local global i64 0, align 8
@v_protected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i32*)* @cplus_class_num_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cplus_class_num_children(%struct.type* %0, i32* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i64, i64* @v_public, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i64, i64* @v_private, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* @v_protected, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 0, i32* %14, align 4
  %15 = load %struct.type*, %struct.type** %3, align 8
  %16 = call i32 @TYPE_N_BASECLASSES(%struct.type* %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %63, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.type*, %struct.type** %3, align 8
  %20 = call i32 @TYPE_NFIELDS(%struct.type* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %17
  %23 = load %struct.type*, %struct.type** %3, align 8
  %24 = call %struct.type* @TYPE_VPTR_BASETYPE(%struct.type* %23)
  %25 = load %struct.type*, %struct.type** %3, align 8
  %26 = icmp eq %struct.type* %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.type*, %struct.type** %3, align 8
  %29 = call i32 @TYPE_VPTR_FIELDNO(%struct.type* %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %63

33:                                               ; preds = %27, %22
  %34 = load %struct.type*, %struct.type** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @TYPE_FIELD_PROTECTED(%struct.type* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load i64, i64* @v_protected, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %62

44:                                               ; preds = %33
  %45 = load %struct.type*, %struct.type** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @TYPE_FIELD_PRIVATE(%struct.type* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* @v_private, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %61

55:                                               ; preds = %44
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* @v_public, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %38
  br label %63

63:                                               ; preds = %62, %32
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %17

66:                                               ; preds = %17
  ret void
}

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @TYPE_VPTR_BASETYPE(%struct.type*) #1

declare dso_local i32 @TYPE_VPTR_FIELDNO(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_PROTECTED(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_PRIVATE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
