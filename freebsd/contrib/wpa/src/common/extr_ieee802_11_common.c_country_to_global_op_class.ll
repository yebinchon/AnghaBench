; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_country_to_global_op_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_country_to_global_op_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.country_op_class = type { i32 }

@us_op_class_cc = common dso_local global i32 0, align 4
@us_op_class = common dso_local global %struct.country_op_class* null, align 8
@eu_op_class_cc = common dso_local global i32 0, align 4
@eu_op_class = common dso_local global %struct.country_op_class* null, align 8
@jp_op_class_cc = common dso_local global i32 0, align 4
@jp_op_class = common dso_local global %struct.country_op_class* null, align 8
@cn_op_class_cc = common dso_local global i32 0, align 4
@cn_op_class = common dso_local global %struct.country_op_class* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @country_to_global_op_class(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.country_op_class*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @us_op_class_cc, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @country_match(i32 %9, i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.country_op_class*, %struct.country_op_class** @us_op_class, align 8
  store %struct.country_op_class* %14, %struct.country_op_class** %6, align 8
  %15 = load %struct.country_op_class*, %struct.country_op_class** @us_op_class, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.country_op_class* %15)
  store i64 %16, i64* %7, align 8
  br label %49

17:                                               ; preds = %2
  %18 = load i32, i32* @eu_op_class_cc, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @country_match(i32 %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.country_op_class*, %struct.country_op_class** @eu_op_class, align 8
  store %struct.country_op_class* %23, %struct.country_op_class** %6, align 8
  %24 = load %struct.country_op_class*, %struct.country_op_class** @eu_op_class, align 8
  %25 = call i64 @ARRAY_SIZE(%struct.country_op_class* %24)
  store i64 %25, i64* %7, align 8
  br label %48

26:                                               ; preds = %17
  %27 = load i32, i32* @jp_op_class_cc, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @country_match(i32 %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.country_op_class*, %struct.country_op_class** @jp_op_class, align 8
  store %struct.country_op_class* %32, %struct.country_op_class** %6, align 8
  %33 = load %struct.country_op_class*, %struct.country_op_class** @jp_op_class, align 8
  %34 = call i64 @ARRAY_SIZE(%struct.country_op_class* %33)
  store i64 %34, i64* %7, align 8
  br label %47

35:                                               ; preds = %26
  %36 = load i32, i32* @cn_op_class_cc, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @country_match(i32 %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.country_op_class*, %struct.country_op_class** @cn_op_class, align 8
  store %struct.country_op_class* %41, %struct.country_op_class** %6, align 8
  %42 = load %struct.country_op_class*, %struct.country_op_class** @cn_op_class, align 8
  %43 = call i64 @ARRAY_SIZE(%struct.country_op_class* %42)
  store i64 %43, i64* %7, align 8
  br label %46

44:                                               ; preds = %35
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %3, align 8
  br label %62

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %31
  br label %48

48:                                               ; preds = %47, %22
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.country_op_class*, %struct.country_op_class** %6, align 8
  %53 = call i64 @global_op_class_from_country_array(i64 %50, i64 %51, %struct.country_op_class* %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i64, i64* %8, align 8
  br label %60

58:                                               ; preds = %49
  %59 = load i64, i64* %5, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %60, %44
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @country_match(i32, i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.country_op_class*) #1

declare dso_local i64 @global_op_class_from_country_array(i64, i64, %struct.country_op_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
