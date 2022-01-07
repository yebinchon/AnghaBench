; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hast_compression.c_compression_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hast_compression.c_compression_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i32 }
%struct.nv = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid compression: %d.\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compression_send(%struct.hast_resource* %0, %struct.nv* %1, i8** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hast_resource*, align 8
  %8 = alloca %struct.nv*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.hast_resource* %0, %struct.hast_resource** %7, align 8
  store %struct.nv* %1, %struct.nv** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %14, align 8
  %17 = load %struct.hast_resource*, %struct.hast_resource** %7, align 8
  %18 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  switch i32 %20, label %38 [
    i32 128, label %21
    i32 130, label %22
    i32 129, label %26
  ]

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %74

22:                                               ; preds = %5
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @hast_hole_compress(i8* %24, i64* %14)
  store i8* %25, i8** %12, align 8
  br label %43

26:                                               ; preds = %5
  %27 = load i8**, i8*** %9, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @hast_hole_compress(i8* %28, i64* %14)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 130, i32* %13, align 4
  br label %37

33:                                               ; preds = %26
  %34 = load i8**, i8*** %9, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @hast_lzf_compress(i8* %35, i64* %14)
  store i8* %36, i8** %12, align 8
  br label %37

37:                                               ; preds = %33, %32
  br label %43

38:                                               ; preds = %5
  %39 = load %struct.hast_resource*, %struct.hast_resource** %7, align 8
  %40 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %37, %22
  %44 = load i8*, i8** %12, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %74

47:                                               ; preds = %43
  %48 = load %struct.nv*, %struct.nv** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @compression_name(i32 %49)
  %51 = call i32 @nv_add_string(%struct.nv* %48, i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.nv*, %struct.nv** %8, align 8
  %53 = call i64 @nv_error(%struct.nv* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load %struct.nv*, %struct.nv** %8, align 8
  %59 = call i64 @nv_error(%struct.nv* %58)
  store i64 %59, i64* @errno, align 8
  store i32 -1, i32* %6, align 4
  br label %74

60:                                               ; preds = %47
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8**, i8*** %9, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32*, i32** %11, align 8
  store i32 1, i32* %69, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = load i8**, i8*** %9, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64*, i64** %10, align 8
  store i64 %72, i64* %73, align 8
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %68, %55, %46, %21
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i8* @hast_hole_compress(i8*, i64*) #1

declare dso_local i8* @hast_lzf_compress(i8*, i64*) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

declare dso_local i32 @nv_add_string(%struct.nv*, i32, i8*) #1

declare dso_local i32 @compression_name(i32) #1

declare dso_local i64 @nv_error(%struct.nv*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
