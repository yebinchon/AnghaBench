; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/tools/lldb/tools/compact-unwind/extr_compact-unwind-dumper.c_print_second_level_index_compressed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/tools/lldb/tools/compact-unwind/extr_compact-unwind-dumper.c_print_second_level_index_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baton = type { %struct.TYPE_6__, %struct.TYPE_5__, i32*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_second_level_index_compressed(%struct.baton* byval(%struct.baton) align 8 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.baton, %struct.baton* %0, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds %struct.baton, %struct.baton* %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds %struct.baton, %struct.baton* %0, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  store i32* %24, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %25

25:                                               ; preds = %81, %1
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.baton, %struct.baton* %0, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %84

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32* %35, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @UNWIND_INFO_COMPRESSED_ENTRY_ENCODING_INDEX(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @UNWIND_INFO_COMPRESSED_ENTRY_FUNC_OFFSET(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.baton, %struct.baton* %0, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.baton, %struct.baton* %0, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds %struct.baton, %struct.baton* %0, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %75

58:                                               ; preds = %31
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.baton, %struct.baton* %0, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = getelementptr inbounds %struct.baton, %struct.baton* %0, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %58, %45
  %76 = load i64, i64* %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @print_function_encoding(%struct.baton* byval(%struct.baton) align 8 %0, i64 %76, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %5, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %5, align 8
  br label %25

84:                                               ; preds = %25
  ret void
}

declare dso_local i32 @UNWIND_INFO_COMPRESSED_ENTRY_ENCODING_INDEX(i32) #1

declare dso_local i32 @UNWIND_INFO_COMPRESSED_ENTRY_FUNC_OFFSET(i32) #1

declare dso_local i32 @print_function_encoding(%struct.baton* byval(%struct.baton) align 8, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
