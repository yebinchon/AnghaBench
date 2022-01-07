; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_oload_champ.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_oload_champ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.fn_field = type { i32 }
%struct.symbol = type { i32 }
%struct.badness_vector = type { i32* }
%struct.TYPE_2__ = type { %struct.type* }

@overload_debug = common dso_local global i64 0, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Overloaded method instance %s, # of parms %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Overloaded function instance %s # of parms %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"...Badness @ %d : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Overload resolution champion is %d, ambiguous? %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type**, i32, i32, i32, %struct.fn_field*, %struct.symbol**, %struct.badness_vector**)* @find_oload_champ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_oload_champ(%struct.type** %0, i32 %1, i32 %2, i32 %3, %struct.fn_field* %4, %struct.symbol** %5, %struct.badness_vector** %6) #0 {
  %8 = alloca %struct.type**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fn_field*, align 8
  %13 = alloca %struct.symbol**, align 8
  %14 = alloca %struct.badness_vector**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.badness_vector*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.type**, align 8
  store %struct.type** %0, %struct.type*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.fn_field* %4, %struct.fn_field** %12, align 8
  store %struct.symbol** %5, %struct.symbol*** %13, align 8
  store %struct.badness_vector** %6, %struct.badness_vector*** %14, align 8
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load %struct.badness_vector**, %struct.badness_vector*** %14, align 8
  store %struct.badness_vector* null, %struct.badness_vector** %23, align 8
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %175, %7
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %178

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.fn_field*, %struct.fn_field** %12, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @oload_method_static(i32 %29, %struct.fn_field* %30, i32 %31)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.fn_field*, %struct.fn_field** %12, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field* %36, i32 %37)
  %39 = call i32 @TYPE_NFIELDS(i32 %38)
  store i32 %39, i32* %21, align 4
  br label %48

40:                                               ; preds = %28
  %41 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.symbol*, %struct.symbol** %41, i64 %43
  %45 = load %struct.symbol*, %struct.symbol** %44, align 8
  %46 = call i32 @SYMBOL_TYPE(%struct.symbol* %45)
  %47 = call i32 @TYPE_NFIELDS(i32 %46)
  store i32 %47, i32* %21, align 4
  br label %48

48:                                               ; preds = %40, %35
  %49 = load i32, i32* %21, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i64 @xmalloc(i32 %52)
  %54 = inttoptr i64 %53 to %struct.type**
  store %struct.type** %54, %struct.type*** %22, align 8
  store i32 0, i32* %19, align 4
  br label %55

55:                                               ; preds = %86, %48
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %21, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load %struct.fn_field*, %struct.fn_field** %12, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call %struct.TYPE_2__* @TYPE_FN_FIELD_ARGS(%struct.fn_field* %63, i32 %64)
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.type*, %struct.type** %69, align 8
  br label %80

