; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_x_binop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_x_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Can't do that binary op on that type\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"operator__\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"<?\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c">?\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"Invalid binary operation specified.\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"structure\00", align 1
@EVAL_AVOID_SIDE_EFFECTS = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [29 x i8] c"member function %s not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_x_binop(%struct.value* %0, %struct.value* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca %struct.value*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.value**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [13 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %7, align 8
  store %struct.value* %1, %struct.value** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.value*, %struct.value** %7, align 8
  %18 = call i32 @COERCE_REF(%struct.value* %17)
  %19 = load %struct.value*, %struct.value** %8, align 8
  %20 = call i32 @COERCE_REF(%struct.value* %19)
  %21 = load %struct.value*, %struct.value** %7, align 8
  %22 = call i32 @COERCE_ENUM(%struct.value* %21)
  %23 = load %struct.value*, %struct.value** %8, align 8
  %24 = call i32 @COERCE_ENUM(%struct.value* %23)
  %25 = load %struct.value*, %struct.value** %7, align 8
  %26 = call i32 @VALUE_TYPE(%struct.value* %25)
  %27 = call i32 @check_typedef(i32 %26)
  %28 = call i64 @TYPE_CODE(i32 %27)
  %29 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %5
  %34 = call i64 @alloca(i32 32)
  %35 = inttoptr i64 %34 to %struct.value**
  store %struct.value** %35, %struct.value*** %12, align 8
  %36 = load %struct.value*, %struct.value** %7, align 8
  %37 = call %struct.value* @value_addr(%struct.value* %36)
  %38 = load %struct.value**, %struct.value*** %12, align 8
  %39 = getelementptr inbounds %struct.value*, %struct.value** %38, i64 1
  store %struct.value* %37, %struct.value** %39, align 8
  %40 = load %struct.value*, %struct.value** %8, align 8
  %41 = load %struct.value**, %struct.value*** %12, align 8
  %42 = getelementptr inbounds %struct.value*, %struct.value** %41, i64 2
  store %struct.value* %40, %struct.value** %42, align 8
  %43 = load %struct.value**, %struct.value*** %12, align 8
  %44 = getelementptr inbounds %struct.value*, %struct.value** %43, i64 3
  store %struct.value* null, %struct.value** %44, align 8
  %45 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %46 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %47 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %48 = getelementptr inbounds i8, i8* %47, i64 8
  store i8* %48, i8** %13, align 8
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %147 [
    i32 151, label %50
    i32 129, label %53
    i32 133, label %56
    i32 145, label %59
    i32 131, label %62
    i32 137, label %65
    i32 130, label %68
    i32 148, label %71
    i32 147, label %74
    i32 146, label %77
    i32 139, label %80
    i32 138, label %83
    i32 135, label %86
    i32 136, label %89
    i32 150, label %92
    i32 149, label %95
    i32 128, label %125
    i32 144, label %128
    i32 132, label %131
    i32 140, label %134
    i32 142, label %137
    i32 143, label %140
    i32 141, label %143
    i32 134, label %146
  ]

50:                                               ; preds = %33
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %149

