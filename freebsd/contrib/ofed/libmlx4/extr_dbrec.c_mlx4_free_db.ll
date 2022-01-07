; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_dbrec.c_mlx4_free_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_dbrec.c_mlx4_free_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_context = type { i32, %struct.mlx4_db_page**, %struct.TYPE_5__ }
%struct.mlx4_db_page = type { i64*, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.mlx4_db_page*, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { %struct.mlx4_db_page* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@db_size = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_free_db(%struct.mlx4_context* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx4_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx4_db_page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_context* %0, %struct.mlx4_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_7__* @to_mdev(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %17, i32 0, i32 0
  %19 = call i32 @pthread_mutex_lock(i32* %18)
  %20 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %20, i32 0, i32 1
  %22 = load %struct.mlx4_db_page**, %struct.mlx4_db_page*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlx4_db_page*, %struct.mlx4_db_page** %22, i64 %24
  %26 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %25, align 8
  store %struct.mlx4_db_page* %26, %struct.mlx4_db_page** %7, align 8
  br label %27

27:                                               ; preds = %45, %3
  %28 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %29 = icmp ne %struct.mlx4_db_page* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = load i64, i64* %8, align 8
  %34 = sub i64 %33, 1
  %35 = xor i64 %34, -1
  %36 = and i64 %32, %35
  %37 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %38 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = icmp eq i64 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %49

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %47 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %46, i32 0, i32 3
  %48 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %47, align 8
  store %struct.mlx4_db_page* %48, %struct.mlx4_db_page** %7, align 8
  br label %27

49:                                               ; preds = %43, %27
  %50 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %51 = icmp ne %struct.mlx4_db_page* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %132

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %57 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %55 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = load i32*, i32** @db_size, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = sdiv i64 %62, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = urem i64 %72, 64
  %74 = shl i64 1, %73
  %75 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %76 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, %74
  store i64 %83, i64* %81, align 8
  %84 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %85 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %131, label %89

89:                                               ; preds = %53
  %90 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %91 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = icmp ne %struct.TYPE_6__* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %96 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %95, i32 0, i32 3
  %97 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %96, align 8
  %98 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %99 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store %struct.mlx4_db_page* %97, %struct.mlx4_db_page** %101, align 8
  br label %112

102:                                              ; preds = %89
  %103 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %104 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %103, i32 0, i32 3
  %105 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %104, align 8
  %106 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %107 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %106, i32 0, i32 1
  %108 = load %struct.mlx4_db_page**, %struct.mlx4_db_page*** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.mlx4_db_page*, %struct.mlx4_db_page** %108, i64 %110
  store %struct.mlx4_db_page* %105, %struct.mlx4_db_page** %111, align 8
  br label %112

112:                                              ; preds = %102, %94
  %113 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %114 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %113, i32 0, i32 3
  %115 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %114, align 8
  %116 = icmp ne %struct.mlx4_db_page* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %119 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %122 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %121, i32 0, i32 3
  %123 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %122, align 8
  %124 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %123, i32 0, i32 2
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %124, align 8
  br label %125

125:                                              ; preds = %117, %112
  %126 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %127 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %126, i32 0, i32 1
  %128 = call i32 @mlx4_free_buf(%struct.TYPE_8__* %127)
  %129 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %7, align 8
  %130 = call i32 @free(%struct.mlx4_db_page* %129)
  br label %131

131:                                              ; preds = %125, %53
  br label %132

132:                                              ; preds = %131, %52
  %133 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %134 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %133, i32 0, i32 0
  %135 = call i32 @pthread_mutex_unlock(i32* %134)
  ret void
}

declare dso_local %struct.TYPE_7__* @to_mdev(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mlx4_free_buf(%struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.mlx4_db_page*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
