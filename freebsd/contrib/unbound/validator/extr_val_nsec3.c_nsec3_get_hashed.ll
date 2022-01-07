; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_get_hashed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_get_hashed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"nsec3 hash of unknown algo %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nsec3_get_hashed(i32* %0, i32* %1, i64 %2, i32 %3, i64 %4, i32* %5, i64 %6, i32* %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i64 %8, i64* %19, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @sldns_buffer_clear(i32* %22)
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @sldns_buffer_write(i32* %24, i32* %25, i64 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = call i64 @sldns_buffer_begin(i32* %28)
  %30 = call i32 @query_dname_tolower(i64 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call i32 @sldns_buffer_write(i32* %31, i32* %32, i64 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @sldns_buffer_flip(i32* %35)
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @nsec3_hash_algo_size_supported(i32 %37)
  store i64 %38, i64* %21, align 8
  %39 = load i64, i64* %21, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %9
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i64 0, i64* %10, align 8
  br label %96

44:                                               ; preds = %9
  %45 = load i64, i64* %21, align 8
  %46 = load i64, i64* %19, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i64 0, i64* %10, align 8
  br label %96

49:                                               ; preds = %44
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i64 @sldns_buffer_begin(i32* %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @sldns_buffer_limit(i32* %54)
  %56 = load i32*, i32** %18, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = call i32 @secalgo_nsec3_hash(i32 %50, i8* %53, i32 %55, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  store i64 0, i64* %10, align 8
  br label %96

61:                                               ; preds = %49
  store i64 0, i64* %20, align 8
  br label %62

62:                                               ; preds = %91, %61
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %15, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @sldns_buffer_clear(i32* %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = load i64, i64* %21, align 8
  %72 = call i32 @sldns_buffer_write(i32* %69, i32* %70, i64 %71)
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %16, align 8
  %75 = load i64, i64* %17, align 8
  %76 = call i32 @sldns_buffer_write(i32* %73, i32* %74, i64 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @sldns_buffer_flip(i32* %77)
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = call i64 @sldns_buffer_begin(i32* %80)
  %82 = inttoptr i64 %81 to i8*
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @sldns_buffer_limit(i32* %83)
  %85 = load i32*, i32** %18, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = call i32 @secalgo_nsec3_hash(i32 %79, i8* %82, i32 %84, i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %66
  store i64 0, i64* %10, align 8
  br label %96

90:                                               ; preds = %66
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %20, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %20, align 8
  br label %62

94:                                               ; preds = %62
  %95 = load i64, i64* %21, align 8
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %94, %89, %60, %48, %41
  %97 = load i64, i64* %10, align 8
  ret i64 %97
}

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_buffer_write(i32*, i32*, i64) #1

declare dso_local i32 @query_dname_tolower(i64) #1

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

declare dso_local i64 @nsec3_hash_algo_size_supported(i32) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @secalgo_nsec3_hash(i32, i8*, i32, i8*) #1

declare dso_local i32 @sldns_buffer_limit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
