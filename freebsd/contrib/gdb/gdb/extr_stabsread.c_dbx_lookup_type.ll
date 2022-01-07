; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_dbx_lookup_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_dbx_lookup_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.header_file = type { i32, %struct.type** }

@n_this_object_header_files = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Invalid symbol data: type number (%d,%d) out of range at symtab pos %d.\00", align 1
@symnum = common dso_local global i32 0, align 4
@dbx_lookup_type.temp_type = internal global %struct.type* null, align 8
@type_vector_length = common dso_local global i32 0, align 4
@INITIAL_TYPE_VECTOR_LENGTH = common dso_local global i32 0, align 4
@type_vector = common dso_local global %struct.type** null, align 8
@this_object_header_files = common dso_local global i32* null, align 8
@current_objfile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"GDB internal error: bad real_filenum\00", align 1
@TYPE_CODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type** (i32*)* @dbx_lookup_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type** @dbx_lookup_type(i32* %0) #0 {
  %2 = alloca %struct.type**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.header_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.type*, align 8
  %11 = alloca %struct.type**, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.type** null, %struct.type*** %2, align 8
  br label %172

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @n_this_object_header_files, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @symnum, align 4
  %32 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  br label %103

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %91

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.type* @rs6000_builtin_type(i32 %40)
  store %struct.type* %41, %struct.type** @dbx_lookup_type.temp_type, align 8
  store %struct.type** @dbx_lookup_type.temp_type, %struct.type*** %2, align 8
  br label %172

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @type_vector_length, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load i32, i32* @type_vector_length, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* @INITIAL_TYPE_VECTOR_LENGTH, align 4
  store i32 %51, i32* @type_vector_length, align 4
  %52 = load i32, i32* @type_vector_length, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call i64 @xmalloc(i32 %55)
  %57 = inttoptr i64 %56 to %struct.type**
  store %struct.type** %57, %struct.type*** @type_vector, align 8
  br label %58

58:                                               ; preds = %50, %46
  br label %59

59:                                               ; preds = %63, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @type_vector_length, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @type_vector_length, align 4
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* @type_vector_length, align 4
  br label %59

66:                                               ; preds = %59
  %67 = load %struct.type**, %struct.type*** @type_vector, align 8
  %68 = bitcast %struct.type** %67 to i8*
  %69 = load i32, i32* @type_vector_length, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @xrealloc(i8* %68, i32 %72)
  %74 = inttoptr i64 %73 to %struct.type**
  store %struct.type** %74, %struct.type*** @type_vector, align 8
  %75 = load %struct.type**, %struct.type*** @type_vector, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.type*, %struct.type** %75, i64 %77
  %79 = load i32, i32* @type_vector_length, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(%struct.type** %78, i32 0, i32 %84)
  br label %86

86:                                               ; preds = %66, %42
  %87 = load %struct.type**, %struct.type*** @type_vector, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.type*, %struct.type** %87, i64 %89
  store %struct.type** %90, %struct.type*** %2, align 8
  br label %172

91:                                               ; preds = %33
  %92 = load i32*, i32** @this_object_header_files, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @current_objfile, align 4
  %99 = call i32 @N_HEADER_FILES(i32 %98)
  %100 = icmp sge i32 %97, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %91
  %102 = call i32 @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %28
  %104 = load i32, i32* @TYPE_CODE_ERROR, align 4
  %105 = call %struct.type* @init_type(i32 %104, i32 0, i32 0, i32* null, i32* null)
  store %struct.type* %105, %struct.type** %10, align 8
  %106 = call i64 @xmalloc(i32 8)
  %107 = inttoptr i64 %106 to %struct.type**
  store %struct.type** %107, %struct.type*** %11, align 8
  %108 = load %struct.type*, %struct.type** %10, align 8
  %109 = load %struct.type**, %struct.type*** %11, align 8
  store %struct.type* %108, %struct.type** %109, align 8
  %110 = load %struct.type**, %struct.type*** %11, align 8
  store %struct.type** %110, %struct.type*** %2, align 8
  br label %172

111:                                              ; preds = %91
  %112 = load i32, i32* @current_objfile, align 4
  %113 = call %struct.header_file* @HEADER_FILES(i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.header_file, %struct.header_file* %113, i64 %115
  store %struct.header_file* %116, %struct.header_file** %8, align 8
  %117 = load %struct.header_file*, %struct.header_file** %8, align 8
  %118 = getelementptr inbounds %struct.header_file, %struct.header_file* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %165

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %130, %123
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.header_file*, %struct.header_file** %8, align 8
  %127 = getelementptr inbounds %struct.header_file, %struct.header_file* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %125, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.header_file*, %struct.header_file** %8, align 8
  %132 = getelementptr inbounds %struct.header_file, %struct.header_file* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 %133, 2
  store i32 %134, i32* %132, align 8
  br label %124

135:                                              ; preds = %124
  %136 = load %struct.header_file*, %struct.header_file** %8, align 8
  %137 = getelementptr inbounds %struct.header_file, %struct.header_file* %136, i32 0, i32 1
  %138 = load %struct.type**, %struct.type*** %137, align 8
  %139 = bitcast %struct.type** %138 to i8*
  %140 = load %struct.header_file*, %struct.header_file** %8, align 8
  %141 = getelementptr inbounds %struct.header_file, %struct.header_file* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 8
  %145 = trunc i64 %144 to i32
  %146 = call i64 @xrealloc(i8* %139, i32 %145)
  %147 = inttoptr i64 %146 to %struct.type**
  %148 = load %struct.header_file*, %struct.header_file** %8, align 8
  %149 = getelementptr inbounds %struct.header_file, %struct.header_file* %148, i32 0, i32 1
  store %struct.type** %147, %struct.type*** %149, align 8
  %150 = load %struct.header_file*, %struct.header_file** %8, align 8
  %151 = getelementptr inbounds %struct.header_file, %struct.header_file* %150, i32 0, i32 1
  %152 = load %struct.type**, %struct.type*** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.type*, %struct.type** %152, i64 %154
  %156 = load %struct.header_file*, %struct.header_file** %8, align 8
  %157 = getelementptr inbounds %struct.header_file, %struct.header_file* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @memset(%struct.type** %155, i32 0, i32 %163)
  br label %165

165:                                              ; preds = %135, %111
  %166 = load %struct.header_file*, %struct.header_file** %8, align 8
  %167 = getelementptr inbounds %struct.header_file, %struct.header_file* %166, i32 0, i32 1
  %168 = load %struct.type**, %struct.type*** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.type*, %struct.type** %168, i64 %170
  store %struct.type** %171, %struct.type*** %2, align 8
  br label %172

172:                                              ; preds = %165, %103, %86, %39, %20
  %173 = load %struct.type**, %struct.type*** %2, align 8
  ret %struct.type** %173
}

declare dso_local i32 @complaint(i32*, i8*, i32, i32, i32) #1

declare dso_local %struct.type* @rs6000_builtin_type(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @memset(%struct.type**, i32, i32) #1

declare dso_local i32 @N_HEADER_FILES(i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local %struct.type* @init_type(i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.header_file* @HEADER_FILES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
