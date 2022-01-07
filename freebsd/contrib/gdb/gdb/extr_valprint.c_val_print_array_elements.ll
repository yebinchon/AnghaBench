; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_val_print_array_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_val_print_array_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@print_max = common dso_local global i32 0, align 4
@prettyprint_arrays = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@repeat_count_threshold = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c" <repeats %u times>\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_print_array_elements(%struct.type* %0, i8* %1, i32 %2, %struct.ui_file* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.type*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ui_file*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.type*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.ui_file* %3, %struct.ui_file** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %25 = load %struct.type*, %struct.type** %10, align 8
  %26 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %25)
  store %struct.type* %26, %struct.type** %21, align 8
  %27 = load %struct.type*, %struct.type** %21, align 8
  %28 = call %struct.type* @check_typedef(%struct.type* %27)
  %29 = call i32 @TYPE_LENGTH(%struct.type* %28)
  store i32 %29, i32* %22, align 4
  %30 = load %struct.type*, %struct.type** %10, align 8
  %31 = call i32 @TYPE_LENGTH(%struct.type* %30)
  %32 = load i32, i32* %22, align 4
  %33 = udiv i32 %31, %32
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load %struct.type*, %struct.type** %21, align 8
  %36 = call i32 @annotate_array_section_begin(i32 %34, %struct.type* %35)
  br label %37

37:                                               ; preds = %150, %9
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* @print_max, align 4
  %44 = icmp ult i32 %42, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %153

47:                                               ; preds = %45
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i64, i64* @prettyprint_arrays, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %55 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %16, align 4
  %57 = mul nsw i32 2, %56
  %58 = add nsw i32 2, %57
  %59 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %60 = call i32 @print_spaces_filtered(i32 %58, %struct.ui_file* %59)
  br label %64

61:                                               ; preds = %50
  %62 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %63 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i32, i32* %16, align 4
  %67 = mul nsw i32 2, %66
  %68 = add nsw i32 2, %67
  %69 = call i32 @n_spaces(i32 %68)
  %70 = call i32 @wrap_here(i32 %69)
  %71 = load i32, i32* %18, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %23, align 4
  store i32 1, i32* %24, align 4
  br label %73

73:                                               ; preds = %96, %65
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %22, align 4
  %81 = mul i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %22, align 4
  %87 = mul i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  %90 = load i32, i32* %22, align 4
  %91 = call i32 @memcmp(i8* %83, i8* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %77, %73
  %95 = phi i1 [ false, %73 ], [ %93, %77 ]
  br i1 %95, label %96, label %101

96:                                               ; preds = %94
  %97 = load i32, i32* %24, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %24, align 4
  %99 = load i32, i32* %23, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %23, align 4
  br label %73

101:                                              ; preds = %94
  %102 = load i32, i32* %24, align 4
  %103 = load i32, i32* @repeat_count_threshold, align 4
  %104 = icmp ugt i32 %102, %103
  br i1 %104, label %105, label %131

105:                                              ; preds = %101
  %106 = load %struct.type*, %struct.type** %21, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %22, align 4
  %110 = mul i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @val_print(%struct.type* %106, i8* %112, i32 0, i32 0, %struct.ui_file* %113, i32 %114, i32 %115, i32 %117, i32 %118)
  %120 = load i32, i32* %24, align 4
  %121 = call i32 @annotate_elt_rep(i32 %120)
  %122 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %123 = load i32, i32* %24, align 4
  %124 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = call i32 (...) @annotate_elt_rep_end()
  %126 = load i32, i32* %23, align 4
  %127 = sub i32 %126, 1
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* @repeat_count_threshold, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %19, align 4
  br label %149

131:                                              ; preds = %101
  %132 = load %struct.type*, %struct.type** %21, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %22, align 4
  %136 = mul i32 %134, %135
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %133, i64 %137
  %139 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @val_print(%struct.type* %132, i8* %138, i32 0, i32 0, %struct.ui_file* %139, i32 %140, i32 %141, i32 %143, i32 %144)
  %146 = call i32 (...) @annotate_elt()
  %147 = load i32, i32* %19, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %19, align 4
  br label %149

149:                                              ; preds = %131, %105
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %18, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %18, align 4
  br label %37

153:                                              ; preds = %45
  %154 = call i32 (...) @annotate_array_section_end()
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %20, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %160 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %153
  ret void
}

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i32 @annotate_array_section_begin(i32, %struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @print_spaces_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @wrap_here(i32) #1

declare dso_local i32 @n_spaces(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @val_print(%struct.type*, i8*, i32, i32, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local i32 @annotate_elt_rep(i32) #1

declare dso_local i32 @annotate_elt_rep_end(...) #1

declare dso_local i32 @annotate_elt(...) #1

declare dso_local i32 @annotate_array_section_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
