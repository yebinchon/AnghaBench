; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_data_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i64, i32*, i64, i32 }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i8*)* @cpp_demangle_data_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_data_init(%struct.cpp_demangle_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpp_demangle_data*, align 8
  %5 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %7 = icmp eq %struct.cpp_demangle_data* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %123

12:                                               ; preds = %8
  %13 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %14 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %13, i32 0, i32 6
  %15 = call i32 @vector_str_init(%struct.TYPE_3__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %123

18:                                               ; preds = %12
  %19 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %20 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %19, i32 0, i32 7
  %21 = call i32 @vector_str_init(%struct.TYPE_3__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %119

24:                                               ; preds = %18
  %25 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %26 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %25, i32 0, i32 8
  %27 = call i32 @vector_str_init(%struct.TYPE_3__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %115

30:                                               ; preds = %24
  %31 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %32 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %31, i32 0, i32 9
  %33 = call i32 @vector_str_init(%struct.TYPE_3__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %111

36:                                               ; preds = %30
  %37 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %38 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %37, i32 0, i32 10
  %39 = call i32 @vector_str_init(%struct.TYPE_3__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %107

42:                                               ; preds = %36
  %43 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %44 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %43, i32 0, i32 14
  %45 = call i32 @vector_read_cmd_init(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %103

48:                                               ; preds = %42
  %49 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %50 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %57 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %64 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %71 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %78 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %77, i32 0, i32 10
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %85 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %87 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %89 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %88, i32 0, i32 2
  store i32 0, i32* %89, align 8
  %90 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %91 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %90, i32 0, i32 3
  store i32 0, i32* %91, align 4
  %92 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %93 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %92, i32 0, i32 4
  store i32 0, i32* %93, align 8
  %94 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %95 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %94, i32 0, i32 13
  store i64 0, i64* %95, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %98 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %100 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %99, i32 0, i32 12
  store i32* null, i32** %100, align 8
  %101 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %102 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %101, i32 0, i32 11
  store i64 0, i64* %102, align 8
  store i32 1, i32* %3, align 4
  br label %123

103:                                              ; preds = %47
  %104 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %105 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %104, i32 0, i32 10
  %106 = call i32 @vector_str_dest(%struct.TYPE_3__* %105)
  br label %107

107:                                              ; preds = %103, %41
  %108 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %109 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %108, i32 0, i32 9
  %110 = call i32 @vector_str_dest(%struct.TYPE_3__* %109)
  br label %111

111:                                              ; preds = %107, %35
  %112 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %113 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %112, i32 0, i32 8
  %114 = call i32 @vector_str_dest(%struct.TYPE_3__* %113)
  br label %115

115:                                              ; preds = %111, %29
  %116 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %117 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %116, i32 0, i32 7
  %118 = call i32 @vector_str_dest(%struct.TYPE_3__* %117)
  br label %119

119:                                              ; preds = %115, %23
  %120 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %4, align 8
  %121 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %120, i32 0, i32 6
  %122 = call i32 @vector_str_dest(%struct.TYPE_3__* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %48, %17, %11
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @vector_str_init(%struct.TYPE_3__*) #1

declare dso_local i32 @vector_read_cmd_init(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vector_str_dest(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
