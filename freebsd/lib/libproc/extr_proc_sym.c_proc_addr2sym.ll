; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_proc_addr2sym.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_proc_addr2sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.file_info = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.map_info = type { %struct.TYPE_7__, %struct.file_info* }
%struct.TYPE_7__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"ERROR: proc_addr2map failed to resolve 0x%jx\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: failed to open object %s\00", align 1
@ET_DYN = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_addr2sym(%struct.proc_handle* %0, i64 %1, i8* %2, i64 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc_handle*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.file_info*, align 8
  %13 = alloca %struct.map_info*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %11, align 8
  %17 = load %struct.proc_handle*, %struct.proc_handle** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.map_info* @_proc_addr2map(%struct.proc_handle* %17, i64 %18)
  store %struct.map_info* %19, %struct.map_info** %13, align 8
  %20 = icmp eq %struct.map_info* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @DPRINTFX(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %22)
  store i32 -1, i32* %6, align 4
  br label %101

24:                                               ; preds = %5
  %25 = load %struct.map_info*, %struct.map_info** %13, align 8
  %26 = call i64 @open_object(%struct.map_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.map_info*, %struct.map_info** %13, align 8
  %30 = getelementptr inbounds %struct.map_info, %struct.map_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @DPRINTFX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  store i32 -1, i32* %6, align 4
  br label %101

34:                                               ; preds = %24
  %35 = load %struct.map_info*, %struct.map_info** %13, align 8
  %36 = getelementptr inbounds %struct.map_info, %struct.map_info* %35, i32 0, i32 1
  %37 = load %struct.file_info*, %struct.file_info** %36, align 8
  store %struct.file_info* %37, %struct.file_info** %12, align 8
  %38 = load %struct.file_info*, %struct.file_info** %12, align 8
  %39 = getelementptr inbounds %struct.file_info, %struct.file_info* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ET_DYN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load %struct.map_info*, %struct.map_info** %13, align 8
  %46 = getelementptr inbounds %struct.map_info, %struct.map_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.map_info*, %struct.map_info** %13, align 8
  %50 = getelementptr inbounds %struct.map_info, %struct.map_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %48, %52
  br label %55

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %44
  %56 = phi i64 [ %53, %44 ], [ 0, %54 ]
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %15, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOENT, align 4
  store i32 %61, i32* %6, align 4
  br label %101

62:                                               ; preds = %55
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load %struct.file_info*, %struct.file_info** %12, align 8
  %67 = getelementptr inbounds %struct.file_info, %struct.file_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.file_info*, %struct.file_info** %12, align 8
  %70 = getelementptr inbounds %struct.file_info, %struct.file_info* %69, i32 0, i32 2
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = call i32 @lookup_symbol_by_addr(i32 %68, i32* %70, i64 %71, i8** %14, %struct.TYPE_8__* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @ENOENT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %62
  %78 = load %struct.file_info*, %struct.file_info** %12, align 8
  %79 = getelementptr inbounds %struct.file_info, %struct.file_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.file_info*, %struct.file_info** %12, align 8
  %82 = getelementptr inbounds %struct.file_info, %struct.file_info* %81, i32 0, i32 0
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %85 = call i32 @lookup_symbol_by_addr(i32 %80, i32* %82, i64 %83, i8** %14, %struct.TYPE_8__* %84)
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %77, %62
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i64, i64* %15, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @demangle(i8* %95, i8* %96, i64 %97)
  br label %99

99:                                               ; preds = %89, %86
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %60, %28, %21
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.map_info* @_proc_addr2map(%struct.proc_handle*, i64) #1

declare dso_local i32 @DPRINTFX(i8*, i64) #1

declare dso_local i64 @open_object(%struct.map_info*) #1

declare dso_local i32 @lookup_symbol_by_addr(i32, i32*, i64, i8**, %struct.TYPE_8__*) #1

declare dso_local i32 @demangle(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
