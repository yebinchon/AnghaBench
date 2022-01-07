; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_packed_data.c_svn_packed__data_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_packed_data.c_svn_packed__data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__*, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_24__* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_packed__data_read(%struct.TYPE_25__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_25__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_25__** %0, %struct.TYPE_25__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.TYPE_25__* @svn_packed__data_create_root(i32* %20)
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %13, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call %struct.TYPE_23__* @svn_stringbuf_create_ensure(i32 1024, i32* %22)
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %14, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call %struct.TYPE_23__* @svn_stringbuf_create_ensure(i32 1024, i32* %24)
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %15, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @read_stream_uint(i32* %26, i64* %16)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i64, i64* %16, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32*, i32** %8, align 8
  %32 = call %struct.TYPE_23__* @svn_stringbuf_create_ensure(i32 %30, i32* %31)
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %17, align 8
  %33 = load i64, i64* %16, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = call i32 @svn_stream_read_full(i32* %37, i8* %40, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %54 = call i64 @read_packed_uint(%struct.TYPE_23__* %53)
  store i64 %54, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %66, %4
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = call i32 @svn_packed__create_int_stream(%struct.TYPE_25__* %61, i32 %62, i32 %63)
  %65 = call i32 @read_int_stream_structure(%struct.TYPE_23__* %60, i32 %64)
  br label %66

66:                                               ; preds = %59
  %67 = load i64, i64* %9, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %9, align 8
  br label %55

69:                                               ; preds = %55
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %71 = call i64 @read_packed_uint(%struct.TYPE_23__* %70)
  store i64 %71, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %72

72:                                               ; preds = %84, %69
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %79 = call i32 @create_bytes_stream_body(%struct.TYPE_25__* %78)
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %81, align 8
  %83 = call i32 @read_byte_stream_structure(%struct.TYPE_23__* %77, i32 %79, %struct.TYPE_24__* %82)
  br label %84

84:                                               ; preds = %76
  %85 = load i64, i64* %9, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %9, align 8
  br label %72

87:                                               ; preds = %72
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %89, align 8
  store %struct.TYPE_24__* %90, %struct.TYPE_24__** %11, align 8
  br label %91

91:                                               ; preds = %105, %87
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %93 = icmp ne %struct.TYPE_24__* %92, null
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  store i32 0, i32* %18, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %97 = call i32 @packed_int_stream_length(%struct.TYPE_24__* %96)
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %100 = call i32 @read_stream_data(i32* %95, i32 %97, %struct.TYPE_23__* %98, %struct.TYPE_23__* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %104 = call i32 @unflatten_int_stream(%struct.TYPE_24__* %102, %struct.TYPE_23__* %103, i32* %18)
  br label %105

105:                                              ; preds = %94
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to %struct.TYPE_27__*
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  store %struct.TYPE_24__* %111, %struct.TYPE_24__** %11, align 8
  br label %91

112:                                              ; preds = %91
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  store %struct.TYPE_26__* %115, %struct.TYPE_26__** %12, align 8
  br label %116

116:                                              ; preds = %130, %112
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %118 = icmp ne %struct.TYPE_26__* %117, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  store i32 0, i32* %19, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %122 = call i32 @packed_byte_stream_length(%struct.TYPE_26__* %121)
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %125 = call i32 @read_stream_data(i32* %120, i32 %122, %struct.TYPE_23__* %123, %struct.TYPE_23__* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %129 = call i32 @unflatten_byte_stream(%struct.TYPE_26__* %127, %struct.TYPE_23__* %128, i32* %19)
  br label %130

130:                                              ; preds = %119
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %132, align 8
  store %struct.TYPE_26__* %133, %struct.TYPE_26__** %12, align 8
  br label %116

134:                                              ; preds = %116
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %136 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  store %struct.TYPE_25__* %135, %struct.TYPE_25__** %136, align 8
  %137 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %137
}

declare dso_local %struct.TYPE_25__* @svn_packed__data_create_root(i32*) #1

declare dso_local %struct.TYPE_23__* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_stream_uint(i32*, i64*) #1

declare dso_local i32 @svn_stream_read_full(i32*, i8*, i32*) #1

declare dso_local i64 @read_packed_uint(%struct.TYPE_23__*) #1

declare dso_local i32 @read_int_stream_structure(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @svn_packed__create_int_stream(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @read_byte_stream_structure(%struct.TYPE_23__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @create_bytes_stream_body(%struct.TYPE_25__*) #1

declare dso_local i32 @read_stream_data(i32*, i32, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @packed_int_stream_length(%struct.TYPE_24__*) #1

declare dso_local i32 @unflatten_int_stream(%struct.TYPE_24__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @packed_byte_stream_length(%struct.TYPE_26__*) #1

declare dso_local i32 @unflatten_byte_stream(%struct.TYPE_26__*, %struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
