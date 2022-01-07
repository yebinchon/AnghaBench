; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_dbrec.c_mlx5_free_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_dbrec.c_mlx5_free_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32, i32, %struct.mlx5_db_page*, %struct.TYPE_5__ }
%struct.mlx5_db_page = type { i64*, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.mlx5_db_page*, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { %struct.mlx5_db_page* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_free_db(%struct.mlx5_context* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx5_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mlx5_db_page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_7__* @to_mdev(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %15, i32 0, i32 1
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  %18 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %18, i32 0, i32 2
  %20 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %19, align 8
  store %struct.mlx5_db_page* %20, %struct.mlx5_db_page** %5, align 8
  br label %21

21:                                               ; preds = %39, %2
  %22 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %23 = icmp ne %struct.mlx5_db_page* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = ptrtoint i32* %25 to i64
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %27, 1
  %29 = xor i64 %28, -1
  %30 = and i64 %26, %29
  %31 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = icmp eq i64 %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %43

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %40, i32 0, i32 3
  %42 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %41, align 8
  store %struct.mlx5_db_page* %42, %struct.mlx5_db_page** %5, align 8
  br label %21

43:                                               ; preds = %37, %21
  %44 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %45 = icmp ne %struct.mlx5_db_page* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %120

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %49 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %58 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = sdiv i64 %56, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = urem i64 %64, 64
  %66 = shl i64 1, %65
  %67 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 64
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %66
  store i64 %75, i64* %73, align 8
  %76 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %77 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %119, label %81

81:                                               ; preds = %47
  %82 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %83 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = icmp ne %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %88 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %87, i32 0, i32 3
  %89 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %88, align 8
  %90 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %91 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store %struct.mlx5_db_page* %89, %struct.mlx5_db_page** %93, align 8
  br label %100

94:                                               ; preds = %81
  %95 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %96 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %95, i32 0, i32 3
  %97 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %96, align 8
  %98 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %99 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %98, i32 0, i32 2
  store %struct.mlx5_db_page* %97, %struct.mlx5_db_page** %99, align 8
  br label %100

100:                                              ; preds = %94, %86
  %101 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %102 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %101, i32 0, i32 3
  %103 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %102, align 8
  %104 = icmp ne %struct.mlx5_db_page* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %107 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %110 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %109, i32 0, i32 3
  %111 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %110, align 8
  %112 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %111, i32 0, i32 2
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %112, align 8
  br label %113

113:                                              ; preds = %105, %100
  %114 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %115 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %114, i32 0, i32 1
  %116 = call i32 @mlx5_free_buf(%struct.TYPE_8__* %115)
  %117 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %5, align 8
  %118 = call i32 @free(%struct.mlx5_db_page* %117)
  br label %119

119:                                              ; preds = %113, %47
  br label %120

120:                                              ; preds = %119, %46
  %121 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %122 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %121, i32 0, i32 1
  %123 = call i32 @pthread_mutex_unlock(i32* %122)
  ret void
}

declare dso_local %struct.TYPE_7__* @to_mdev(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mlx5_free_buf(%struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.mlx5_db_page*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
