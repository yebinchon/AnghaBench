; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_list_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_list_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"mi_cmd_var_list_children: Usage: [PRINT_VALUES] NAME\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Variable object not found\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"numchild\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"--no-values\00", align 1
@PRINT_NO_VALUES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"--all-values\00", align 1
@PRINT_ALL_VALUES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [81 x i8] c"Unknown value for PRINT_VALUES: must be: 0 or \22--no-values\22, 1 or \22--all-values\22\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"children\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_var_list_children(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.varobj*, align 8
  %9 = alloca %struct.varobj**, align 8
  %10 = alloca %struct.varobj**, align 8
  %11 = alloca %struct.cleanup*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call %struct.varobj* @varobj_get_handle(i8* %29)
  store %struct.varobj* %30, %struct.varobj** %8, align 8
  br label %36

31:                                               ; preds = %23
  %32 = load i8**, i8*** %6, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call %struct.varobj* @varobj_get_handle(i8* %34)
  store %struct.varobj* %35, %struct.varobj** %8, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.varobj*, %struct.varobj** %8, align 8
  %38 = icmp eq %struct.varobj* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = load %struct.varobj*, %struct.varobj** %8, align 8
  %43 = call i32 @varobj_list_children(%struct.varobj* %42, %struct.varobj*** %9)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @uiout, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @ui_out_field_int(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %81

49:                                               ; preds = %41
  %50 = load i8**, i8*** %6, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i8**, i8*** %6, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55, %49
  %62 = load i32, i32* @PRINT_NO_VALUES, align 4
  store i32 %62, i32* %14, align 4
  br label %80

63:                                               ; preds = %55
  %64 = load i8**, i8*** %6, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i8**, i8*** %6, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69, %63
  %76 = load i32, i32* @PRINT_ALL_VALUES, align 4
  store i32 %76, i32* %14, align 4
  br label %79

77:                                               ; preds = %69
  %78 = call i32 @error(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %75
  br label %80

80:                                               ; preds = %79, %61
  br label %83

81:                                               ; preds = %41
  %82 = load i32, i32* @PRINT_NO_VALUES, align 4
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = load i32, i32* %12, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %87, i32* %4, align 4
  br label %153

88:                                               ; preds = %83
  %89 = load i32, i32* @uiout, align 4
  %90 = call i32 @mi_version(i32 %89)
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* @uiout, align 4
  %94 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store %struct.cleanup* %94, %struct.cleanup** %11, align 8
  br label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @uiout, align 4
  %97 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store %struct.cleanup* %97, %struct.cleanup** %11, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.varobj**, %struct.varobj*** %9, align 8
  store %struct.varobj** %99, %struct.varobj*** %10, align 8
  br label %100

100:                                              ; preds = %142, %98
  %101 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %102 = load %struct.varobj*, %struct.varobj** %101, align 8
  %103 = icmp ne %struct.varobj* %102, null
  br i1 %103, label %104, label %147

104:                                              ; preds = %100
  %105 = load i32, i32* @uiout, align 4
  %106 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store %struct.cleanup* %106, %struct.cleanup** %15, align 8
  %107 = load i32, i32* @uiout, align 4
  %108 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %109 = load %struct.varobj*, %struct.varobj** %108, align 8
  %110 = call i8* @varobj_get_objname(%struct.varobj* %109)
  %111 = call i32 @ui_out_field_string(i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @uiout, align 4
  %113 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %114 = load %struct.varobj*, %struct.varobj** %113, align 8
  %115 = call i8* @varobj_get_expression(%struct.varobj* %114)
  %116 = call i32 @ui_out_field_string(i32 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* @uiout, align 4
  %118 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %119 = load %struct.varobj*, %struct.varobj** %118, align 8
  %120 = call i32 @varobj_get_num_children(%struct.varobj* %119)
  %121 = call i32 @ui_out_field_int(i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %104
  %125 = load i32, i32* @uiout, align 4
  %126 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %127 = load %struct.varobj*, %struct.varobj** %126, align 8
  %128 = call i8* @varobj_get_value(%struct.varobj* %127)
  %129 = call i32 @ui_out_field_string(i32 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %124, %104
  %131 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %132 = load %struct.varobj*, %struct.varobj** %131, align 8
  %133 = call i8* @varobj_get_type(%struct.varobj* %132)
  store i8* %133, i8** %13, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load i32, i32* @uiout, align 4
  %138 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %139 = load %struct.varobj*, %struct.varobj** %138, align 8
  %140 = call i8* @varobj_get_type(%struct.varobj* %139)
  %141 = call i32 @ui_out_field_string(i32 %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %136, %130
  %143 = load %struct.cleanup*, %struct.cleanup** %15, align 8
  %144 = call i32 @do_cleanups(%struct.cleanup* %143)
  %145 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %146 = getelementptr inbounds %struct.varobj*, %struct.varobj** %145, i32 1
  store %struct.varobj** %146, %struct.varobj*** %10, align 8
  br label %100

147:                                              ; preds = %100
  %148 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %149 = call i32 @do_cleanups(%struct.cleanup* %148)
  %150 = load %struct.varobj**, %struct.varobj*** %9, align 8
  %151 = call i32 @xfree(%struct.varobj** %150)
  %152 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %147, %86
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.varobj* @varobj_get_handle(i8*) #1

declare dso_local i32 @varobj_list_children(%struct.varobj*, %struct.varobj***) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mi_version(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32, i8*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i8* @varobj_get_objname(%struct.varobj*) #1

declare dso_local i8* @varobj_get_expression(%struct.varobj*) #1

declare dso_local i32 @varobj_get_num_children(%struct.varobj*) #1

declare dso_local i8* @varobj_get_value(%struct.varobj*) #1

declare dso_local i8* @varobj_get_type(%struct.varobj*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @xfree(%struct.varobj**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
