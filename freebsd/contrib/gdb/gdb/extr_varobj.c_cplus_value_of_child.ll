; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cplus_value_of_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_cplus_value_of_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.varobj = type { %struct.value*, %struct.varobj* }
%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"cplus_structure\00", align 1
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.varobj*, i32)* @cplus_value_of_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @cplus_value_of_child(%struct.varobj* %0, i32 %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.varobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.value*, align 8
  %10 = alloca %struct.value*, align 8
  store %struct.varobj* %0, %struct.varobj** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.varobj*, %struct.varobj** %4, align 8
  %12 = call i64 @CPLUS_FAKE_CHILD(%struct.varobj* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.varobj*, %struct.varobj** %4, align 8
  %16 = getelementptr inbounds %struct.varobj, %struct.varobj* %15, i32 0, i32 1
  %17 = load %struct.varobj*, %struct.varobj** %16, align 8
  %18 = call %struct.type* @get_type_deref(%struct.varobj* %17)
  store %struct.type* %18, %struct.type** %6, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.varobj*, %struct.varobj** %4, align 8
  %21 = call %struct.type* @get_type_deref(%struct.varobj* %20)
  store %struct.type* %21, %struct.type** %6, align 8
  br label %22

22:                                               ; preds = %19, %14
  store %struct.value* null, %struct.value** %7, align 8
  %23 = load %struct.type*, %struct.type** %6, align 8
  %24 = call i64 @TYPE_CODE(%struct.type* %23)
  %25 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.type*, %struct.type** %6, align 8
  %29 = call i64 @TYPE_CODE(%struct.type* %28)
  %30 = load i64, i64* @TYPE_CODE_UNION, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %114

32:                                               ; preds = %27, %22
  %33 = load %struct.varobj*, %struct.varobj** %4, align 8
  %34 = call i64 @CPLUS_FAKE_CHILD(%struct.varobj* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load %struct.varobj*, %struct.varobj** %4, align 8
  %38 = getelementptr inbounds %struct.varobj, %struct.varobj* %37, i32 0, i32 1
  %39 = load %struct.varobj*, %struct.varobj** %38, align 8
  %40 = getelementptr inbounds %struct.varobj, %struct.varobj* %39, i32 0, i32 0
  %41 = load %struct.value*, %struct.value** %40, align 8
  store %struct.value* %41, %struct.value** %9, align 8
  %42 = load %struct.value*, %struct.value** %9, align 8
  %43 = icmp eq %struct.value* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store %struct.value* null, %struct.value** %3, align 8
  br label %123

45:                                               ; preds = %36
  %46 = load %struct.varobj*, %struct.varobj** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i8* @name_of_child(%struct.varobj* %46, i32 %47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @gdb_value_struct_elt(i32* null, %struct.value** %7, %struct.value** %9, i32* null, i8* %49, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.value*, %struct.value** %7, align 8
  %52 = icmp ne %struct.value* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.value*, %struct.value** %7, align 8
  %55 = call i32 @release_value(%struct.value* %54)
  br label %56

56:                                               ; preds = %53, %45
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @xfree(i8* %57)
  br label %113

59:                                               ; preds = %32
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.type*, %struct.type** %6, align 8
  %62 = call i32 @TYPE_N_BASECLASSES(%struct.type* %61)
  %63 = icmp sge i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store %struct.value* null, %struct.value** %3, align 8
  br label %123

65:                                               ; preds = %59
  %66 = load %struct.varobj*, %struct.varobj** %4, align 8
  %67 = getelementptr inbounds %struct.varobj, %struct.varobj* %66, i32 0, i32 0
  %68 = load %struct.value*, %struct.value** %67, align 8
  %69 = icmp ne %struct.value* %68, null
  br i1 %69, label %70, label %111

70:                                               ; preds = %65
  store %struct.value* null, %struct.value** %10, align 8
  %71 = load %struct.varobj*, %struct.varobj** %4, align 8
  %72 = getelementptr inbounds %struct.varobj, %struct.varobj* %71, i32 0, i32 0
  %73 = load %struct.value*, %struct.value** %72, align 8
  %74 = call %struct.type* @VALUE_TYPE(%struct.value* %73)
  %75 = call i64 @TYPE_CODE(%struct.type* %74)
  %76 = load i64, i64* @TYPE_CODE_PTR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = load %struct.varobj*, %struct.varobj** %4, align 8
  %80 = getelementptr inbounds %struct.varobj, %struct.varobj* %79, i32 0, i32 0
  %81 = load %struct.value*, %struct.value** %80, align 8
  %82 = call %struct.type* @VALUE_TYPE(%struct.value* %81)
  %83 = call i64 @TYPE_CODE(%struct.type* %82)
  %84 = load i64, i64* @TYPE_CODE_REF, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %78, %70
  %87 = load %struct.varobj*, %struct.varobj** %4, align 8
  %88 = getelementptr inbounds %struct.varobj, %struct.varobj* %87, i32 0, i32 0
  %89 = load %struct.value*, %struct.value** %88, align 8
  %90 = call i32 @gdb_value_ind(%struct.value* %89, %struct.value** %10)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  store %struct.value* null, %struct.value** %3, align 8
  br label %123

93:                                               ; preds = %86
  br label %98

94:                                               ; preds = %78
  %95 = load %struct.varobj*, %struct.varobj** %4, align 8
  %96 = getelementptr inbounds %struct.varobj, %struct.varobj* %95, i32 0, i32 0
  %97 = load %struct.value*, %struct.value** %96, align 8
  store %struct.value* %97, %struct.value** %10, align 8
  br label %98

98:                                               ; preds = %94, %93
  %99 = load %struct.value*, %struct.value** %10, align 8
  %100 = icmp ne %struct.value* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load %struct.type*, %struct.type** %6, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @TYPE_FIELD_TYPE(%struct.type* %102, i32 %103)
  %105 = load %struct.value*, %struct.value** %10, align 8
  %106 = call %struct.value* @value_cast(i32 %104, %struct.value* %105)
  store %struct.value* %106, %struct.value** %7, align 8
  %107 = load %struct.value*, %struct.value** %7, align 8
  %108 = call i32 @release_value(%struct.value* %107)
  br label %110

109:                                              ; preds = %98
  store %struct.value* null, %struct.value** %3, align 8
  br label %123

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %65
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112, %56
  br label %114

114:                                              ; preds = %113, %27
  %115 = load %struct.value*, %struct.value** %7, align 8
  %116 = icmp eq %struct.value* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.varobj*, %struct.varobj** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call %struct.value* @c_value_of_child(%struct.varobj* %118, i32 %119)
  store %struct.value* %120, %struct.value** %3, align 8
  br label %123

121:                                              ; preds = %114
  %122 = load %struct.value*, %struct.value** %7, align 8
  store %struct.value* %122, %struct.value** %3, align 8
  br label %123

123:                                              ; preds = %121, %117, %109, %92, %64, %44
  %124 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %124
}

declare dso_local i64 @CPLUS_FAKE_CHILD(%struct.varobj*) #1

declare dso_local %struct.type* @get_type_deref(%struct.varobj*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i8* @name_of_child(%struct.varobj*, i32) #1

declare dso_local i32 @gdb_value_struct_elt(i32*, %struct.value**, %struct.value**, i32*, i8*, i32*, i8*) #1

declare dso_local i32 @release_value(%struct.value*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @gdb_value_ind(%struct.value*, %struct.value**) #1

declare dso_local %struct.value* @value_cast(i32, %struct.value*) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local %struct.value* @c_value_of_child(%struct.varobj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
