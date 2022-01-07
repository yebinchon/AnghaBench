; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_parse_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_msgpack_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8 }
%struct.TYPE_5__ = type { i32 }
%struct.ucl_stack = type { i32 }

@UCL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_stack*, i64, i32, i8*, i64)* @ucl_msgpack_parse_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_msgpack_parse_int(%struct.ucl_parser* %0, %struct.ucl_stack* %1, i64 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucl_parser*, align 8
  %9 = alloca %struct.ucl_stack*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %8, align 8
  store %struct.ucl_stack* %1, %struct.ucl_stack** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %13, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %136

26:                                               ; preds = %6
  %27 = load i32, i32* @UCL_INT, align 4
  %28 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %29 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_7__* @ucl_object_new_full(i32 %27, i32 %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %14, align 8
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %128 [
    i32 132, label %35
    i32 133, label %44
    i32 128, label %54
    i32 134, label %60
    i32 137, label %68
    i32 131, label %78
    i32 136, label %88
    i32 130, label %98
    i32 135, label %108
    i32 129, label %118
  ]

35:                                               ; preds = %26
  %36 = load i8*, i8** %12, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 127
  %40 = trunc i32 %39 to i8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i8 %40, i8* %43, align 1
  store i64 1, i64* %10, align 8
  br label %130

44:                                               ; preds = %26
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 31
  %49 = sub nsw i32 0, %48
  %50 = trunc i32 %49 to i8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i8 %50, i8* %53, align 1
  store i64 1, i64* %10, align 8
  br label %130

54:                                               ; preds = %26
  %55 = load i8*, i8** %12, align 8
  %56 = load i8, i8* %55, align 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i8 %56, i8* %59, align 1
  store i64 1, i64* %10, align 8
  br label %130

60:                                               ; preds = %26
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @memcpy(i8** %15, i8* %61, i32 8)
  %63 = load i8*, i8** %15, align 8
  %64 = ptrtoint i8* %63 to i8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i8 %64, i8* %67, align 1
  store i64 1, i64* %10, align 8
  br label %130

68:                                               ; preds = %26
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @memcpy(i8** %16, i8* %69, i32 8)
  %71 = load i8*, i8** %16, align 8
  %72 = call i8* @FROM_BE16(i8* %71)
  store i8* %72, i8** %16, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = ptrtoint i8* %73 to i8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8 %74, i8* %77, align 1
  store i64 2, i64* %10, align 8
  br label %130

78:                                               ; preds = %26
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @memcpy(i8** %19, i8* %79, i32 8)
  %81 = load i8*, i8** %19, align 8
  %82 = call i8* @FROM_BE16(i8* %81)
  store i8* %82, i8** %19, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = ptrtoint i8* %83 to i8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i8 %84, i8* %87, align 1
  store i64 2, i64* %10, align 8
  br label %130

88:                                               ; preds = %26
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @memcpy(i8** %17, i8* %89, i32 8)
  %91 = load i8*, i8** %17, align 8
  %92 = call i8* @FROM_BE32(i8* %91)
  store i8* %92, i8** %17, align 8
  %93 = load i8*, i8** %17, align 8
  %94 = ptrtoint i8* %93 to i8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i8 %94, i8* %97, align 1
  store i64 4, i64* %10, align 8
  br label %130

98:                                               ; preds = %26
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @memcpy(i8** %20, i8* %99, i32 8)
  %101 = load i8*, i8** %20, align 8
  %102 = call i8* @FROM_BE32(i8* %101)
  store i8* %102, i8** %20, align 8
  %103 = load i8*, i8** %20, align 8
  %104 = ptrtoint i8* %103 to i8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i8 %104, i8* %107, align 1
  store i64 4, i64* %10, align 8
  br label %130

108:                                              ; preds = %26
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @memcpy(i8** %18, i8* %109, i32 8)
  %111 = load i8*, i8** %18, align 8
  %112 = call i8* @FROM_BE64(i8* %111)
  store i8* %112, i8** %18, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = ptrtoint i8* %113 to i8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i8 %114, i8* %117, align 1
  store i64 8, i64* %10, align 8
  br label %130

118:                                              ; preds = %26
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @memcpy(i8** %21, i8* %119, i32 8)
  %121 = load i8*, i8** %21, align 8
  %122 = call i8* @FROM_BE64(i8* %121)
  store i8* %122, i8** %21, align 8
  %123 = load i8*, i8** %21, align 8
  %124 = ptrtoint i8* %123 to i8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i8 %124, i8* %127, align 1
  store i64 8, i64* %10, align 8
  br label %130

128:                                              ; preds = %26
  %129 = call i32 @assert(i32 0)
  br label %130

130:                                              ; preds = %128, %118, %108, %98, %88, %78, %68, %60, %54, %44, %35
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %132 = load %struct.ucl_parser*, %struct.ucl_parser** %8, align 8
  %133 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %132, i32 0, i32 0
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %133, align 8
  %134 = load i64, i64* %10, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %130, %25
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_7__* @ucl_object_new_full(i32, i32) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

declare dso_local i8* @FROM_BE16(i8*) #1

declare dso_local i8* @FROM_BE32(i8*) #1

declare dso_local i8* @FROM_BE64(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