71:                                               ; preds = %59
  %72 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.symbol*, %struct.symbol** %72, i64 %74
  %76 = load %struct.symbol*, %struct.symbol** %75, align 8
  %77 = call i32 @SYMBOL_TYPE(%struct.symbol* %76)
  %78 = load i32, i32* %19, align 4
  %79 = call %struct.type* @TYPE_FIELD_TYPE(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %62
  %81 = phi %struct.type* [ %70, %62 ], [ %79, %71 ]
  %82 = load %struct.type**, %struct.type*** %22, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.type*, %struct.type** %82, i64 %84
  store %struct.type* %81, %struct.type** %85, align 8
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %55

89:                                               ; preds = %55
  %90 = load %struct.type**, %struct.type*** %22, align 8
  %91 = load i32, i32* %21, align 4
  %92 = load %struct.type**, %struct.type*** %8, align 8
  %93 = load i32, i32* %20, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.type*, %struct.type** %92, i64 %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %20, align 4
  %98 = sub nsw i32 %96, %97
  %99 = call %struct.badness_vector* @rank_function(%struct.type** %90, i32 %91, %struct.type** %95, i32 %98)
  store %struct.badness_vector* %99, %struct.badness_vector** %16, align 8
  %100 = load %struct.badness_vector**, %struct.badness_vector*** %14, align 8
  %101 = load %struct.badness_vector*, %struct.badness_vector** %100, align 8
  %102 = icmp ne %struct.badness_vector* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %89
  %104 = load %struct.badness_vector*, %struct.badness_vector** %16, align 8
  %105 = load %struct.badness_vector**, %struct.badness_vector*** %14, align 8
  store %struct.badness_vector* %104, %struct.badness_vector** %105, align 8
  store i32 0, i32* %17, align 4
  br label %120

106:                                              ; preds = %89
  %107 = load %struct.badness_vector*, %struct.badness_vector** %16, align 8
  %108 = load %struct.badness_vector**, %struct.badness_vector*** %14, align 8
  %109 = load %struct.badness_vector*, %struct.badness_vector** %108, align 8
  %110 = call i32 @compare_badness(%struct.badness_vector* %107, %struct.badness_vector* %109)
  switch i32 %110, label %118 [
    i32 0, label %111
    i32 1, label %112
    i32 2, label %113
    i32 3, label %117
  ]

111:                                              ; preds = %106
  store i32 1, i32* %18, align 4
  br label %119

112:                                              ; preds = %106
  store i32 2, i32* %18, align 4
  br label %119

113:                                              ; preds = %106
  %114 = load %struct.badness_vector*, %struct.badness_vector** %16, align 8
  %115 = load %struct.badness_vector**, %struct.badness_vector*** %14, align 8
  store %struct.badness_vector* %114, %struct.badness_vector** %115, align 8
  store i32 0, i32* %18, align 4
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %17, align 4
  br label %119

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %106, %117
  br label %119

119:                                              ; preds = %118, %113, %112, %111
  br label %120

120:                                              ; preds = %119, %103
  %121 = load %struct.type**, %struct.type*** %22, align 8
  %122 = call i32 @xfree(%struct.type** %121)
  %123 = load i64, i64* @overload_debug, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %174

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* @gdb_stderr, align 4
  %130 = load %struct.fn_field*, %struct.fn_field** %12, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.fn_field, %struct.fn_field* %130, i64 %132
  %134 = getelementptr inbounds %struct.fn_field, %struct.fn_field* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %21, align 4
  %137 = call i32 @fprintf_filtered(i32 %129, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %136)
  br label %148

138:                                              ; preds = %125
  %139 = load i32, i32* @gdb_stderr, align 4
  %140 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.symbol*, %struct.symbol** %140, i64 %142
  %144 = load %struct.symbol*, %struct.symbol** %143, align 8
  %145 = call i32 @SYMBOL_DEMANGLED_NAME(%struct.symbol* %144)
  %146 = load i32, i32* %21, align 4
  %147 = call i32 @fprintf_filtered(i32 %139, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %138, %128
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %166, %148
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %20, align 4
  %153 = sub nsw i32 %151, %152
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %149
  %156 = load i32, i32* @gdb_stderr, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load %struct.badness_vector*, %struct.badness_vector** %16, align 8
  %159 = getelementptr inbounds %struct.badness_vector, %struct.badness_vector* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @fprintf_filtered(i32 %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %157, i32 %164)
  br label %166

166:                                              ; preds = %155
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %19, align 4
  br label %149

169:                                              ; preds = %149
  %170 = load i32, i32* @gdb_stderr, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @fprintf_filtered(i32 %170, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %169, %120
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  br label %24

178:                                              ; preds = %24
  %179 = load i32, i32* %17, align 4
  ret i32 %179
}

declare dso_local i32 @oload_method_static(i32, %struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_NFIELDS(i32) #1

declare dso_local i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field*, i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local %struct.TYPE_2__* @TYPE_FN_FIELD_ARGS(%struct.fn_field*, i32) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(i32, i32) #1

declare dso_local %struct.badness_vector* @rank_function(%struct.type**, i32, %struct.type**, i32) #1

declare dso_local i32 @compare_badness(%struct.badness_vector*, %struct.badness_vector*) #1

declare dso_local i32 @xfree(%struct.type**) #1

declare dso_local i32 @fprintf_filtered(i32, i8*, i32, i32) #1

declare dso_local i32 @SYMBOL_DEMANGLED_NAME(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