53:                                               ; preds = %33
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @strcpy(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %149

56:                                               ; preds = %33
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @strcpy(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %149

59:                                               ; preds = %33
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @strcpy(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %149

62:                                               ; preds = %33
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @strcpy(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %149

65:                                               ; preds = %33
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @strcpy(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %149

68:                                               ; preds = %33
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @strcpy(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %149

71:                                               ; preds = %33
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @strcpy(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %149

74:                                               ; preds = %33
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @strcpy(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %149

77:                                               ; preds = %33
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @strcpy(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %149

80:                                               ; preds = %33
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @strcpy(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %149

83:                                               ; preds = %33
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @strcpy(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %149

86:                                               ; preds = %33
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @strcpy(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %149

89:                                               ; preds = %33
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @strcpy(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %149

92:                                               ; preds = %33
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @strcpy(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %149

95:                                               ; preds = %33
  %96 = load i32, i32* %10, align 4
  switch i32 %96, label %122 [
    i32 151, label %97
    i32 129, label %100
    i32 133, label %103
    i32 145, label %106
    i32 131, label %109
    i32 148, label %112
    i32 147, label %115
    i32 146, label %118
    i32 134, label %121
  ]

97:                                               ; preds = %95
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @strcpy(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  br label %124

100:                                              ; preds = %95
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @strcpy(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %124

103:                                              ; preds = %95
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @strcpy(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %124

106:                                              ; preds = %95
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @strcpy(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %124

109:                                              ; preds = %95
  %110 = load i8*, i8** %13, align 8
  %111 = call i32 @strcpy(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  br label %124

112:                                              ; preds = %95
  %113 = load i8*, i8** %13, align 8
  %114 = call i32 @strcpy(i8* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %124

115:                                              ; preds = %95
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 @strcpy(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  br label %124

118:                                              ; preds = %95
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @strcpy(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  br label %124

121:                                              ; preds = %95
  br label %122

122:                                              ; preds = %95, %121
  %123 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %118, %115, %112, %109, %106, %103, %100, %97
  br label %149

125:                                              ; preds = %33
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 @strcpy(i8* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %149

128:                                              ; preds = %33
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @strcpy(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  br label %149

131:                                              ; preds = %33
  %132 = load i8*, i8** %13, align 8
  %133 = call i32 @strcpy(i8* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %149

134:                                              ; preds = %33
  %135 = load i8*, i8** %13, align 8
  %136 = call i32 @strcpy(i8* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  br label %149

137:                                              ; preds = %33
  %138 = load i8*, i8** %13, align 8
  %139 = call i32 @strcpy(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  br label %149

140:                                              ; preds = %33
  %141 = load i8*, i8** %13, align 8
  %142 = call i32 @strcpy(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  br label %149

143:                                              ; preds = %33
  %144 = load i8*, i8** %13, align 8
  %145 = call i32 @strcpy(i8* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  br label %149

146:                                              ; preds = %33
  br label %147

147:                                              ; preds = %33, %146
  %148 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %143, %140, %137, %134, %131, %128, %125, %124, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50
  %150 = load %struct.value**, %struct.value*** %12, align 8
  %151 = getelementptr inbounds %struct.value*, %struct.value** %150, i64 1
  %152 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %153 = call %struct.value* @value_struct_elt(%struct.value** %7, %struct.value** %151, i8* %152, i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0))
  %154 = load %struct.value**, %struct.value*** %12, align 8
  %155 = getelementptr inbounds %struct.value*, %struct.value** %154, i64 0
  store %struct.value* %153, %struct.value** %155, align 8
  %156 = load %struct.value**, %struct.value*** %12, align 8
  %157 = getelementptr inbounds %struct.value*, %struct.value** %156, i64 0
  %158 = load %struct.value*, %struct.value** %157, align 8
  %159 = icmp ne %struct.value* %158, null
  br i1 %159, label %160, label %195

160:                                              ; preds = %149
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load %struct.value**, %struct.value*** %12, align 8
  %165 = getelementptr inbounds %struct.value*, %struct.value** %164, i64 0
  %166 = load %struct.value*, %struct.value** %165, align 8
  %167 = load %struct.value**, %struct.value*** %12, align 8
  %168 = getelementptr inbounds %struct.value*, %struct.value** %167, i64 1
  store %struct.value* %166, %struct.value** %168, align 8
  %169 = load %struct.value**, %struct.value*** %12, align 8
  %170 = getelementptr inbounds %struct.value*, %struct.value** %169, i32 1
  store %struct.value** %170, %struct.value*** %12, align 8
  br label %171

171:                                              ; preds = %163, %160
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %171
  %176 = load %struct.value**, %struct.value*** %12, align 8
  %177 = getelementptr inbounds %struct.value*, %struct.value** %176, i64 0
  %178 = load %struct.value*, %struct.value** %177, align 8
  %179 = call i32 @VALUE_TYPE(%struct.value* %178)
  %180 = call i32 @check_typedef(i32 %179)
  %181 = call %struct.type* @TYPE_TARGET_TYPE(i32 %180)
  store %struct.type* %181, %struct.type** %16, align 8
  %182 = load %struct.type*, %struct.type** %16, align 8
  %183 = load %struct.value*, %struct.value** %7, align 8
  %184 = call i32 @VALUE_LVAL(%struct.value* %183)
  %185 = call %struct.value* @value_zero(%struct.type* %182, i32 %184)
  store %struct.value* %185, %struct.value** %6, align 8
  br label %198

186:                                              ; preds = %171
  %187 = load %struct.value**, %struct.value*** %12, align 8
  %188 = getelementptr inbounds %struct.value*, %struct.value** %187, i64 0
  %189 = load %struct.value*, %struct.value** %188, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sub nsw i32 2, %190
  %192 = load %struct.value**, %struct.value*** %12, align 8
  %193 = getelementptr inbounds %struct.value*, %struct.value** %192, i64 1
  %194 = call %struct.value* @call_function_by_hand(%struct.value* %189, i32 %191, %struct.value** %193)
  store %struct.value* %194, %struct.value** %6, align 8
  br label %198

195:                                              ; preds = %149
  %196 = getelementptr inbounds [13 x i8], [13 x i8]* %14, i64 0, i64 0
  %197 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i8* %196)
  br label %198

198:                                              ; preds = %195, %186, %175
  %199 = load %struct.value*, %struct.value** %6, align 8
  ret %struct.value* %199
}

declare dso_local i32 @COERCE_REF(%struct.value*) #1

declare dso_local i32 @COERCE_ENUM(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local %struct.value* @value_addr(%struct.value*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.value* @value_struct_elt(%struct.value**, %struct.value**, i8*, i32*, i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(i32) #1

declare dso_local %struct.value* @value_zero(%struct.type*, i32) #1

declare dso_local i32 @VALUE_LVAL(%struct.value*) #1

declare dso_local %struct.value* @call_function_by_hand(%struct.value*, i32, %struct.value**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
