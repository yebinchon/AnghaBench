; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_i387-fp.c_i387_fsave_to_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_i387-fp.c_i387_fsave_to_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i387_fsave = type { i64, i64, i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"st0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fioff\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fooff\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fctrl\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ftag\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fiseg\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"foseg\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"fop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i387_fsave_to_cache(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i387_fsave*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.i387_fsave*
  store %struct.i387_fsave* %8, %struct.i387_fsave** %3, align 8
  %9 = call i32 @find_regno(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  %17 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %18 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = bitcast i32* %20 to i8*
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 10
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = call i32 @supply_register(i32 %16, i8* %25)
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %32 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %31, i32 0, i32 0
  %33 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* %32)
  %34 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %35 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %34, i32 0, i32 1
  %36 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %35)
  %37 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %38 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 65535
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %6, align 8
  %42 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64* %6)
  %43 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %44 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 65535
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %6, align 8
  %48 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64* %6)
  %49 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %50 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 65535
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %6, align 8
  %54 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64* %6)
  %55 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %56 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 65535
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %6, align 8
  %60 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64* %6)
  %61 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %62 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 65535
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %6, align 8
  %66 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64* %6)
  %67 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %68 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 2047
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %6, align 8
  %72 = call i32 @supply_register_by_name(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64* %6)
  ret void
}

declare dso_local i32 @find_regno(i8*) #1

declare dso_local i32 @supply_register(i32, i8*) #1

declare dso_local i32 @supply_register_by_name(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
