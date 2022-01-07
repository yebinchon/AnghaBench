; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_struct_elt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_struct_elt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@TYPE_CODE_FUNC = common dso_local global i64 0, align 8
@TYPE_CODE_MEMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"not implemented: member type in value_struct_elt\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"Attempt to extract a component of a value that is not a %s.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot get value of destructor\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Cannot take address of a method\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"There is no member or method named %s.\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"There is no member named %s.\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"could not find destructor function named %s.\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"destructor should not have any argument\00", align 1
@.str.8 = private unnamed_addr constant [96 x i8] c"One of the arguments you tried to pass to %s could not be converted to what the function wants.\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Structure has no component named %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_struct_elt(%struct.value** %0, %struct.value** %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value**, align 8
  %8 = alloca %struct.value**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.type*, align 8
  %13 = alloca %struct.value*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.value** %0, %struct.value*** %7, align 8
  store %struct.value** %1, %struct.value*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load %struct.value**, %struct.value*** %7, align 8
  %17 = load %struct.value*, %struct.value** %16, align 8
  %18 = call i32 @COERCE_ARRAY(%struct.value* %17)
  %19 = load %struct.value**, %struct.value*** %7, align 8
  %20 = load %struct.value*, %struct.value** %19, align 8
  %21 = call %struct.type* @VALUE_TYPE(%struct.value* %20)
  %22 = call %struct.type* @check_typedef(%struct.type* %21)
  store %struct.type* %22, %struct.type** %12, align 8
  br label %23

23:                                               ; preds = %50, %5
  %24 = load %struct.type*, %struct.type** %12, align 8
  %25 = call i64 @TYPE_CODE(%struct.type* %24)
  %26 = load i64, i64* @TYPE_CODE_PTR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.type*, %struct.type** %12, align 8
  %30 = call i64 @TYPE_CODE(%struct.type* %29)
  %31 = load i64, i64* @TYPE_CODE_REF, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ true, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %55

35:                                               ; preds = %33
  %36 = load %struct.value**, %struct.value*** %7, align 8
  %37 = load %struct.value*, %struct.value** %36, align 8
  %38 = call %struct.value* @value_ind(%struct.value* %37)
  %39 = load %struct.value**, %struct.value*** %7, align 8
  store %struct.value* %38, %struct.value** %39, align 8
  %40 = load %struct.value**, %struct.value*** %7, align 8
  %41 = load %struct.value*, %struct.value** %40, align 8
  %42 = call %struct.type* @VALUE_TYPE(%struct.value* %41)
  %43 = call i64 @TYPE_CODE(%struct.type* %42)
  %44 = load i64, i64* @TYPE_CODE_FUNC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.value**, %struct.value*** %7, align 8
  %48 = load %struct.value*, %struct.value** %47, align 8
  %49 = call i32 @COERCE_ARRAY(%struct.value* %48)
  br label %50

50:                                               ; preds = %46, %35
  %51 = load %struct.value**, %struct.value*** %7, align 8
  %52 = load %struct.value*, %struct.value** %51, align 8
  %53 = call %struct.type* @VALUE_TYPE(%struct.value* %52)
  %54 = call %struct.type* @check_typedef(%struct.type* %53)
  store %struct.type* %54, %struct.type** %12, align 8
  br label %23

55:                                               ; preds = %33
  %56 = load %struct.type*, %struct.type** %12, align 8
  %57 = call i64 @TYPE_CODE(%struct.type* %56)
  %58 = load i64, i64* @TYPE_CODE_MEMBER, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = load %struct.type*, %struct.type** %12, align 8
  %64 = call i64 @TYPE_CODE(%struct.type* %63)
  %65 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.type*, %struct.type** %12, align 8
  %69 = call i64 @TYPE_CODE(%struct.type* %68)
  %70 = load i64, i64* @TYPE_CODE_UNION, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %67, %62
  %76 = load i32*, i32** %10, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32*, i32** %10, align 8
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = load %struct.value**, %struct.value*** %8, align 8
  %82 = icmp ne %struct.value** %81, null
  br i1 %82, label %128, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.value**, %struct.value*** %7, align 8
  %86 = load %struct.value*, %struct.value** %85, align 8
  %87 = load %struct.type*, %struct.type** %12, align 8
  %88 = call %struct.value* @search_struct_field(i8* %84, %struct.value* %86, i32 0, %struct.type* %87, i32 0)
  store %struct.value* %88, %struct.value** %13, align 8
  %89 = load %struct.value*, %struct.value** %13, align 8
  %90 = icmp ne %struct.value* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load %struct.value*, %struct.value** %13, align 8
  store %struct.value* %92, %struct.value** %6, align 8
  br label %191

