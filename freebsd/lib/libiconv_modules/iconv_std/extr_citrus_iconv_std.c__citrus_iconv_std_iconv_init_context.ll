; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c__citrus_iconv_std_iconv_init_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c__citrus_iconv_std_iconv_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct._citrus_iconv_std_shared* }
%struct._citrus_iconv_std_shared = type { i32, i32 }
%struct._citrus_iconv_std_context = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_iconv*)* @_citrus_iconv_std_iconv_init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_iconv_std_iconv_init_context(%struct._citrus_iconv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._citrus_iconv*, align 8
  %4 = alloca %struct._citrus_iconv_std_shared*, align 8
  %5 = alloca %struct._citrus_iconv_std_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct._citrus_iconv* %0, %struct._citrus_iconv** %3, align 8
  %10 = load %struct._citrus_iconv*, %struct._citrus_iconv** %3, align 8
  %11 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %13, align 8
  store %struct._citrus_iconv_std_shared* %14, %struct._citrus_iconv_std_shared** %4, align 8
  %15 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %4, align 8
  %16 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @_stdenc_get_state_size(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %4, align 8
  %20 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @_stdenc_get_state_size(i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %23, %24
  %26 = mul i64 %25, 2
  %27 = add i64 %26, 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call %struct._citrus_iconv_std_context* @malloc(i64 %28)
  store %struct._citrus_iconv_std_context* %29, %struct._citrus_iconv_std_context** %5, align 8
  %30 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %5, align 8
  %31 = icmp eq %struct._citrus_iconv_std_context* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %2, align 4
  br label %88

34:                                               ; preds = %1
  %35 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %5, align 8
  %36 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %35, i64 1
  %37 = bitcast %struct._citrus_iconv_std_context* %36 to i8*
  store i8* %37, i8** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %5, align 8
  %42 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %41, i32 0, i32 1
  %43 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %4, align 8
  %44 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = call i32 @init_encoding(i32* %42, i32 %45, i8* %46, i8* %49)
  br label %58

51:                                               ; preds = %34
  %52 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %5, align 8
  %53 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %52, i32 0, i32 1
  %54 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %4, align 8
  %55 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @init_encoding(i32* %53, i32 %56, i8* null, i8* null)
  br label %58

58:                                               ; preds = %51, %40
  %59 = load i64, i64* %9, align 8
  %60 = mul i64 %59, 2
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %5, align 8
  %67 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %66, i32 0, i32 0
  %68 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %4, align 8
  %69 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = call i32 @init_encoding(i32* %67, i32 %70, i8* %71, i8* %74)
  br label %83

76:                                               ; preds = %58
  %77 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %5, align 8
  %78 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %77, i32 0, i32 0
  %79 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %4, align 8
  %80 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @init_encoding(i32* %78, i32 %81, i8* null, i8* null)
  br label %83

83:                                               ; preds = %76, %65
  %84 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %5, align 8
  %85 = bitcast %struct._citrus_iconv_std_context* %84 to i8*
  %86 = load %struct._citrus_iconv*, %struct._citrus_iconv** %3, align 8
  %87 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %32
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @_stdenc_get_state_size(i32) #1

declare dso_local %struct._citrus_iconv_std_context* @malloc(i64) #1

declare dso_local i32 @init_encoding(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
