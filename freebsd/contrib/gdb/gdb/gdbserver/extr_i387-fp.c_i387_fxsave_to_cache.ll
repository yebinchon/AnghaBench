; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_i387-fp.c_i387_fxsave_to_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_i387-fp.c_i387_fxsave_to_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i387_fxsave = type { i64, i64, i64, i32, i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"st0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xmm0\00", align 1
@num_xmm_registers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"fioff\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fooff\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"mxcsr\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fctrl\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ftag\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"fiseg\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"foseg\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"fop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i387_fxsave_to_cache(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i387_fxsave*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.i387_fxsave*
  store %struct.i387_fxsave* %11, %struct.i387_fxsave** %3, align 8
  %12 = call i32 @find_regno(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = call i32 @find_regno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  %21 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %22 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %21, i32 0, i32 9
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 16
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = call i32 @supply_register(i32 %20, i8* %29)
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %14

34:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @num_xmm_registers, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %44 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %43, i32 0, i32 8
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = bitcast i32* %46 to i8*
  %48 = load i32, i32* %4, align 4
  %49 = mul nsw i32 %48, 16
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = call i32 @supply_register(i32 %42, i8* %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %58 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %57, i32 0, i32 0
  %59 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %58)
  %60 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %61 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %60, i32 0, i32 1
  %62 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64* %61)
  %63 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %64 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %63, i32 0, i32 2
  %65 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64* %64)
  %66 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %67 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 65535
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %8, align 8
  %71 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64* %8)
  %72 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %73 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 65535
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %8, align 8
  %77 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64* %8)
  %78 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %79 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 11
  %82 = and i32 %81, 7
  store i32 %82, i32* %5, align 4
  store i64 0, i64* %8, align 8
  store i32 7, i32* %4, align 4
  br label %83

83:                                               ; preds = %110, %56
  %84 = load i32, i32* %4, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %83
  %87 = load i64, i64* %8, align 8
  %88 = load i32, i32* %4, align 4
  %89 = shl i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = and i64 %87, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 8
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %96, %97
  %99 = srem i32 %98, 8
  %100 = call i32 @i387_ftag(%struct.i387_fxsave* %94, i32 %99)
  store i32 %100, i32* %9, align 4
  br label %102

101:                                              ; preds = %86
  store i32 3, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %93
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %4, align 4
  %105 = mul nsw i32 2, %104
  %106 = shl i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %8, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %8, align 8
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %4, align 4
  br label %83

113:                                              ; preds = %83
  %114 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64* %8)
  %115 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %116 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 65535
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %8, align 8
  %120 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64* %8)
  %121 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %122 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 65535
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %8, align 8
  %126 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64* %8)
  %127 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %128 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, 2047
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %8, align 8
  %132 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64* %8)
  ret void
}

declare dso_local i32 @find_regno(i8*) #1

declare dso_local i32 @supply_register(i32, i8*) #1

declare dso_local i32 @supply_register_by_name(i8*, i64*) #1

declare dso_local i32 @i387_ftag(%struct.i387_fxsave*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
