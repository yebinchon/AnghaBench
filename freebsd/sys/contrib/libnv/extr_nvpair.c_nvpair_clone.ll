; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Unknown type: %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nvpair_clone(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @NVPAIR_ASSERT(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @nvpair_name(i32* %9)
  store i8* %10, i8** %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @nvpair_type(i32* %11)
  switch i32 %12, label %83 [
    i32 134, label %13
    i32 138, label %16
    i32 133, label %21
    i32 129, label %26
    i32 131, label %31
    i32 139, label %36
    i32 137, label %43
    i32 132, label %50
    i32 128, label %57
    i32 130, label %64
    i32 136, label %71
    i32 135, label %76
  ]

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i32* @nvpair_create_null(i8* %14)
  store i32* %15, i32** %3, align 8
  br label %87

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @nvpair_get_bool(i32* %18)
  %20 = call i32* @nvpair_create_bool(i8* %17, i32 %19)
  store i32* %20, i32** %3, align 8
  br label %87

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @nvpair_get_number(i32* %23)
  %25 = call i32* @nvpair_create_number(i8* %22, i32 %24)
  store i32* %25, i32** %3, align 8
  br label %87

26:                                               ; preds = %1
  %27 = load i8*, i8** %4, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @nvpair_get_string(i32* %28)
  %30 = call i32* @nvpair_create_string(i8* %27, i32 %29)
  store i32* %30, i32** %3, align 8
  br label %87

31:                                               ; preds = %1
  %32 = load i8*, i8** %4, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @nvpair_get_nvlist(i32* %33)
  %35 = call i32* @nvpair_create_nvlist(i8* %32, i32 %34)
  store i32* %35, i32** %3, align 8
  br label %87

36:                                               ; preds = %1
  %37 = load i32*, i32** %2, align 8
  %38 = call i8* @nvpair_get_binary(i32* %37, i64* %6)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32* @nvpair_create_binary(i8* %39, i8* %40, i64 %41)
  store i32* %42, i32** %3, align 8
  br label %87

43:                                               ; preds = %1
  %44 = load i32*, i32** %2, align 8
  %45 = call i8* @nvpair_get_bool_array(i32* %44, i64* %6)
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32* @nvpair_create_bool_array(i8* %46, i8* %47, i64 %48)
  store i32* %49, i32** %3, align 8
  br label %87

50:                                               ; preds = %1
  %51 = load i32*, i32** %2, align 8
  %52 = call i8* @nvpair_get_number_array(i32* %51, i64* %6)
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32* @nvpair_create_number_array(i8* %53, i8* %54, i64 %55)
  store i32* %56, i32** %3, align 8
  br label %87

57:                                               ; preds = %1
  %58 = load i32*, i32** %2, align 8
  %59 = call i8* @nvpair_get_string_array(i32* %58, i64* %6)
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32* @nvpair_create_string_array(i8* %60, i8* %61, i64 %62)
  store i32* %63, i32** %3, align 8
  br label %87

64:                                               ; preds = %1
  %65 = load i32*, i32** %2, align 8
  %66 = call i8* @nvpair_get_nvlist_array(i32* %65, i64* %6)
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32* @nvpair_create_nvlist_array(i8* %67, i8* %68, i64 %69)
  store i32* %70, i32** %3, align 8
  br label %87

71:                                               ; preds = %1
  %72 = load i8*, i8** %4, align 8
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @nvpair_get_descriptor(i32* %73)
  %75 = call i32* @nvpair_create_descriptor(i8* %72, i32 %74)
  store i32* %75, i32** %3, align 8
  br label %87

76:                                               ; preds = %1
  %77 = load i32*, i32** %2, align 8
  %78 = call i8* @nvpair_get_descriptor_array(i32* %77, i64* %6)
  store i8* %78, i8** %5, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32* @nvpair_create_descriptor_array(i8* %79, i8* %80, i64 %81)
  store i32* %82, i32** %3, align 8
  br label %87

83:                                               ; preds = %1
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @nvpair_type(i32* %84)
  %86 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %76, %71, %64, %57, %50, %43, %36, %31, %26, %21, %16, %13
  %88 = load i32*, i32** %3, align 8
  ret i32* %88
}

declare dso_local i32 @NVPAIR_ASSERT(i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32* @nvpair_create_null(i8*) #1

declare dso_local i32* @nvpair_create_bool(i8*, i32) #1

declare dso_local i32 @nvpair_get_bool(i32*) #1

declare dso_local i32* @nvpair_create_number(i8*, i32) #1

declare dso_local i32 @nvpair_get_number(i32*) #1

declare dso_local i32* @nvpair_create_string(i8*, i32) #1

declare dso_local i32 @nvpair_get_string(i32*) #1

declare dso_local i32* @nvpair_create_nvlist(i8*, i32) #1

declare dso_local i32 @nvpair_get_nvlist(i32*) #1

declare dso_local i8* @nvpair_get_binary(i32*, i64*) #1

declare dso_local i32* @nvpair_create_binary(i8*, i8*, i64) #1

declare dso_local i8* @nvpair_get_bool_array(i32*, i64*) #1

declare dso_local i32* @nvpair_create_bool_array(i8*, i8*, i64) #1

declare dso_local i8* @nvpair_get_number_array(i32*, i64*) #1

declare dso_local i32* @nvpair_create_number_array(i8*, i8*, i64) #1

declare dso_local i8* @nvpair_get_string_array(i32*, i64*) #1

declare dso_local i32* @nvpair_create_string_array(i8*, i8*, i64) #1

declare dso_local i8* @nvpair_get_nvlist_array(i32*, i64*) #1

declare dso_local i32* @nvpair_create_nvlist_array(i8*, i8*, i64) #1

declare dso_local i32* @nvpair_create_descriptor(i8*, i32) #1

declare dso_local i32 @nvpair_get_descriptor(i32*) #1

declare dso_local i8* @nvpair_get_descriptor_array(i32*, i64*) #1

declare dso_local i32* @nvpair_create_descriptor_array(i8*, i8*, i64) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
