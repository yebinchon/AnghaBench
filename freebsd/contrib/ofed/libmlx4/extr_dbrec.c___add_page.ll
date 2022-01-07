; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_dbrec.c___add_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_dbrec.c___add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_db_page = type { i32, %struct.mlx4_db_page*, %struct.mlx4_db_page*, i32*, i64, i32 }
%struct.mlx4_context = type { %struct.mlx4_db_page**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@db_size = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx4_db_page* (%struct.mlx4_context*, i32)* @__add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx4_db_page* @__add_page(%struct.mlx4_context* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_db_page*, align 8
  %4 = alloca %struct.mlx4_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_db_page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx4_context* %0, %struct.mlx4_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_4__* @to_mdev(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** @db_size, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %17, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %24, 8
  %26 = sext i32 %25 to i64
  %27 = add i64 48, %26
  %28 = trunc i64 %27 to i32
  %29 = call %struct.mlx4_db_page* @malloc(i32 %28)
  store %struct.mlx4_db_page* %29, %struct.mlx4_db_page** %6, align 8
  %30 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %31 = icmp ne %struct.mlx4_db_page* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store %struct.mlx4_db_page* null, %struct.mlx4_db_page** %3, align 8
  br label %97

33:                                               ; preds = %2
  %34 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %34, i32 0, i32 5
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @mlx4_alloc_buf(i32* %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %42 = call i32 @free(%struct.mlx4_db_page* %41)
  store %struct.mlx4_db_page* null, %struct.mlx4_db_page** %3, align 8
  br label %97

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %63, %43
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 64
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %58 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 -1, i32* %62, align 4
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %49

66:                                               ; preds = %49
  %67 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %68 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %67, i32 0, i32 1
  store %struct.mlx4_db_page* null, %struct.mlx4_db_page** %68, align 8
  %69 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %70 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %69, i32 0, i32 0
  %71 = load %struct.mlx4_db_page**, %struct.mlx4_db_page*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mlx4_db_page*, %struct.mlx4_db_page** %71, i64 %73
  %75 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %74, align 8
  %76 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %77 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %76, i32 0, i32 2
  store %struct.mlx4_db_page* %75, %struct.mlx4_db_page** %77, align 8
  %78 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %79 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %80 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %79, i32 0, i32 0
  %81 = load %struct.mlx4_db_page**, %struct.mlx4_db_page*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mlx4_db_page*, %struct.mlx4_db_page** %81, i64 %83
  store %struct.mlx4_db_page* %78, %struct.mlx4_db_page** %84, align 8
  %85 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %86 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %85, i32 0, i32 2
  %87 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %86, align 8
  %88 = icmp ne %struct.mlx4_db_page* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %66
  %90 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %91 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  %92 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %91, i32 0, i32 2
  %93 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %92, align 8
  %94 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %93, i32 0, i32 1
  store %struct.mlx4_db_page* %90, %struct.mlx4_db_page** %94, align 8
  br label %95

95:                                               ; preds = %89, %66
  %96 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %6, align 8
  store %struct.mlx4_db_page* %96, %struct.mlx4_db_page** %3, align 8
  br label %97

97:                                               ; preds = %95, %40, %32
  %98 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %3, align 8
  ret %struct.mlx4_db_page* %98
}

declare dso_local %struct.TYPE_4__* @to_mdev(i32) #1

declare dso_local %struct.mlx4_db_page* @malloc(i32) #1

declare dso_local i64 @mlx4_alloc_buf(i32*, i32, i32) #1

declare dso_local i32 @free(%struct.mlx4_db_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
