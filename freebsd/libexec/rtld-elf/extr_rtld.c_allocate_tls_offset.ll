; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_allocate_tls_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_allocate_tls_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32 }

@tls_last_offset = common dso_local global i64 0, align 8
@tls_last_size = common dso_local global i32 0, align 4
@tls_static_space = common dso_local global i64 0, align 8
@tls_static_max_align = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @allocate_tls_offset(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %72

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  store i32 1, i32* %2, align 4
  br label %72

18:                                               ; preds = %10
  %19 = load i64, i64* @tls_last_offset, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @calculate_first_tls_offset(i32 %24, i64 %27)
  store i64 %28, i64* %4, align 8
  br label %39

29:                                               ; preds = %18
  %30 = load i64, i64* @tls_last_offset, align 8
  %31 = load i32, i32* @tls_last_size, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @calculate_tls_offset(i64 %30, i32 %31, i32 %34, i64 %37)
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %29, %21
  %40 = load i64, i64* @tls_static_space, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @calculate_tls_end(i64 %43, i32 %46)
  %48 = load i64, i64* @tls_static_space, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %72

51:                                               ; preds = %42
  br label %63

52:                                               ; preds = %39
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @tls_static_max_align, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* @tls_static_max_align, align 8
  br label %62

62:                                               ; preds = %58, %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  store i64 %64, i64* @tls_last_offset, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* @tls_last_size, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %63, %50, %15, %9
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @calculate_first_tls_offset(i32, i64) #1

declare dso_local i64 @calculate_tls_offset(i64, i32, i32, i64) #1

declare dso_local i64 @calculate_tls_end(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
