; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/tools/lldb/tools/compact-unwind/extr_compact-unwind-dumper.c_print_encoding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/tools/lldb/tools/compact-unwind/extr_compact-unwind-dumper.c_print_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baton = type { i64 }

@CPU_TYPE_X86_64 = common dso_local global i64 0, align 8
@CPU_TYPE_I386 = common dso_local global i64 0, align 8
@CPU_TYPE_ARM64 = common dso_local global i64 0, align 8
@CPU_TYPE_ARM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c" -- unsupported encoding arch -- \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_encoding(i64 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.baton, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.baton, %struct.baton* %4, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.baton, %struct.baton* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CPU_TYPE_X86_64, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.baton, %struct.baton* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @print_encoding_x86_64(i64 %16, i32* %13, i32 %14)
  br label %56

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.baton, %struct.baton* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CPU_TYPE_I386, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds %struct.baton, %struct.baton* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @print_encoding_i386(i64 %27, i32* %24, i32 %25)
  br label %55

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.baton, %struct.baton* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CPU_TYPE_ARM64, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.baton, %struct.baton* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @print_encoding_arm64(i64 %38, i32* %35, i32 %36)
  br label %54

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.baton, %struct.baton* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CPU_TYPE_ARM, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.baton, %struct.baton* %4, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @print_encoding_armv7(i64 %49, i32* %46, i32 %47)
  br label %53

51:                                               ; preds = %40
  %52 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55, %12
  ret void
}

declare dso_local i32 @print_encoding_x86_64(i64, i32*, i32) #1

declare dso_local i32 @print_encoding_i386(i64, i32*, i32) #1

declare dso_local i32 @print_encoding_arm64(i64, i32*, i32) #1

declare dso_local i32 @print_encoding_armv7(i64, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
