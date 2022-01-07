; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options_f.c_f_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_options_f.c_f_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@O_OCTAL = common dso_local global i32 0, align 4
@OS_STRDUP = common dso_local global i32 0, align 4
@SC_SCR_REFORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_print(%struct.TYPE_8__* %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = ptrtoint i32* %11 to i64
  %16 = ptrtoint i32* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @O_OCTAL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load i64*, i64** %9, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @O_SET(%struct.TYPE_8__* %28, i32 %29)
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @O_CLR(%struct.TYPE_8__* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %45

36:                                               ; preds = %4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @OS_STRDUP, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @o_set(%struct.TYPE_8__* %37, i32 %38, i32 %39, i8* %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %51

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = call i32 @v_key_ilookup(%struct.TYPE_8__* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = load i32, i32* @SC_SCR_REFORMAT, align 4
  %50 = call i32 @F_SET(%struct.TYPE_8__* %48, i32 %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %43
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @O_SET(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @O_CLR(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @o_set(%struct.TYPE_8__*, i32, i32, i8*, i32) #1

declare dso_local i32 @v_key_ilookup(%struct.TYPE_8__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
