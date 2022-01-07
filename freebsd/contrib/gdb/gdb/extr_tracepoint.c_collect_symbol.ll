; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_collect_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_collect_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collection_list = type { i32 }
%struct.symbol = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s: don't know symbol class %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"constant %s (value %ld) will not be collected.\0A\00", align 1
@info_verbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"LOC_STATIC %s: collect %ld bytes at %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"LOC_REG[parm] %s: \00", align 1
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Sorry, don't know how to do LOC_REF_ARG yet.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"       (will not collect %s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"LOC_LOCAL %s: Collect %ld bytes at offset \00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c" from frame ptr reg %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"LOC_REGPARM_ADDR %s: Collect %ld bytes at offset \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" from reg %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"LOC_BASEREG %s: collect %ld bytes at offset \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c" from basereg %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Don't know LOC_UNRESOLVED %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"%s has been optimized out of existence.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.collection_list*, %struct.symbol*, i64, i64)* @collect_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_symbol(%struct.collection_list* %0, %struct.symbol* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.collection_list*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [40 x i8], align 16
  store %struct.collection_list* %0, %struct.collection_list** %5, align 8
  store %struct.symbol* %1, %struct.symbol** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.symbol*, %struct.symbol** %6, align 8
  %14 = call i32 @SYMBOL_TYPE(%struct.symbol* %13)
  %15 = call i32 @check_typedef(i32 %14)
  %16 = call i64 @TYPE_LENGTH(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.symbol*, %struct.symbol** %6, align 8
  %18 = call i32 @SYMBOL_CLASS(%struct.symbol* %17)
  switch i32 %18, label %19 [
    i32 137, label %25
    i32 129, label %31
    i32 132, label %50
    i32 131, label %50
    i32 133, label %80
    i32 140, label %85
    i32 130, label %109
    i32 136, label %130
    i32 135, label %130
    i32 139, label %154
    i32 138, label %154
    i32 128, label %176
    i32 134, label %180
  ]

19:                                               ; preds = %4
  %20 = load %struct.symbol*, %struct.symbol** %6, align 8
  %21 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %20)
  %22 = load %struct.symbol*, %struct.symbol** %6, align 8
  %23 = call i32 @SYMBOL_CLASS(%struct.symbol* %22)
  %24 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  br label %184

25:                                               ; preds = %4
  %26 = load %struct.symbol*, %struct.symbol** %6, align 8
  %27 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %26)
  %28 = load %struct.symbol*, %struct.symbol** %6, align 8
  %29 = call i8* @SYMBOL_VALUE(%struct.symbol* %28)
  %30 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %27, i8* %29)
  br label %184

31:                                               ; preds = %4
  %32 = load %struct.symbol*, %struct.symbol** %6, align 8
  %33 = call i8* @SYMBOL_VALUE_ADDRESS(%struct.symbol* %32)
  store i8* %33, i8** %11, align 8
  %34 = load i32, i32* @info_verbose, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @sprintf_vma(i8* %37, i8* %38)
  %40 = load %struct.symbol*, %struct.symbol** %6, align 8
  %41 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %40)
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %44 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %41, i64 %42, i8* %43)
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @add_memrange(%struct.collection_list* %46, i32 -1, i8* %47, i64 %48)
  br label %184

50:                                               ; preds = %4, %4
  %51 = load %struct.symbol*, %struct.symbol** %6, align 8
  %52 = call i8* @SYMBOL_VALUE(%struct.symbol* %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @info_verbose, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.symbol*, %struct.symbol** %6, align 8
  %58 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %57)
  %59 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @add_register(%struct.collection_list* %61, i32 %62)
  %64 = load %struct.symbol*, %struct.symbol** %6, align 8
  %65 = call i32 @SYMBOL_TYPE(%struct.symbol* %64)
  %66 = call i32 @TYPE_CODE(i32 %65)
  %67 = load i32, i32* @TYPE_CODE_FLT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @DEPRECATED_REGISTER_RAW_SIZE(i32 %71)
  %73 = icmp ugt i64 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  %78 = call i32 @add_register(%struct.collection_list* %75, i32 %77)
  br label %79

79:                                               ; preds = %74, %69, %60
  br label %184

80:                                               ; preds = %4
  %81 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %82 = load %struct.symbol*, %struct.symbol** %6, align 8
  %83 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %82)
  %84 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  br label %184

