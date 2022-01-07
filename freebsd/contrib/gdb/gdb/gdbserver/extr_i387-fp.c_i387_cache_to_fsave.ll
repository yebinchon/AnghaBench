; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_i387-fp.c_i387_cache_to_fsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_i387-fp.c_i387_cache_to_fsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i387_fsave = type { i64, i64, i64, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"st0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fioff\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fooff\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fop\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"fctrl\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ftag\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"fiseg\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"foseg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i387_cache_to_fsave(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i387_fsave*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.i387_fsave*
  store %struct.i387_fsave* %9, %struct.i387_fsave** %3, align 8
  %10 = call i32 @find_regno(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %15, %16
  %18 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %19 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = bitcast i32* %21 to i8*
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %23, 10
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = call i32 @collect_register(i32 %17, i8* %26)
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %33 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %32, i32 0, i32 0
  %34 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* %33)
  %35 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %36 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %35, i32 0, i32 1
  %37 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %36)
  %38 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %7)
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %39, 2047
  %41 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %42 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, 63488
  %45 = or i64 %40, %44
  %46 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %47 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64* %6)
  %49 = load i64, i64* %6, align 8
  %50 = trunc i64 %49 to i16
  %51 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %52 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %51, i32 0, i32 7
  %53 = bitcast i32* %52 to i16*
  store i16 %50, i16* %53, align 8
  %54 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64* %6)
  %55 = load i64, i64* %6, align 8
  %56 = and i64 %55, 65535
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = trunc i64 %57 to i16
  %59 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %60 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %59, i32 0, i32 6
  %61 = bitcast i32* %60 to i16*
  store i16 %58, i16* %61, align 4
  %62 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64* %6)
  %63 = load i64, i64* %6, align 8
  %64 = and i64 %63, 65535
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i16
  %67 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %68 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %67, i32 0, i32 5
  %69 = bitcast i32* %68 to i16*
  store i16 %66, i16* %69, align 8
  %70 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64* %6)
  %71 = load i64, i64* %6, align 8
  %72 = and i64 %71, 65535
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = trunc i64 %73 to i16
  %75 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %76 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %75, i32 0, i32 4
  %77 = bitcast i32* %76 to i16*
  store i16 %74, i16* %77, align 4
  %78 = call i32 @collect_register_by_name(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i64* %6)
  %79 = load i64, i64* %6, align 8
  %80 = and i64 %79, 65535
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* %6, align 8
  %82 = trunc i64 %81 to i16
  %83 = load %struct.i387_fsave*, %struct.i387_fsave** %3, align 8
  %84 = getelementptr inbounds %struct.i387_fsave, %struct.i387_fsave* %83, i32 0, i32 3
  %85 = bitcast i32* %84 to i16*
  store i16 %82, i16* %85, align 8
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
