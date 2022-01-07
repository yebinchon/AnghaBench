; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_suffix.c_compressed_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_suffix.c_compressed_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@compressed_name.all_suffixes = internal constant [3 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null], [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null], [4 x i8*] zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c".xz\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".txz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".lzma\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".tlz\00", align 1
@opt_format = common dso_local global i32 0, align 4
@FORMAT_AUTO = common dso_local global i32 0, align 4
@custom_suffix = common dso_local global i8* null, align 8
@FORMAT_RAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"%s: With --format=raw, --suffix=.SUF is required unless writing to stdout\00", align 1
@FORMAT_XZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @compressed_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compressed_name(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @opt_format, align 4
  %13 = load i32, i32* @FORMAT_AUTO, align 4
  %14 = icmp ne i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @opt_format, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds [3 x [4 x i8*]], [3 x [4 x i8*]]* @compressed_name.all_suffixes, i64 0, i64 %20
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %21, i64 0, i64 0
  store i8** %22, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %46, %2
  %24 = load i8**, i8*** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load i8**, i8*** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @test_suffix(i8* %33, i8* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i8*, i8** %4, align 8
  %40 = load i8**, i8*** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @msg_suffix(i8* %39, i8* %43)
  store i8* null, i8** %3, align 8
  br label %109

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %23

49:                                               ; preds = %23
  %50 = load i8*, i8** @custom_suffix, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i8*, i8** @custom_suffix, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i64 @test_suffix(i8* %53, i8* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** @custom_suffix, align 8
  %61 = call i32 @msg_suffix(i8* %59, i8* %60)
  store i8* null, i8** %3, align 8
  br label %109

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %49
  %64 = load i32, i32* @opt_format, align 4
  %65 = load i32, i32* @FORMAT_RAW, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i8*, i8** @custom_suffix, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @message_error(i32 %71, i8* %72)
  store i8* null, i8** %3, align 8
  br label %109

74:                                               ; preds = %67, %63
  %75 = load i8*, i8** @custom_suffix, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i8*, i8** @custom_suffix, align 8
  br label %83

79:                                               ; preds = %74
  %80 = load i8**, i8*** %7, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  br label %83

83:                                               ; preds = %79, %77
  %84 = phi i8* [ %78, %77 ], [ %82, %79 ]
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %88, %89
  %91 = add i64 %90, 1
  %92 = call i8* @xmalloc(i64 %91)
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @memcpy(i8* %93, i8* %94, i64 %95)
  %97 = load i8*, i8** %11, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8*, i8** %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @memcpy(i8* %99, i8* %100, i64 %101)
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %104, %105
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %11, align 8
  store i8* %108, i8** %3, align 8
  br label %109

109:                                              ; preds = %83, %70, %58, %38
  %110 = load i8*, i8** %3, align 8
  ret i8* %110
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @test_suffix(i8*, i8*, i64) #1

declare dso_local i32 @msg_suffix(i8*, i8*) #1

declare dso_local i32 @message_error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
