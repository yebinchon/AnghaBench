; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/BIG5/extr_citrus_big5.c__citrus_BIG5_encoding_module_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/BIG5/extr_citrus_big5.c__citrus_BIG5_encoding_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@root_hints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"row\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"col\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64)* @_citrus_BIG5_encoding_module_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_BIG5_encoding_module_init(%struct.TYPE_5__* noalias %0, i8* noalias %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = bitcast %struct.TYPE_5__* %10 to i8*
  %12 = call i32 @memset(i8* %11, i32 0, i32 4)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @TAILQ_INIT(i32* %14)
  %16 = load i64, i64* %7, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @_bcs_skip_ws_len(i8* %22, i64* %7)
  store i8* %23, i8** %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load i32, i32* @root_hints, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = bitcast %struct.TYPE_5__* %33 to i8*
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @_citrus_prop_parse_variable(i32 %32, i8* %34, i8* %35, i64 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %58

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = call i32 @_citrus_BIG5_encoding_module_uninit(%struct.TYPE_5__* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = bitcast %struct.TYPE_5__* %44 to i8*
  %46 = call i32 @memset(i8* %45, i32 0, i32 4)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @TAILQ_INIT(i32* %48)
  br label %50

50:                                               ; preds = %41, %26, %21
  br label %51

51:                                               ; preds = %50, %18, %3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = call i32 @_citrus_BIG5_fill_rowcol(%struct.TYPE_5__* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 161, i32 254)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = call i32 @_citrus_BIG5_fill_rowcol(%struct.TYPE_5__* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 64, i32 126)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = call i32 @_citrus_BIG5_fill_rowcol(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 161, i32 254)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %40
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i8* @_bcs_skip_ws_len(i8*, i64*) #1

declare dso_local i32 @_citrus_prop_parse_variable(i32, i8*, i8*, i64) #1

declare dso_local i32 @_citrus_BIG5_encoding_module_uninit(%struct.TYPE_5__*) #1

declare dso_local i32 @_citrus_BIG5_fill_rowcol(%struct.TYPE_5__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
