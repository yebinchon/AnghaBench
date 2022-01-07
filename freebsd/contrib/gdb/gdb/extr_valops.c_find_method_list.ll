; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_method_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_method_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fn_field = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Virtual base class offset not found in vtable\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"virtual baseclass botch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fn_field* (%struct.value**, i8*, i32, %struct.type*, i32*, %struct.type**, i32*)* @find_method_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fn_field* @find_method_list(%struct.value** %0, i8* %1, i32 %2, %struct.type* %3, i32* %4, %struct.type** %5, i32* %6) #0 {
  %8 = alloca %struct.fn_field*, align 8
  %9 = alloca %struct.value**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.type*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.type**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.fn_field*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.fn_field*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.value** %0, %struct.value*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.type* %3, %struct.type** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.type** %5, %struct.type*** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load %struct.type*, %struct.type** %12, align 8
  %24 = call i32 @CHECK_TYPEDEF(%struct.type* %23)
  %25 = load i32*, i32** %13, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.type*, %struct.type** %12, align 8
  %27 = call i32 @TYPE_NFN_FIELDS(%struct.type* %26)
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %16, align 4
  br label %29

29:                                               ; preds = %61, %7
  %30 = load i32, i32* %16, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = load %struct.type*, %struct.type** %12, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i8* @TYPE_FN_FIELDLIST_NAME(%struct.type* %33, i32 %34)
  store i8* %35, i8** %18, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load i8*, i8** %18, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @strcmp_iw(i8* %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load %struct.type*, %struct.type** %12, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %44, i32 %45)
  store i32 %46, i32* %19, align 4
  %47 = load %struct.type*, %struct.type** %12, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %47, i32 %48)
  store %struct.fn_field* %49, %struct.fn_field** %20, align 8
  %50 = load i32, i32* %19, align 4
  %51 = load i32*, i32** %13, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.type*, %struct.type** %12, align 8
  %53 = load %struct.type**, %struct.type*** %14, align 8
  store %struct.type* %52, %struct.type** %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %15, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.type*, %struct.type** %12, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @check_stub_method_group(%struct.type* %56, i32 %57)
  %59 = load %struct.fn_field*, %struct.fn_field** %20, align 8
  store %struct.fn_field* %59, %struct.fn_field** %8, align 8
  br label %154

60:                                               ; preds = %38, %32
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %16, align 4
  br label %29

64:                                               ; preds = %29
  %65 = load %struct.type*, %struct.type** %12, align 8
  %66 = call i32 @TYPE_N_BASECLASSES(%struct.type* %65)
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %150, %64
  %69 = load i32, i32* %16, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %153

71:                                               ; preds = %68
  %72 = load %struct.type*, %struct.type** %12, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %127