85:                                               ; preds = %4
  %86 = load i64, i64* %7, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.symbol*, %struct.symbol** %6, align 8
  %90 = call i8* @SYMBOL_VALUE(%struct.symbol* %89)
  %91 = getelementptr i8, i8* %90, i64 %88
  store i8* %91, i8** %11, align 8
  %92 = load i32, i32* @info_verbose, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %85
  %95 = load %struct.symbol*, %struct.symbol** %6, align 8
  %96 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %95)
  %97 = load i64, i64* %9, align 8
  %98 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %96, i64 %97)
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @printf_vma(i8* %99)
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %94, %85
  %104 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i8*, i8** %11, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @add_memrange(%struct.collection_list* %104, i32 %105, i8* %106, i64 %107)
  br label %184

109:                                              ; preds = %4
  %110 = load %struct.symbol*, %struct.symbol** %6, align 8
  %111 = call i8* @SYMBOL_VALUE(%struct.symbol* %110)
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %113 = load i32, i32* @info_verbose, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load %struct.symbol*, %struct.symbol** %6, align 8
  %117 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %116)
  %118 = load i64, i64* %9, align 8
  %119 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %117, i64 %118)
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @printf_vma(i8* %120)
  %122 = load i32, i32* %10, align 4
  %123 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %115, %109
  %125 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i8*, i8** %11, align 8
  %128 = load i64, i64* %9, align 8
  %129 = call i32 @add_memrange(%struct.collection_list* %125, i32 %126, i8* %127, i64 %128)
  br label %184

130:                                              ; preds = %4, %4
  %131 = load i64, i64* %7, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %10, align 4
  %133 = load i64, i64* %8, align 8
  %134 = load %struct.symbol*, %struct.symbol** %6, align 8
  %135 = call i8* @SYMBOL_VALUE(%struct.symbol* %134)
  %136 = getelementptr i8, i8* %135, i64 %133
  store i8* %136, i8** %11, align 8
  %137 = load i32, i32* @info_verbose, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %130
  %140 = load %struct.symbol*, %struct.symbol** %6, align 8
  %141 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %140)
  %142 = load i64, i64* %9, align 8
  %143 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %141, i64 %142)
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 @printf_vma(i8* %144)
  %146 = load i32, i32* %10, align 4
  %147 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %139, %130
  %149 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = load i64, i64* %9, align 8
  %153 = call i32 @add_memrange(%struct.collection_list* %149, i32 %150, i8* %151, i64 %152)
  br label %184

154:                                              ; preds = %4, %4
  %155 = load %struct.symbol*, %struct.symbol** %6, align 8
  %156 = call i32 @SYMBOL_BASEREG(%struct.symbol* %155)
  store i32 %156, i32* %10, align 4
  %157 = load %struct.symbol*, %struct.symbol** %6, align 8
  %158 = call i8* @SYMBOL_VALUE(%struct.symbol* %157)
  store i8* %158, i8** %11, align 8
  %159 = load i32, i32* @info_verbose, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %154
  %162 = load %struct.symbol*, %struct.symbol** %6, align 8
  %163 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %162)
  %164 = load i64, i64* %9, align 8
  %165 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %163, i64 %164)
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @printf_vma(i8* %166)
  %168 = load i32, i32* %10, align 4
  %169 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %161, %154
  %171 = load %struct.collection_list*, %struct.collection_list** %5, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i8*, i8** %11, align 8
  %174 = load i64, i64* %9, align 8
  %175 = call i32 @add_memrange(%struct.collection_list* %171, i32 %172, i8* %173, i64 %174)
  br label %184

176:                                              ; preds = %4
  %177 = load %struct.symbol*, %struct.symbol** %6, align 8
  %178 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %177)
  %179 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %178)
  br label %184

180:                                              ; preds = %4
  %181 = load %struct.symbol*, %struct.symbol** %6, align 8
  %182 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %181)
  %183 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %180, %176, %170, %148, %124, %103, %80, %79, %45, %25, %19
  ret void
}

declare dso_local i64 @TYPE_LENGTH(i32) #1

declare dso_local i32 @check_typedef(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i8* @SYMBOL_VALUE(%struct.symbol*) #1

declare dso_local i8* @SYMBOL_VALUE_ADDRESS(%struct.symbol*) #1

declare dso_local i32 @sprintf_vma(i8*, i8*) #1

declare dso_local i32 @add_memrange(%struct.collection_list*, i32, i8*, i64) #1

declare dso_local i32 @add_register(%struct.collection_list*, i32) #1

declare dso_local i32 @TYPE_CODE(i32) #1

declare dso_local i64 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i32 @printf_vma(i8*) #1

declare dso_local i32 @SYMBOL_BASEREG(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
