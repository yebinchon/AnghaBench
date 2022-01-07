; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_supply_rwindow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_supply_rwindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { i32 }

@BIAS = common dso_local global i64 0, align 8
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc_supply_rwindow(%struct.regcache* %0, i32 %1, i32 %2) #0 {
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
  br i1 %14, label %15, label %51

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

22:                                               ; preds = %47, %15
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %46

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %37 = sub nsw i32 %35, %36
  %38 = mul nsw i32 %37, 8
  %39 = add nsw i32 %34, %38
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %41 = call i32 @target_read_memory(i32 %39, i8* %40, i32 8)
  %42 = load %struct.regcache*, %struct.regcache** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %45 = call i32 @regcache_raw_supply(%struct.regcache* %42, i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %33, %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %22

50:                                               ; preds = %22
  br label %115

51:                                               ; preds = %3
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, 4294967295
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @current_gdbarch, align 4
  %57 = call i32 @gdbarch_ptr_bit(i32 %56)
  %58 = icmp eq i32 %57, 64
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %61 = call i32 @memset(i8* %60, i32 0, i32 4)
  store i32 4, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %51
  %63 = load i32, i32* @SPARC_L0_REGNUM, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %111, %62
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %114

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %110

75:                                               ; preds = %72, %68
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %79 = sub nsw i32 %77, %78
  %80 = mul nsw i32 %79, 4
  %81 = add nsw i32 %76, %80
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = call i32 @target_read_memory(i32 %81, i8* %85, i32 4)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %75
  %91 = call i32 (...) @sparc_fetch_wcookie()
  store i32 %91, i32* %10, align 4
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = call i32 @extract_unsigned_integer(i8* %95, i32 4)
  store i32 %96, i32* %11, align 4
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %10, align 4
  %103 = xor i32 %101, %102
  %104 = call i32 @store_unsigned_integer(i8* %100, i32 4, i32 %103)
  br label %105

105:                                              ; preds = %90, %75
  %106 = load %struct.regcache*, %struct.regcache** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %109 = call i32 @regcache_raw_supply(%struct.regcache* %106, i32 %107, i8* %108)
  br label %110

110:                                              ; preds = %105, %72
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %64

114:                                              ; preds = %64
  br label %115

115:                                              ; preds = %114, %50
  ret void
}

declare dso_local i32 @target_read_memory(i32, i8*, i32) #1

declare dso_local i32 @regcache_raw_supply(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @gdbarch_ptr_bit(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sparc_fetch_wcookie(...) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
