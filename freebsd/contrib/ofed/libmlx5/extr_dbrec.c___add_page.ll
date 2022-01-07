; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_dbrec.c___add_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_dbrec.c___add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_db_page = type { i32, %struct.mlx5_db_page*, %struct.mlx5_db_page*, i32*, i64, i32 }
%struct.mlx5_context = type { i32, %struct.mlx5_db_page*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_db_page* (%struct.mlx5_context*)* @__add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_db_page* @__add_page(%struct.mlx5_context* %0) #0 {
  %2 = alloca %struct.mlx5_db_page*, align 8
  %3 = alloca %struct.mlx5_context*, align 8
  %4 = alloca %struct.mlx5_db_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %3, align 8
  %9 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_4__* @to_mdev(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 64
  %24 = sub i64 %23, 1
  %25 = udiv i64 %24, 64
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = add i64 48, %29
  %31 = trunc i64 %30 to i32
  %32 = call %struct.mlx5_db_page* @malloc(i32 %31)
  store %struct.mlx5_db_page* %32, %struct.mlx5_db_page** %4, align 8
  %33 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %34 = icmp ne %struct.mlx5_db_page* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  store %struct.mlx5_db_page* null, %struct.mlx5_db_page** %2, align 8
  br label %89

36:                                               ; preds = %1
  %37 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %37, i32 0, i32 5
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @mlx5_alloc_buf(i32* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %45 = call i32 @free(%struct.mlx5_db_page* %44)
  store %struct.mlx5_db_page* null, %struct.mlx5_db_page** %2, align 8
  br label %89

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %63, %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 -1, i32* %62, align 4
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %52

66:                                               ; preds = %52
  %67 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %67, i32 0, i32 1
  store %struct.mlx5_db_page* null, %struct.mlx5_db_page** %68, align 8
  %69 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %69, i32 0, i32 1
  %71 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %70, align 8
  %72 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %73 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %72, i32 0, i32 2
  store %struct.mlx5_db_page* %71, %struct.mlx5_db_page** %73, align 8
  %74 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %75 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %76 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %75, i32 0, i32 1
  store %struct.mlx5_db_page* %74, %struct.mlx5_db_page** %76, align 8
  %77 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %78 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %77, i32 0, i32 2
  %79 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %78, align 8
  %80 = icmp ne %struct.mlx5_db_page* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %66
  %82 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %83 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %83, i32 0, i32 2
  %85 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %84, align 8
  %86 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %85, i32 0, i32 1
  store %struct.mlx5_db_page* %82, %struct.mlx5_db_page** %86, align 8
  br label %87

87:                                               ; preds = %81, %66
  %88 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %4, align 8
  store %struct.mlx5_db_page* %88, %struct.mlx5_db_page** %2, align 8
  br label %89

89:                                               ; preds = %87, %43, %35
  %90 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %2, align 8
  ret %struct.mlx5_db_page* %90
}

declare dso_local %struct.TYPE_4__* @to_mdev(i32) #1

declare dso_local %struct.mlx5_db_page* @malloc(i32) #1

declare dso_local i64 @mlx5_alloc_buf(i32*, i32, i32) #1

declare dso_local i32 @free(%struct.mlx5_db_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
