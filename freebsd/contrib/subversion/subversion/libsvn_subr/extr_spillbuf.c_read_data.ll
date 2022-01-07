; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memblock_t = type { i64, i32, %struct.memblock_t* }
%struct.TYPE_5__ = type { i64, i64, i64, i32*, i32, %struct.memblock_t*, %struct.memblock_t* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.memblock_t**, %struct.TYPE_5__*, i32*)* @read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_data(%struct.memblock_t** %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.memblock_t**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.memblock_t** %0, %struct.memblock_t*** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  %11 = load %struct.memblock_t*, %struct.memblock_t** %10, align 8
  %12 = icmp ne %struct.memblock_t* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 5
  %16 = load %struct.memblock_t*, %struct.memblock_t** %15, align 8
  %17 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  store %struct.memblock_t* %16, %struct.memblock_t** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 6
  %20 = load %struct.memblock_t*, %struct.memblock_t** %19, align 8
  %21 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %22 = load %struct.memblock_t*, %struct.memblock_t** %21, align 8
  %23 = icmp eq %struct.memblock_t* %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  store %struct.memblock_t* null, %struct.memblock_t** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  store %struct.memblock_t* null, %struct.memblock_t** %28, align 8
  br label %36

29:                                               ; preds = %13
  %30 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %31 = load %struct.memblock_t*, %struct.memblock_t** %30, align 8
  %32 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %31, i32 0, i32 2
  %33 = load %struct.memblock_t*, %struct.memblock_t** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  store %struct.memblock_t* %33, %struct.memblock_t** %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %38 = load %struct.memblock_t*, %struct.memblock_t** %37, align 8
  %39 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %47, i32** %4, align 8
  br label %137

48:                                               ; preds = %3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  store %struct.memblock_t* null, %struct.memblock_t** %54, align 8
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %4, align 8
  br label %137

56:                                               ; preds = %48
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = call %struct.memblock_t* @get_buffer(%struct.TYPE_5__* %57)
  %59 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  store %struct.memblock_t* %58, %struct.memblock_t** %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %72 = load %struct.memblock_t*, %struct.memblock_t** %71, align 8
  %73 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %81

74:                                               ; preds = %56
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %79 = load %struct.memblock_t*, %struct.memblock_t** %78, align 8
  %80 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  br label %81

81:                                               ; preds = %74, %67
  %82 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %83 = load %struct.memblock_t*, %struct.memblock_t** %82, align 8
  %84 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %83, i32 0, i32 2
  store %struct.memblock_t* null, %struct.memblock_t** %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %89 = load %struct.memblock_t*, %struct.memblock_t** %88, align 8
  %90 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %93 = load %struct.memblock_t*, %struct.memblock_t** %92, align 8
  %94 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %93, i32 0, i32 0
  %95 = load i32*, i32** %7, align 8
  %96 = call i32* @svn_io_file_read(i32* %87, i32 %91, i64* %94, i32* %95)
  store i32* %96, i32** %8, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %81
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %102 = load %struct.memblock_t*, %struct.memblock_t** %101, align 8
  %103 = call i32 @return_buffer(%struct.TYPE_5__* %100, %struct.memblock_t* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = call i32* @svn_error_trace(i32* %104)
  store i32* %105, i32** %4, align 8
  br label %137

106:                                              ; preds = %81
  %107 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %108 = load %struct.memblock_t*, %struct.memblock_t** %107, align 8
  %109 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load %struct.memblock_t**, %struct.memblock_t*** %5, align 8
  %116 = load %struct.memblock_t*, %struct.memblock_t** %115, align 8
  %117 = getelementptr inbounds %struct.memblock_t, %struct.memblock_t* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %106
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @svn_io_file_close(i32* %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  store i32* null, i32** %132, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %124, %106
  %136 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %136, i32** %4, align 8
  br label %137

137:                                              ; preds = %135, %99, %53, %36
  %138 = load i32*, i32** %4, align 8
  ret i32* %138
}

declare dso_local %struct.memblock_t* @get_buffer(%struct.TYPE_5__*) #1

declare dso_local i32* @svn_io_file_read(i32*, i32, i64*, i32*) #1

declare dso_local i32 @return_buffer(%struct.TYPE_5__*, %struct.memblock_t*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
