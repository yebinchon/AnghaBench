; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_proc_name2sym.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_proc_name2sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.file_info = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.map_info = type { %struct.TYPE_7__, %struct.file_info* }
%struct.TYPE_7__ = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [42 x i8] c"ERROR: proc_name2map failed to resolve %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: failed to open object %s\00", align 1
@ET_DYN = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_name2sym(%struct.proc_handle* %0, i8* %1, i8* %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc_handle*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.file_info*, align 8
  %13 = alloca %struct.map_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.proc_handle*, %struct.proc_handle** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct.map_info* @_proc_name2map(%struct.proc_handle* %16, i8* %17)
  store %struct.map_info* %18, %struct.map_info** %13, align 8
  %19 = icmp eq %struct.map_info* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @DPRINTFX(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 -1, i32* %6, align 4
  br label %89

23:                                               ; preds = %5
  %24 = load %struct.map_info*, %struct.map_info** %13, align 8
  %25 = call i64 @open_object(%struct.map_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.map_info*, %struct.map_info** %13, align 8
  %29 = getelementptr inbounds %struct.map_info, %struct.map_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @DPRINTFX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 -1, i32* %6, align 4
  br label %89

33:                                               ; preds = %23
  %34 = load %struct.map_info*, %struct.map_info** %13, align 8
  %35 = getelementptr inbounds %struct.map_info, %struct.map_info* %34, i32 0, i32 1
  %36 = load %struct.file_info*, %struct.file_info** %35, align 8
  store %struct.file_info* %36, %struct.file_info** %12, align 8
  %37 = load %struct.file_info*, %struct.file_info** %12, align 8
  %38 = getelementptr inbounds %struct.file_info, %struct.file_info* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ET_DYN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %33
  %44 = load %struct.map_info*, %struct.map_info** %13, align 8
  %45 = getelementptr inbounds %struct.map_info, %struct.map_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.map_info*, %struct.map_info** %13, align 8
  %49 = getelementptr inbounds %struct.map_info, %struct.map_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %47, %51
  br label %54

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %43
  %55 = phi i64 [ %52, %43 ], [ 0, %53 ]
  store i64 %55, i64* %14, align 8
  %56 = load %struct.file_info*, %struct.file_info** %12, align 8
  %57 = getelementptr inbounds %struct.file_info, %struct.file_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.file_info*, %struct.file_info** %12, align 8
  %60 = getelementptr inbounds %struct.file_info, %struct.file_info* %59, i32 0, i32 2
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @lookup_symbol_by_name(i32 %58, i32* %60, i8* %61, %struct.TYPE_8__* %62, i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @ENOENT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %54
  %69 = load %struct.file_info*, %struct.file_info** %12, align 8
  %70 = getelementptr inbounds %struct.file_info, %struct.file_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.file_info*, %struct.file_info** %12, align 8
  %73 = getelementptr inbounds %struct.file_info, %struct.file_info* %72, i32 0, i32 0
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @lookup_symbol_by_name(i32 %71, i32* %73, i8* %74, %struct.TYPE_8__* %75, i32* %76)
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %68, %54
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i64, i64* %14, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %27, %20
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.map_info* @_proc_name2map(%struct.proc_handle*, i8*) #1

declare dso_local i32 @DPRINTFX(i8*, i8*) #1

declare dso_local i64 @open_object(%struct.map_info*) #1

declare dso_local i32 @lookup_symbol_by_name(i32, i32*, i8*, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
