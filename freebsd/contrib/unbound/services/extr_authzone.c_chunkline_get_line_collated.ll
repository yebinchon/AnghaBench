; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_chunkline_get_line_collated.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_chunkline_get_line_collated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_chunk = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"http chunkline: line too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_chunk**, i64*, i32*)* @chunkline_get_line_collated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunkline_get_line_collated(%struct.auth_chunk** %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_chunk**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.auth_chunk** %0, %struct.auth_chunk*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @sldns_buffer_clear(i32* %10)
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @sldns_buffer_position(i32* %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @chunkline_get_line(%struct.auth_chunk** %14, i64* %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @sldns_buffer_position(i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @sldns_buffer_limit(i32* %22)
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @sldns_buffer_position(i32* %27)
  %29 = call i32 @sldns_buffer_write_u8_at(i32* %26, i64 %28, i32 0)
  br label %36

30:                                               ; preds = %19
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @sldns_buffer_position(i32* %32)
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @sldns_buffer_write_u8_at(i32* %31, i64 %34, i32 0)
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @sldns_buffer_flip(i32* %37)
  store i32 0, i32* %4, align 4
  br label %103

39:                                               ; preds = %3
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @chunkline_count_parens(i32* %40, i64 %41)
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %81, %39
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @chunkline_remove_trailcomment(i32* %51, i64 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @sldns_buffer_position(i32* %54)
  store i64 %55, i64* %8, align 8
  %56 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %57 = load i64*, i64** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @chunkline_get_line(%struct.auth_chunk** %56, i64* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %50
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @sldns_buffer_position(i32* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @sldns_buffer_limit(i32* %64)
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i64 @sldns_buffer_position(i32* %69)
  %71 = call i32 @sldns_buffer_write_u8_at(i32* %68, i64 %70, i32 0)
  br label %78

72:                                               ; preds = %61
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @sldns_buffer_position(i32* %74)
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @sldns_buffer_write_u8_at(i32* %73, i64 %76, i32 0)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @sldns_buffer_flip(i32* %79)
  store i32 0, i32* %4, align 4
  br label %103

81:                                               ; preds = %50
  %82 = load i32*, i32** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @chunkline_count_parens(i32* %82, i64 %83)
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  br label %47

89:                                               ; preds = %47
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @sldns_buffer_remaining(i32* %90)
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @VERB_ALGO, align 4
  %95 = call i32 @verbose(i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %103

96:                                               ; preds = %89
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i64 @sldns_buffer_position(i32* %98)
  %100 = call i32 @sldns_buffer_write_u8_at(i32* %97, i64 %99, i32 0)
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @sldns_buffer_flip(i32* %101)
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %96, %93, %78, %36
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @chunkline_get_line(%struct.auth_chunk**, i64*, i32*) #1

declare dso_local i64 @sldns_buffer_limit(i32*) #1

declare dso_local i32 @sldns_buffer_write_u8_at(i32*, i64, i32) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

declare dso_local i64 @chunkline_count_parens(i32*, i64) #1

declare dso_local i32 @chunkline_remove_trailcomment(i32*, i64) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
