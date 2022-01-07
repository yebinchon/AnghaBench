; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ascii.c_hex_print_with_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ascii.c_hex_print_with_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"%s0x%04x: \00", align 1
@HEXDUMP_BYTES_PER_LINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c" %02x%02x\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hex_print_with_offset(%struct.TYPE_4__* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp uge i32* %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  br label %30

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29, %20
  %31 = phi i64 [ %28, %20 ], [ 0, %29 ]
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = udiv i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %64, %38
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %14, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  %50 = srem i32 %48, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_4__*
  %58 = call i32 @ND_PRINT(%struct.TYPE_4__* %57)
  %59 = load i64, i64* @HEXDUMP_BYTES_PER_LINE, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %52, %47
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %8, align 8
  %67 = load i32, i32* %65, align 4
  store i32 %67, i32* %13, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %8, align 8
  %72 = load i32, i32* %70, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to %struct.TYPE_4__*
  %75 = call i32 @ND_PRINT(%struct.TYPE_4__* %74)
  br label %43

76:                                               ; preds = %43
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = srem i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to %struct.TYPE_4__*
  %90 = call i32 @ND_PRINT(%struct.TYPE_4__* %89)
  br label %91

91:                                               ; preds = %84, %80
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to %struct.TYPE_4__*
  %97 = call i32 @ND_PRINT(%struct.TYPE_4__* %96)
  br label %98

98:                                               ; preds = %91, %76
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
