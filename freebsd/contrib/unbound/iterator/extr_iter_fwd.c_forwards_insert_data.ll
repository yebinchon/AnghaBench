; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_insert_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_fwd.c_forwards_insert_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_forwards = type { i32 }
%struct.delegpt = type { i32 }
%struct.iter_forward_zone = type { i64, i32, %struct.iter_forward_zone*, %struct.TYPE_2__, %struct.delegpt*, i32 }
%struct.TYPE_2__ = type { %struct.iter_forward_zone* }

@.str = private unnamed_addr constant [35 x i8] c"duplicate forward zone %s ignored.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_forwards*, i32, i32*, i64, i32, %struct.delegpt*)* @forwards_insert_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forwards_insert_data(%struct.iter_forwards* %0, i32 %1, i32* %2, i64 %3, i32 %4, %struct.delegpt* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iter_forwards*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.delegpt*, align 8
  %14 = alloca %struct.iter_forward_zone*, align 8
  %15 = alloca [257 x i8], align 16
  store %struct.iter_forwards* %0, %struct.iter_forwards** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.delegpt* %5, %struct.delegpt** %13, align 8
  %16 = call i64 @malloc(i32 48)
  %17 = inttoptr i64 %16 to %struct.iter_forward_zone*
  store %struct.iter_forward_zone* %17, %struct.iter_forward_zone** %14, align 8
  %18 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %19 = icmp ne %struct.iter_forward_zone* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %22 = call i32 @delegpt_free_mlc(%struct.delegpt* %21)
  store i32 0, i32* %7, align 4
  br label %77

23:                                               ; preds = %6
  %24 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %25 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %26 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.iter_forward_zone* %24, %struct.iter_forward_zone** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %30 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call %struct.iter_forward_zone* @memdup(i32* %31, i64 %32)
  %34 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %35 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %34, i32 0, i32 2
  store %struct.iter_forward_zone* %33, %struct.iter_forward_zone** %35, align 8
  %36 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %37 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %36, i32 0, i32 2
  %38 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %37, align 8
  %39 = icmp ne %struct.iter_forward_zone* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %23
  %41 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %42 = call i32 @delegpt_free_mlc(%struct.delegpt* %41)
  %43 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %44 = call i32 @free(%struct.iter_forward_zone* %43)
  store i32 0, i32* %7, align 4
  br label %77

45:                                               ; preds = %23
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %48 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %51 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %53 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %54 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %53, i32 0, i32 4
  store %struct.delegpt* %52, %struct.delegpt** %54, align 8
  %55 = load %struct.iter_forwards*, %struct.iter_forwards** %8, align 8
  %56 = getelementptr inbounds %struct.iter_forwards, %struct.iter_forwards* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %59 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %58, i32 0, i32 3
  %60 = call i32 @rbtree_insert(i32 %57, %struct.TYPE_2__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %45
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds [257 x i8], [257 x i8]* %15, i64 0, i64 0
  %65 = call i32 @dname_str(i32* %63, i8* %64)
  %66 = getelementptr inbounds [257 x i8], [257 x i8]* %15, i64 0, i64 0
  %67 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = load %struct.delegpt*, %struct.delegpt** %13, align 8
  %69 = call i32 @delegpt_free_mlc(%struct.delegpt* %68)
  %70 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %71 = getelementptr inbounds %struct.iter_forward_zone, %struct.iter_forward_zone* %70, i32 0, i32 2
  %72 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %71, align 8
  %73 = call i32 @free(%struct.iter_forward_zone* %72)
  %74 = load %struct.iter_forward_zone*, %struct.iter_forward_zone** %14, align 8
  %75 = call i32 @free(%struct.iter_forward_zone* %74)
  br label %76

76:                                               ; preds = %62, %45
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %40, %20
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @delegpt_free_mlc(%struct.delegpt*) #1

declare dso_local %struct.iter_forward_zone* @memdup(i32*, i64) #1

declare dso_local i32 @free(%struct.iter_forward_zone*) #1

declare dso_local i32 @rbtree_insert(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dname_str(i32*, i8*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
