; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_find_search_domain_name_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_options.c_find_search_domain_name_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option_data = type { i64, i32* }

@.str = private unnamed_addr constant [48 x i8] c"Truncated pointer in DHCP Domain Search option.\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Invalid forward pointer in DHCP Domain Search option compression.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Truncated label in DHCP Domain Search option.\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Truncated DHCP Domain Search option.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_search_domain_name_len(%struct.option_data* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.option_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.option_data* %0, %struct.option_data** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %87, %2
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.option_data*, %struct.option_data** %4, align 8
  %16 = getelementptr inbounds %struct.option_data, %struct.option_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %13
  %20 = load %struct.option_data*, %struct.option_data** %4, align 8
  %21 = getelementptr inbounds %struct.option_data, %struct.option_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 1
  %31 = load i64*, i64** %5, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %99

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 192
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  %40 = load %struct.option_data*, %struct.option_data** %4, align 8
  %41 = getelementptr inbounds %struct.option_data, %struct.option_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %99

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, -193
  %49 = shl i32 %48, 8
  %50 = load %struct.option_data*, %struct.option_data** %4, align 8
  %51 = getelementptr inbounds %struct.option_data, %struct.option_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %49, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp uge i64 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = call i32 @warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %99

65:                                               ; preds = %46
  %66 = load %struct.option_data*, %struct.option_data** %4, align 8
  %67 = call i32 @find_search_domain_name_len(%struct.option_data* %66, i64* %10)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 2
  %73 = load i64*, i64** %5, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %99

75:                                               ; preds = %33
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = load %struct.option_data*, %struct.option_data** %4, align 8
  %82 = getelementptr inbounds %struct.option_data, %struct.option_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp uge i64 %80, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = call i32 @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %99

87:                                               ; preds = %76
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %9, align 8
  br label %13

97:                                               ; preds = %13
  %98 = call i32 @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %85, %65, %63, %44, %28
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
