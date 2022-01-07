; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_type_qualifier_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_vector_type_qualifier_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_type_qualifier = type { i64, i64, i32* }

@BUFFER_GROWFACTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_type_qualifier*, i32)* @vector_type_qualifier_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_type_qualifier_push(%struct.vector_type_qualifier* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vector_type_qualifier*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vector_type_qualifier* %0, %struct.vector_type_qualifier** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %10 = icmp eq %struct.vector_type_qualifier* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

12:                                               ; preds = %2
  %13 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %14 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %17 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %12
  %21 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %22 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BUFFER_GROWFACTOR, align 8
  %25 = mul i64 %23, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32* @malloc(i32 %28)
  store i32* %29, i32** %6, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %76

32:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %36 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %41 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %33

52:                                               ; preds = %33
  %53 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %54 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @free(i32* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %59 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %62 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %52, %12
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %66 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %69 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %64, i32* %71, align 4
  %72 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %4, align 8
  %73 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %63, %31, %11
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
