; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_packed_data.c_svn_packed__data_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_packed_data.c_svn_packed__data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__*, %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_packed__data_write(i32* %0, %struct.TYPE_24__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_22__* @svn_stringbuf_create_ensure(i32 1024, i32* %14)
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call %struct.TYPE_22__* @svn_stringbuf_create_ensure(i32 1024, i32* %16)
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_22__* @svn_stringbuf_create_ensure(i32 127, i32* %18)
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %11, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @write_packed_uint(%struct.TYPE_22__* %20, i32 %23)
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = call i32 @write_int_stream_structure(%struct.TYPE_22__* %25, %struct.TYPE_23__* %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @write_packed_uint(%struct.TYPE_22__* %30, i32 %33)
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %37, align 8
  %39 = call i32 @write_byte_stream_structure(%struct.TYPE_22__* %35, %struct.TYPE_25__* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @write_stream_uint(i32* %40, i32 %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = call i32 @svn_stream_write(i32* %46, i32 %49, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %7, align 8
  br label %57

57:                                               ; preds = %74, %3
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %59 = icmp ne %struct.TYPE_23__* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %62 = call i32 @packed_int_stream_length(%struct.TYPE_23__* %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @svn_stringbuf_ensure(%struct.TYPE_22__* %63, i32 %64)
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %68 = call i32 @append_int_stream(%struct.TYPE_23__* %66, %struct.TYPE_22__* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %72 = call i32 @write_stream_data(i32* %69, %struct.TYPE_22__* %70, %struct.TYPE_22__* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  br label %74

74:                                               ; preds = %60
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_26__*
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %79, align 8
  store %struct.TYPE_23__* %80, %struct.TYPE_23__** %7, align 8
  br label %57

81:                                               ; preds = %57
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %83, align 8
  store %struct.TYPE_25__* %84, %struct.TYPE_25__** %8, align 8
  br label %85

85:                                               ; preds = %102, %81
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %87 = icmp ne %struct.TYPE_25__* %86, null
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %90 = call i32 @packed_byte_stream_length(%struct.TYPE_25__* %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @svn_stringbuf_ensure(%struct.TYPE_22__* %91, i32 %92)
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %96 = call i32 @append_byte_stream(%struct.TYPE_25__* %94, %struct.TYPE_22__* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %100 = call i32 @write_stream_data(i32* %97, %struct.TYPE_22__* %98, %struct.TYPE_22__* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %102

102:                                              ; preds = %88
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %104, align 8
  store %struct.TYPE_25__* %105, %struct.TYPE_25__** %8, align 8
  br label %85

106:                                              ; preds = %85
  %107 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %107
}

declare dso_local %struct.TYPE_22__* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local i32 @write_packed_uint(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @write_int_stream_structure(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @write_byte_stream_structure(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @write_stream_uint(i32*, i32) #1

declare dso_local i32 @svn_stream_write(i32*, i32, i32*) #1

declare dso_local i32 @packed_int_stream_length(%struct.TYPE_23__*) #1

declare dso_local i32 @svn_stringbuf_ensure(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @append_int_stream(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @write_stream_data(i32*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @packed_byte_stream_length(%struct.TYPE_25__*) #1

declare dso_local i32 @append_byte_stream(%struct.TYPE_25__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
