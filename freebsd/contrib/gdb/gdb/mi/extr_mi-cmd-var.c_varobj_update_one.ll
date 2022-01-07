; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_varobj_update_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_varobj_update_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }
%struct.cleanup = type { i32 }

@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"in_scope\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"new_type\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"new_num_children\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"type_changed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.varobj*)* @varobj_update_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @varobj_update_one(%struct.varobj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.varobj*, align 8
  %4 = alloca %struct.varobj**, align 8
  %5 = alloca %struct.varobj**, align 8
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca i32, align 4
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  store %struct.cleanup* null, %struct.cleanup** %6, align 8
  %8 = call i32 @varobj_update(%struct.varobj** %3, %struct.varobj*** %4)
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %106

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32, i32* @uiout, align 4
  %17 = call i32 @mi_version(i32 %16)
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @uiout, align 4
  %21 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %20, i32* null)
  store %struct.cleanup* %21, %struct.cleanup** %6, align 8
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* @uiout, align 4
  %24 = load %struct.varobj*, %struct.varobj** %3, align 8
  %25 = call i8* @varobj_get_objname(%struct.varobj* %24)
  %26 = call i32 @ui_out_field_string(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @uiout, align 4
  %28 = call i32 @ui_out_field_string(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @uiout, align 4
  %30 = call i32 @mi_version(i32 %29)
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %34 = call i32 @do_cleanups(%struct.cleanup* %33)
  br label %35

35:                                               ; preds = %32, %22
  store i32 -1, i32* %2, align 4
  br label %106

36:                                               ; preds = %12
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -2
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load i32, i32* @uiout, align 4
  %41 = call i32 @mi_version(i32 %40)
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @uiout, align 4
  %45 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %44, i32* null)
  store %struct.cleanup* %45, %struct.cleanup** %6, align 8
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* @uiout, align 4
  %48 = load %struct.varobj*, %struct.varobj** %3, align 8
  %49 = call i8* @varobj_get_objname(%struct.varobj* %48)
  %50 = call i32 @ui_out_field_string(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @uiout, align 4
  %52 = call i32 @ui_out_field_string(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @uiout, align 4
  %54 = load %struct.varobj*, %struct.varobj** %3, align 8
  %55 = call i8* @varobj_get_type(%struct.varobj* %54)
  %56 = call i32 @ui_out_field_string(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @uiout, align 4
  %58 = load %struct.varobj*, %struct.varobj** %3, align 8
  %59 = call i32 @varobj_get_num_children(%struct.varobj* %58)
  %60 = call i32 @ui_out_field_int(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @uiout, align 4
  %62 = call i32 @mi_version(i32 %61)
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %46
  %65 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %66 = call i32 @do_cleanups(%struct.cleanup* %65)
  br label %67

67:                                               ; preds = %64, %46
  br label %103

68:                                               ; preds = %36
  %69 = load %struct.varobj**, %struct.varobj*** %4, align 8
  store %struct.varobj** %69, %struct.varobj*** %5, align 8
  br label %70

70:                                               ; preds = %97, %68
  %71 = load %struct.varobj**, %struct.varobj*** %5, align 8
  %72 = load %struct.varobj*, %struct.varobj** %71, align 8
  %73 = icmp ne %struct.varobj* %72, null
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load i32, i32* @uiout, align 4
  %76 = call i32 @mi_version(i32 %75)
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @uiout, align 4
  %80 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %79, i32* null)
  store %struct.cleanup* %80, %struct.cleanup** %6, align 8
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* @uiout, align 4
  %83 = load %struct.varobj**, %struct.varobj*** %5, align 8
  %84 = load %struct.varobj*, %struct.varobj** %83, align 8
  %85 = call i8* @varobj_get_objname(%struct.varobj* %84)
  %86 = call i32 @ui_out_field_string(i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @uiout, align 4
  %88 = call i32 @ui_out_field_string(i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @uiout, align 4
  %90 = call i32 @ui_out_field_string(i32 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @uiout, align 4
  %92 = call i32 @mi_version(i32 %91)
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %81
  %95 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %96 = call i32 @do_cleanups(%struct.cleanup* %95)
  br label %97

97:                                               ; preds = %94, %81
  %98 = load %struct.varobj**, %struct.varobj*** %5, align 8
  %99 = getelementptr inbounds %struct.varobj*, %struct.varobj** %98, i32 1
  store %struct.varobj** %99, %struct.varobj*** %5, align 8
  br label %70

100:                                              ; preds = %70
  %101 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %102 = call i32 @xfree(%struct.varobj** %101)
  store i32 1, i32* %2, align 4
  br label %106

103:                                              ; preds = %67
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  store i32 1, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %100, %35, %11
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @varobj_update(%struct.varobj**, %struct.varobj***) #1

declare dso_local i32 @mi_version(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i32*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i8* @varobj_get_objname(%struct.varobj*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i8* @varobj_get_type(%struct.varobj*) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @varobj_get_num_children(%struct.varobj*) #1

declare dso_local i32 @xfree(%struct.varobj**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