93:                                               ; preds = %83
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.type*, %struct.type** %12, align 8
  %96 = call i64 @destructor_name_p(i8* %94, %struct.type* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.value**, %struct.value*** %7, align 8
  %103 = load %struct.value**, %struct.value*** %8, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.type*, %struct.type** %12, align 8
  %106 = call %struct.value* @search_struct_method(i8* %101, %struct.value** %102, %struct.value** %103, i32 0, i32* %104, %struct.type* %105)
  store %struct.value* %106, %struct.value** %13, align 8
  %107 = load %struct.value*, %struct.value** %13, align 8
  %108 = icmp eq %struct.value* %107, inttoptr (i64 -1 to %struct.value*)
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %126

111:                                              ; preds = %100
  %112 = load %struct.value*, %struct.value** %13, align 8
  %113 = icmp eq %struct.value* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load %struct.type*, %struct.type** %12, align 8
  %116 = call i64 @TYPE_NFN_FIELDS(%struct.type* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  br label %124

121:                                              ; preds = %114
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %111
  br label %126

126:                                              ; preds = %125, %109
  %127 = load %struct.value*, %struct.value** %13, align 8
  store %struct.value* %127, %struct.value** %6, align 8
  br label %191

128:                                              ; preds = %80
  %129 = load i8*, i8** %9, align 8
  %130 = load %struct.type*, %struct.type** %12, align 8
  %131 = call i64 @destructor_name_p(i8* %129, %struct.type* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %128
  %134 = load %struct.value**, %struct.value*** %8, align 8
  %135 = getelementptr inbounds %struct.value*, %struct.value** %134, i64 1
  %136 = load %struct.value*, %struct.value** %135, align 8
  %137 = icmp ne %struct.value* %136, null
  br i1 %137, label %157, label %138

138:                                              ; preds = %133
  store %struct.value* null, %struct.value** %13, align 8
  %139 = load %struct.type*, %struct.type** %12, align 8
  %140 = call i64 @get_destructor_fn_field(%struct.type* %139, i32* %14, i32* %15)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load %struct.type*, %struct.type** %12, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @TYPE_FN_FIELDLIST1(%struct.type* %143, i32 %144)
  %146 = load i32, i32* %15, align 4
  %147 = call %struct.value* @value_fn_field(i32* null, i32 %145, i32 %146, i32* null, i32 0)
  store %struct.value* %147, %struct.value** %13, align 8
  br label %148

148:                                              ; preds = %142, %138
  %149 = load %struct.value*, %struct.value** %13, align 8
  %150 = icmp eq %struct.value* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %152)
  br label %156

154:                                              ; preds = %148
  %155 = load %struct.value*, %struct.value** %13, align 8
  store %struct.value* %155, %struct.value** %6, align 8
  br label %191

156:                                              ; preds = %151
  br label %159

157:                                              ; preds = %133
  %158 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %156
  br label %167

160:                                              ; preds = %128
  %161 = load i8*, i8** %9, align 8
  %162 = load %struct.value**, %struct.value*** %7, align 8
  %163 = load %struct.value**, %struct.value*** %8, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = load %struct.type*, %struct.type** %12, align 8
  %166 = call %struct.value* @search_struct_method(i8* %161, %struct.value** %162, %struct.value** %163, i32 0, i32* %164, %struct.type* %165)
  store %struct.value* %166, %struct.value** %13, align 8
  br label %167

167:                                              ; preds = %160, %159
  %168 = load %struct.value*, %struct.value** %13, align 8
  %169 = icmp eq %struct.value* %168, inttoptr (i64 -1 to %struct.value*)
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0), i8* %171)
  br label %183

173:                                              ; preds = %167
  %174 = load %struct.value*, %struct.value** %13, align 8
  %175 = icmp eq %struct.value* %174, null
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8
  %178 = load %struct.value**, %struct.value*** %7, align 8
  %179 = load %struct.value*, %struct.value** %178, align 8
  %180 = load %struct.type*, %struct.type** %12, align 8
  %181 = call %struct.value* @search_struct_field(i8* %177, %struct.value* %179, i32 0, %struct.type* %180, i32 0)
  store %struct.value* %181, %struct.value** %13, align 8
  br label %182

182:                                              ; preds = %176, %173
  br label %183

183:                                              ; preds = %182, %170
  %184 = load %struct.value*, %struct.value** %13, align 8
  %185 = icmp ne %struct.value* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i8*, i8** %9, align 8
  %188 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %186, %183
  %190 = load %struct.value*, %struct.value** %13, align 8
  store %struct.value* %190, %struct.value** %6, align 8
  br label %191

191:                                              ; preds = %189, %154, %126, %91
  %192 = load %struct.value*, %struct.value** %6, align 8
  ret %struct.value* %192
}

declare dso_local i32 @COERCE_ARRAY(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.value* @value_ind(%struct.value*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.value* @search_struct_field(i8*, %struct.value*, i32, %struct.type*, i32) #1

declare dso_local i64 @destructor_name_p(i8*, %struct.type*) #1

declare dso_local %struct.value* @search_struct_method(i8*, %struct.value**, %struct.value**, i32, i32*, %struct.type*) #1

declare dso_local i64 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local i64 @get_destructor_fn_field(%struct.type*, i32*, i32*) #1

declare dso_local %struct.value* @value_fn_field(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
