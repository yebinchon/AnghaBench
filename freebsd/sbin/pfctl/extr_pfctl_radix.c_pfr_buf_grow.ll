; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_buf_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_buf_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_buffer = type { i64, i32, i32* }

@PFRB_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@buf_esize = common dso_local global i64* null, align 8
@SIZE_T_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_buf_grow(%struct.pfr_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfr_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.pfr_buffer* %0, %struct.pfr_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %9 = icmp eq %struct.pfr_buffer* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ule i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PFRB_MAX, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %10, %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %122

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %122

33:                                               ; preds = %26, %23
  %34 = load i64*, i64** @buf_esize, align 8
  %35 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 64
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 64, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32* @calloc(i64 %49, i32 %50)
  %52 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %55 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %122

59:                                               ; preds = %48
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %121

63:                                               ; preds = %33
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %68 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %69, 2
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @SIZE_T_MAX, align 8
  %78 = load i64, i64* %7, align 8
  %79 = udiv i64 %77, %78
  %80 = icmp uge i64 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74, %71
  %82 = load i32, i32* @ENOMEM, align 4
  store i32 %82, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %122

83:                                               ; preds = %74
  %84 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %85 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %7, align 8
  %90 = mul i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32* @realloc(i32* %86, i32 %91)
  store i32* %92, i32** %6, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  store i32 -1, i32* %3, align 4
  br label %122

96:                                               ; preds = %83
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %99 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %7, align 8
  %103 = mul i64 %101, %102
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %107 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %105, %108
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %7, align 8
  %112 = mul i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @bzero(i32* %104, i32 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %117 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %116, i32 0, i32 2
  store i32* %115, i32** %117, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.pfr_buffer*, %struct.pfr_buffer** %4, align 8
  %120 = getelementptr inbounds %struct.pfr_buffer, %struct.pfr_buffer* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %96, %59
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %95, %81, %58, %32, %21
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
