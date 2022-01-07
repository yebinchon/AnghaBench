; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_insert_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_insert_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32, i32, %struct.ucl_stack* }
%struct.ucl_stack = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i8*, i64 }

@UCL_ARRAY = common dso_local global i64 0, align 8
@UCL_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"cannot insert object with no key\00", align 1
@UCL_PARSER_ZEROCOPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bad container type\00", align 1
@MSGPACK_CONTAINER_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, i8*, i64, %struct.TYPE_7__*)* @ucl_msgpack_insert_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_msgpack_insert_object(%struct.ucl_parser* %0, i8* %1, i64 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucl_parser*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucl_stack*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %12 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %13 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %12, i32 0, i32 2
  %14 = load %struct.ucl_stack*, %struct.ucl_stack** %13, align 8
  store %struct.ucl_stack* %14, %struct.ucl_stack** %11, align 8
  %15 = load %struct.ucl_stack*, %struct.ucl_stack** %11, align 8
  %16 = icmp ne %struct.ucl_stack* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.ucl_stack*, %struct.ucl_stack** %11, align 8
  %20 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.ucl_stack*, %struct.ucl_stack** %11, align 8
  %30 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.ucl_stack*, %struct.ucl_stack** %11, align 8
  %36 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UCL_ARRAY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %4
  %43 = load %struct.ucl_stack*, %struct.ucl_stack** %11, align 8
  %44 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = call i32 @ucl_array_append(%struct.TYPE_8__* %45, %struct.TYPE_7__* %46)
  br label %91

48:                                               ; preds = %4
  %49 = load %struct.ucl_stack*, %struct.ucl_stack** %11, align 8
  %50 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UCL_OBJECT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %48
  %57 = load i8*, i8** %7, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59, %56
  %63 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %64 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %63, i32 0, i32 1
  %65 = call i32 @ucl_create_err(i32* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %112

66:                                               ; preds = %59
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %74 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @UCL_PARSER_ZEROCOPY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %66
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = call i32 @ucl_copy_key_trash(%struct.TYPE_7__* %80)
  br label %82

82:                                               ; preds = %79, %66
  %83 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = call i32 @ucl_parser_process_object_element(%struct.ucl_parser* %83, %struct.TYPE_7__* %84)
  br label %90

86:                                               ; preds = %48
  %87 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %88 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %87, i32 0, i32 1
  %89 = call i32 @ucl_create_err(i32* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %112

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %42
  %92 = load %struct.ucl_stack*, %struct.ucl_stack** %11, align 8
  %93 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MSGPACK_CONTAINER_BIT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load %struct.ucl_stack*, %struct.ucl_stack** %11, align 8
  %100 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MSGPACK_CONTAINER_BIT, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* @MSGPACK_CONTAINER_BIT, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.ucl_stack*, %struct.ucl_stack** %11, align 8
  %110 = getelementptr inbounds %struct.ucl_stack, %struct.ucl_stack* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %98, %91
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %86, %62
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ucl_array_append(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @ucl_create_err(i32*, i8*) #1

declare dso_local i32 @ucl_copy_key_trash(%struct.TYPE_7__*) #1

declare dso_local i32 @ucl_parser_process_object_element(%struct.ucl_parser*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