76:                                               ; preds = %71
  %77 = load %struct.type*, %struct.type** %12, align 8
  %78 = call i64 @TYPE_HAS_VTABLE(%struct.type* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load %struct.type*, %struct.type** %12, align 8
  %82 = load %struct.type*, %struct.type** %12, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call %struct.type* @TYPE_BASECLASS(%struct.type* %82, i32 %83)
  %85 = load %struct.value**, %struct.value*** %9, align 8
  %86 = load %struct.value*, %struct.value** %85, align 8
  %87 = call i32 @VALUE_CONTENTS_ALL(%struct.value* %86)
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.value**, %struct.value*** %9, align 8
  %91 = load %struct.value*, %struct.value** %90, align 8
  %92 = call i64 @VALUE_EMBEDDED_OFFSET(%struct.value* %91)
  %93 = add nsw i64 %89, %92
  %94 = call i32 @find_rt_vbase_offset(%struct.type* %81, %struct.type* %84, i32 %87, i64 %93, i32* %21, i32* %22)
  %95 = load i32, i32* %22, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %80
  %98 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %80
  br label %126

100:                                              ; preds = %76
  %101 = load %struct.value**, %struct.value*** %9, align 8
  %102 = load %struct.value*, %struct.value** %101, align 8
  %103 = call i32 @VALUE_OFFSET(%struct.value* %102)
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %21, align 4
  %106 = load %struct.type*, %struct.type** %12, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.value**, %struct.value*** %9, align 8
  %109 = load %struct.value*, %struct.value** %108, align 8
  %110 = call i64 @VALUE_CONTENTS(%struct.value* %109)
  %111 = load i32, i32* %21, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load %struct.value**, %struct.value*** %9, align 8
  %115 = load %struct.value*, %struct.value** %114, align 8
  %116 = call i64 @VALUE_ADDRESS(%struct.value* %115)
  %117 = load i32, i32* %21, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = call i32 @baseclass_offset(%struct.type* %106, i32 %107, i64 %113, i64 %119)
  store i32 %120, i32* %21, align 4
  %121 = load i32, i32* %21, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %125

123:                                              ; preds = %100
  %124 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %100
  br label %126

126:                                              ; preds = %125, %99
  br label %132

127:                                              ; preds = %71
  %128 = load %struct.type*, %struct.type** %12, align 8
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @TYPE_BASECLASS_BITPOS(%struct.type* %128, i32 %129)
  %131 = sdiv i32 %130, 8
  store i32 %131, i32* %21, align 4
  br label %132

132:                                              ; preds = %127, %126
  %133 = load %struct.value**, %struct.value*** %9, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %135, %136
  %138 = load %struct.type*, %struct.type** %12, align 8
  %139 = load i32, i32* %16, align 4
  %140 = call %struct.type* @TYPE_BASECLASS(%struct.type* %138, i32 %139)
  %141 = load i32*, i32** %13, align 8
  %142 = load %struct.type**, %struct.type*** %14, align 8
  %143 = load i32*, i32** %15, align 8
  %144 = call %struct.fn_field* @find_method_list(%struct.value** %133, i8* %134, i32 %137, %struct.type* %140, i32* %141, %struct.type** %142, i32* %143)
  store %struct.fn_field* %144, %struct.fn_field** %17, align 8
  %145 = load %struct.fn_field*, %struct.fn_field** %17, align 8
  %146 = icmp ne %struct.fn_field* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %132
  %148 = load %struct.fn_field*, %struct.fn_field** %17, align 8
  store %struct.fn_field* %148, %struct.fn_field** %8, align 8
  br label %154

149:                                              ; preds = %132
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %16, align 4
  br label %68

153:                                              ; preds = %68
  store %struct.fn_field* null, %struct.fn_field** %8, align 8
  br label %154

154:                                              ; preds = %153, %147, %43
  %155 = load %struct.fn_field*, %struct.fn_field** %8, align 8
  ret %struct.fn_field* %155
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local i8* @TYPE_FN_FIELDLIST_NAME(%struct.type*, i32) #1

declare dso_local i64 @strcmp_iw(i8*, i8*) #1

declare dso_local i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type*, i32) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local i32 @check_stub_method_group(%struct.type*, i32) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i64 @BASETYPE_VIA_VIRTUAL(%struct.type*, i32) #1

declare dso_local i64 @TYPE_HAS_VTABLE(%struct.type*) #1

declare dso_local i32 @find_rt_vbase_offset(%struct.type*, %struct.type*, i32, i64, i32*, i32*) #1

declare dso_local %struct.type* @TYPE_BASECLASS(%struct.type*, i32) #1

declare dso_local i32 @VALUE_CONTENTS_ALL(%struct.value*) #1

declare dso_local i64 @VALUE_EMBEDDED_OFFSET(%struct.value*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @VALUE_OFFSET(%struct.value*) #1

declare dso_local i32 @baseclass_offset(%struct.type*, i32, i64, i64) #1

declare dso_local i64 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i32 @TYPE_BASECLASS_BITPOS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
