; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TYPE_CODE_BOOL = common dso_local global i32 0, align 4
@BINOP_EQUAL = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@TYPE_CODE_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid type combination in equality test.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @value_equal(%struct.value* %0, %struct.value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.value* %0, %struct.value** %4, align 8
  store %struct.value* %1, %struct.value** %5, align 8
  %13 = load %struct.value*, %struct.value** %4, align 8
  %14 = call i32 @COERCE_NUMBER(%struct.value* %13)
  %15 = load %struct.value*, %struct.value** %5, align 8
  %16 = call i32 @COERCE_NUMBER(%struct.value* %15)
  %17 = load %struct.value*, %struct.value** %4, align 8
  %18 = call i32 @VALUE_TYPE(%struct.value* %17)
  %19 = call %struct.type* @check_typedef(i32 %18)
  store %struct.type* %19, %struct.type** %9, align 8
  %20 = load %struct.value*, %struct.value** %5, align 8
  %21 = call i32 @VALUE_TYPE(%struct.value* %20)
  %22 = call %struct.type* @check_typedef(i32 %21)
  store %struct.type* %22, %struct.type** %10, align 8
  %23 = load %struct.type*, %struct.type** %9, align 8
  %24 = call i32 @TYPE_CODE(%struct.type* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.type*, %struct.type** %10, align 8
  %26 = call i32 @TYPE_CODE(%struct.type* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @TYPE_CODE_INT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30, %2
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @TYPE_CODE_INT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %34
  %43 = load %struct.value*, %struct.value** %4, align 8
  %44 = load %struct.value*, %struct.value** %5, align 8
  %45 = load i32, i32* @BINOP_EQUAL, align 4
  %46 = call %struct.value* @value_binop(%struct.value* %43, %struct.value* %44, i32 %45)
  %47 = call i64 @value_as_long(%struct.value* %46)
  %48 = call i32 @longest_to_int(i64 %47)
  store i32 %48, i32* %3, align 4
  br label %171

49:                                               ; preds = %38, %30
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @TYPE_CODE_FLT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @TYPE_CODE_INT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57, %53, %49
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @TYPE_CODE_FLT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @TYPE_CODE_INT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69, %65, %61
  %74 = load %struct.value*, %struct.value** %4, align 8
  %75 = call i64 @value_as_double(%struct.value* %74)
  %76 = load %struct.value*, %struct.value** %5, align 8
  %77 = call i64 @value_as_double(%struct.value* %76)
  %78 = icmp eq i64 %75, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %171

80:                                               ; preds = %69, %57
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @TYPE_CODE_PTR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @TYPE_CODE_INT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88, %84
  %93 = load %struct.value*, %struct.value** %4, align 8
  %94 = call i64 @value_as_address(%struct.value* %93)
  %95 = load %struct.value*, %struct.value** %5, align 8
  %96 = call i64 @value_as_long(%struct.value* %95)
  %97 = icmp eq i64 %94, %96
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %3, align 4
  br label %171

99:                                               ; preds = %88, %80
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @TYPE_CODE_PTR, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @TYPE_CODE_INT, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @TYPE_CODE_BOOL, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107, %103
  %112 = load %struct.value*, %struct.value** %4, align 8
  %113 = call i64 @value_as_long(%struct.value* %112)
  %114 = load %struct.value*, %struct.value** %5, align 8
  %115 = call i64 @value_as_address(%struct.value* %114)
  %116 = icmp eq i64 %113, %115
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %3, align 4
  br label %171

118:                                              ; preds = %107, %99
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %155

122:                                              ; preds = %118
  %123 = load %struct.type*, %struct.type** %9, align 8
  %124 = call i64 @TYPE_LENGTH(%struct.type* %123)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %6, align 4
  %126 = load %struct.type*, %struct.type** %10, align 8
  %127 = call i64 @TYPE_LENGTH(%struct.type* %126)
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %122
  %131 = load %struct.value*, %struct.value** %4, align 8
  %132 = call i8* @VALUE_CONTENTS(%struct.value* %131)
  store i8* %132, i8** %7, align 8
  %133 = load %struct.value*, %struct.value** %5, align 8
  %134 = call i8* @VALUE_CONTENTS(%struct.value* %133)
  store i8* %134, i8** %8, align 8
  br label %135

135:                                              ; preds = %150, %130
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %6, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %135
  %140 = load i8*, i8** %7, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %7, align 8
  %142 = load i8, i8* %140, align 1
  %143 = sext i8 %142 to i32
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %8, align 8
  %146 = load i8, i8* %144, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %143, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %151

150:                                              ; preds = %139
  br label %135

151:                                              ; preds = %149, %135
  %152 = load i32, i32* %6, align 4
  %153 = icmp slt i32 %152, 0
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %3, align 4
  br label %171

155:                                              ; preds = %122, %118
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @TYPE_CODE_STRING, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @TYPE_CODE_STRING, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load %struct.value*, %struct.value** %4, align 8
  %165 = load %struct.value*, %struct.value** %5, align 8
  %166 = call i64 @value_strcmp(%struct.value* %164, %struct.value* %165)
  %167 = icmp eq i64 %166, 0
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %3, align 4
  br label %171

169:                                              ; preds = %159, %155
  %170 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %163, %151, %111, %92, %73, %42
  %172 = load i32, i32* %3, align 4
  ret i32 %172
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

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i64 @value_strcmp(%struct.value*, %struct.value*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
