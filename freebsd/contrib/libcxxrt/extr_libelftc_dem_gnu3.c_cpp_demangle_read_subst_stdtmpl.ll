; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_subst_stdtmpl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_subst_stdtmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i64, %struct.vector_str, %struct.vector_str }
%struct.vector_str = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i8*, i64)* @cpp_demangle_read_subst_stdtmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_subst_stdtmpl(%struct.cpp_demangle_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpp_demangle_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vector_str*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %15 = icmp eq %struct.cpp_demangle_data* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %3
  store i32 0, i32* %4, align 4
  br label %95

23:                                               ; preds = %19
  %24 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %25 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %30 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %29, i32 0, i32 2
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %33 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %32, i32 0, i32 1
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi %struct.vector_str* [ %30, %28 ], [ %33, %31 ]
  store %struct.vector_str* %35, %struct.vector_str** %8, align 8
  %36 = load %struct.vector_str*, %struct.vector_str** %8, align 8
  %37 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %12, align 8
  %39 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %40 = call i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %95

43:                                               ; preds = %34
  %44 = load %struct.vector_str*, %struct.vector_str** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.vector_str*, %struct.vector_str** %8, align 8
  %47 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %48, 1
  %50 = trunc i64 %49 to i32
  %51 = call i8* @vector_str_substr(%struct.vector_str* %44, i64 %45, i32 %50, i64* %10)
  store i8* %51, i8** %13, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %95

54:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %55, %56
  %58 = add i64 %57, 1
  %59 = mul i64 1, %58
  %60 = trunc i64 %59 to i32
  %61 = call i8* @malloc(i32 %60)
  store i8* %61, i8** %12, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %89

64:                                               ; preds = %54
  %65 = load i8*, i8** %12, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @memcpy(i8* %65, i8* %66, i64 %67)
  %69 = load i8*, i8** %12, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8*, i8** %13, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @memcpy(i8* %71, i8* %72, i64 %73)
  %75 = load i8*, i8** %12, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %76, %77
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %82, %83
  %85 = call i32 @cpp_demangle_push_subst(%struct.cpp_demangle_data* %80, i8* %81, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %64
  br label %89

88:                                               ; preds = %64
  store i32 1, i32* %11, align 4
  br label %89

89:                                               ; preds = %88, %87, %63
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %53, %42, %22
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @cpp_demangle_push_subst(%struct.cpp_demangle_data*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
