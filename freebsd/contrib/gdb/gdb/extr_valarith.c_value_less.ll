; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_less.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_less.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TYPE_CODE_BOOL = common dso_local global i32 0, align 4
@BINOP_LESS = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@TYPE_CODE_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Invalid type combination in ordering comparison.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @value_less(%struct.value* %0, %struct.value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %4, align 8
  store %struct.value* %1, %struct.value** %5, align 8
  %10 = load %struct.value*, %struct.value** %4, align 8
  %11 = call i32 @COERCE_NUMBER(%struct.value* %10)
  %12 = load %struct.value*, %struct.value** %5, align 8
  %13 = call i32 @COERCE_NUMBER(%struct.value* %12)
  %14 = load %struct.value*, %struct.value** %4, align 8
  %15 = call i32 @VALUE_TYPE(%struct.value* %14)
  %16 = call %struct.type* @check_typedef(i32 %15)
  store %struct.type* %16, %struct.type** %8, align 8
  %17 = load %struct.value*, %struct.value** %5, align 8
  %18 = call i32 @VALUE_TYPE(%struct.value* %17)
  %19 = call %struct.type* @check_typedef(i32 %18)
  store %struct.type* %19, %struct.type** %9, align 8
  %20 = load %struct.type*, %struct.type** %8, align 8
  %21 = call i32 @TYPE_CODE(%struct.type* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.type*, %struct.type** %9, align 8
  %23 = call i32 @TYPE_CODE(%struct.type* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TYPE_CODE_INT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27, %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @TYPE_CODE_INT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %31
  %40 = load %struct.value*, %struct.value** %4, align 8
  %41 = load %struct.value*, %struct.value** %5, align 8
  %42 = load i32, i32* @BINOP_LESS, align 4
  %43 = call %struct.value* @value_binop(%struct.value* %40, %struct.value* %41, i32 %42)
  %44 = call i64 @value_as_long(%struct.value* %43)
  %45 = call i32 @longest_to_int(i64 %44)
  store i32 %45, i32* %3, align 4
  br label %146

46:                                               ; preds = %35, %27
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @TYPE_CODE_FLT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @TYPE_CODE_INT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54, %50, %46
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @TYPE_CODE_FLT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TYPE_CODE_INT, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66, %62, %58
  %71 = load %struct.value*, %struct.value** %4, align 8
  %72 = call i64 @value_as_double(%struct.value* %71)
  %73 = load %struct.value*, %struct.value** %5, align 8
  %74 = call i64 @value_as_double(%struct.value* %73)
  %75 = icmp slt i64 %72, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %146

77:                                               ; preds = %66, %54
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @TYPE_CODE_PTR, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @TYPE_CODE_PTR, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.value*, %struct.value** %4, align 8
  %87 = call i64 @value_as_address(%struct.value* %86)
  %88 = load %struct.value*, %struct.value** %5, align 8
  %89 = call i64 @value_as_address(%struct.value* %88)
  %90 = icmp slt i64 %87, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %3, align 4
  br label %146

92:                                               ; preds = %81, %77
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @TYPE_CODE_PTR, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @TYPE_CODE_INT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100, %96
  %105 = load %struct.value*, %struct.value** %4, align 8
  %106 = call i64 @value_as_address(%struct.value* %105)
  %107 = load %struct.value*, %struct.value** %5, align 8
  %108 = call i64 @value_as_long(%struct.value* %107)
  %109 = icmp slt i64 %106, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %3, align 4
  br label %146

111:                                              ; preds = %100, %92
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @TYPE_CODE_PTR, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @TYPE_CODE_INT, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119, %115
  %124 = load %struct.value*, %struct.value** %4, align 8
  %125 = call i64 @value_as_long(%struct.value* %124)
  %126 = load %struct.value*, %struct.value** %5, align 8
  %127 = call i64 @value_as_address(%struct.value* %126)
  %128 = icmp slt i64 %125, %127
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %3, align 4
  br label %146

130:                                              ; preds = %119, %111
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @TYPE_CODE_STRING, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @TYPE_CODE_STRING, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load %struct.value*, %struct.value** %4, align 8
  %140 = load %struct.value*, %struct.value** %5, align 8
  %141 = call i64 @value_strcmp(%struct.value* %139, %struct.value* %140)
  %142 = icmp slt i64 %141, 0
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %3, align 4
  br label %146

144:                                              ; preds = %134, %130
  %145 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %138, %123, %104, %85, %70, %39
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @COERCE_NUMBER(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @longest_to_int(i64) #1

declare dso_local i64 @value_as_long(%struct.value*) #1

declare dso_local %struct.value* @value_binop(%struct.value*, %struct.value*, i32) #1

declare dso_local i64 @value_as_double(%struct.value*) #1

declare dso_local i64 @value_as_address(%struct.value*) #1

declare dso_local i64 @value_strcmp(%struct.value*, %struct.value*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
