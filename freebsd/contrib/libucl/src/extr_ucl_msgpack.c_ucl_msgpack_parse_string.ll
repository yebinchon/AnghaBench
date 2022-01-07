; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_parse_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i32, i32**, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.ucl_stack = type { i32 }

@UCL_STRING = common dso_local global i32 0, align 4
@msgpack_bin8 = common dso_local global i32 0, align 4
@msgpack_bin32 = common dso_local global i32 0, align 4
@UCL_OBJECT_BINARY = common dso_local global i32 0, align 4
@UCL_PARSER_ZEROCOPY = common dso_local global i32 0, align 4
@UCL_TRASH_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_stack*, i64, i32, i8*, i64)* @ucl_msgpack_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_msgpack_parse_string(%struct.ucl_parser* %0, %struct.ucl_stack* %1, i64 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucl_parser*, align 8
  %9 = alloca %struct.ucl_stack*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %8, align 8
  store %struct.ucl_stack* %1, %struct.ucl_stack** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %13, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %97

19:                                               ; preds = %6
  %20 = load i32, i32* @UCL_STRING, align 4
  %21 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %22 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_8__* @ucl_object_new_full(i32 %20, i32 %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %14, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @msgpack_bin8, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %19
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @msgpack_bin32, align 4
  %40 = icmp ule i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @UCL_OBJECT_BINARY, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %37, %19
  %48 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %49 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @UCL_PARSER_ZEROCOPY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %91, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @UCL_OBJECT_BINARY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %54
  %62 = load i64, i64* %10, align 8
  %63 = call i32* @malloc(i64 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  %67 = load i64, i64* @UCL_TRASH_VALUE, align 8
  %68 = getelementptr inbounds i32*, i32** %66, i64 %67
  store i32* %63, i32** %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32**, i32*** %70, align 8
  %72 = load i64, i64* @UCL_TRASH_VALUE, align 8
  %73 = getelementptr inbounds i32*, i32** %71, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %61
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32**, i32*** %78, align 8
  %80 = load i64, i64* @UCL_TRASH_VALUE, align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @memcpy(i32* %82, i8* %83, i64 %84)
  br label %86

86:                                               ; preds = %76, %61
  br label %90

87:                                               ; preds = %54
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %89 = call i32 @ucl_copy_value_trash(%struct.TYPE_8__* %88)
  br label %90

90:                                               ; preds = %87, %86
  br label %91

91:                                               ; preds = %90, %47
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %93 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %94 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %93, i32 0, i32 1
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %94, align 8
  %95 = load i64, i64* %10, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %91, %18
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_8__* @ucl_object_new_full(i32, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @ucl_copy_value_trash(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
