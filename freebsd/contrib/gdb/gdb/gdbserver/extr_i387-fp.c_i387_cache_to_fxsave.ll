; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_i387-fp.c_i387_cache_to_fxsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_i387-fp.c_i387_cache_to_fxsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i387_fxsave = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"st0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xmm0\00", align 1
@num_xmm_registers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"fioff\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fooff\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"mxcsr\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"fop\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fctrl\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ftag\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fiseg\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"foseg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i387_cache_to_fxsave(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i387_fxsave*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.i387_fxsave*
  store %struct.i387_fxsave* %11, %struct.i387_fxsave** %3, align 8
  %12 = call i32 @find_regno(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %5, align 4
  %13 = call i32 @find_regno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %18, %19
  %21 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %22 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %21, i32 0, i32 10
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 16
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = call i32 @collect_register(i32 %20, i8* %29)
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
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %44 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %43, i32 0, i32 9
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = bitcast i32* %46 to i8*
  %48 = load i32, i32* %4, align 4
  %49 = mul nsw i32 %48, 16
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = call i32 @collect_register(i32 %42, i8* %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %58 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %57, i32 0, i32 0
  %59 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %58)
  %60 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %61 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %60, i32 0, i32 1
  %62 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64* %61)
  %63 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %64 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %63, i32 0, i32 2
  %65 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64* %64)
  %66 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64* %8)
  %67 = load i64, i64* %8, align 8
  %68 = and i64 %67, 2047
  %69 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %70 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = and i64 %71, 63488
  %73 = or i64 %68, %72
  %74 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %75 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64* %7)
  %77 = load i64, i64* %7, align 8
  %78 = trunc i64 %77 to i16
  %79 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %80 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %79, i32 0, i32 8
  %81 = bitcast i32* %80 to i16*
  store i16 %78, i16* %81, align 8
  %82 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64* %7)
  %83 = load i64, i64* %7, align 8
  %84 = and i64 %83, 65535
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = trunc i64 %85 to i16
  %87 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %88 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %87, i32 0, i32 7
  %89 = bitcast i32* %88 to i16*
  store i16 %86, i16* %89, align 4
  %90 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64* %7)
  %91 = load i64, i64* %7, align 8
  %92 = and i64 %91, 65535
  store i64 %92, i64* %7, align 8
  store i32 7, i32* %4, align 4
  br label %93

93:                                               ; preds = %113, %56
  %94 = load i32, i32* %4, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* %4, align 4
  %99 = mul nsw i32 %98, 2
  %100 = zext i32 %99 to i64
  %101 = lshr i64 %97, %100
  %102 = and i64 %101, 3
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 3
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load i32, i32* %4, align 4
  %108 = shl i32 1, %107
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %8, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %8, align 8
  br label %112

112:                                              ; preds = %106, %96
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %4, align 4
  br label %93

116:                                              ; preds = %93
  %117 = load i64, i64* %8, align 8
  %118 = trunc i64 %117 to i16
  %119 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %120 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %119, i32 0, i32 6
  %121 = bitcast i32* %120 to i16*
  store i16 %118, i16* %121, align 8
  %122 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64* %7)
  %123 = load i64, i64* %7, align 8
  %124 = and i64 %123, 65535
  store i64 %124, i64* %7, align 8
  %125 = load i64, i64* %7, align 8
  %126 = trunc i64 %125 to i16
  %127 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %128 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %127, i32 0, i32 5
  %129 = bitcast i32* %128 to i16*
  store i16 %126, i16* %129, align 4
  %130 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64* %7)
  %131 = load i64, i64* %7, align 8
  %132 = and i64 %131, 65535
  store i64 %132, i64* %7, align 8
  %133 = load i64, i64* %7, align 8
  %134 = trunc i64 %133 to i16
  %135 = load %struct.i387_fxsave*, %struct.i387_fxsave** %3, align 8
  %136 = getelementptr inbounds %struct.i387_fxsave, %struct.i387_fxsave* %135, i32 0, i32 4
  %137 = bitcast i32* %136 to i16*
  store i16 %134, i16* %137, align 8
  ret void
}

declare dso_local i32 @find_regno(i8*) #1

declare dso_local i32 @collect_register(i32, i8*) #1

declare dso_local i32 @collect_register_by_name(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
