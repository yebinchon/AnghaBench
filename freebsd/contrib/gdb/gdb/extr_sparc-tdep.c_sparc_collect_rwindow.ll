; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_collect_rwindow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_collect_rwindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }

@BIAS = common dso_local global i64 0, align 8
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@SPARC_SP_REGNUM = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc_collect_rwindow(%struct.regcache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %3
  %16 = load i64, i64* @BIAS, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @SPARC_L0_REGNUM, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %51, %15
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SPARC_SP_REGNUM, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33, %29, %26
  %38 = load %struct.regcache*, %struct.regcache** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %41 = call i32 @regcache_raw_collect(%struct.regcache* %38, i32 %39, i8* %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %45 = sub nsw i32 %43, %44
  %46 = mul nsw i32 %45, 8
  %47 = add nsw i32 %42, %46
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %49 = call i32 @target_write_memory(i32 %47, i8* %48, i32 8)
  br label %50

50:                                               ; preds = %37, %33
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %22

54:                                               ; preds = %22
  br label %121

55:                                               ; preds = %3
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = and i64 %57, 4294967295
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @current_gdbarch, align 4
  %61 = call i32 @gdbarch_ptr_bit(i32 %60)
  %62 = icmp eq i32 %61, 64
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 4, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %55
  %65 = load i32, i32* @SPARC_L0_REGNUM, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %117, %64
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %120

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SPARC_SP_REGNUM, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %77, %73, %70
  %82 = load %struct.regcache*, %struct.regcache** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %85 = call i32 @regcache_raw_collect(%struct.regcache* %82, i32 %83, i8* %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %81
  %90 = call i32 (...) @sparc_fetch_wcookie()
  store i32 %90, i32* %10, align 4
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = call i32 @extract_unsigned_integer(i8* %94, i32 4)
  store i32 %95, i32* %11, align 4
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = xor i32 %100, %101
  %103 = call i32 @store_unsigned_integer(i8* %99, i32 4, i32 %102)
  br label %104

104:                                              ; preds = %89, %81
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %108 = sub nsw i32 %106, %107
  %109 = mul nsw i32 %108, 4
  %110 = add nsw i32 %105, %109
  %111 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = call i32 @target_write_memory(i32 %110, i8* %114, i32 4)
  br label %116

116:                                              ; preds = %104, %77
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %66

120:                                              ; preds = %66
  br label %121

121:                                              ; preds = %120, %54
  ret void
}

declare dso_local i32 @regcache_raw_collect(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @target_write_memory(i32, i8*, i32) #1

declare dso_local i32 @gdbarch_ptr_bit(i32) #1

declare dso_local i32 @sparc_fetch_wcookie(...) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
