; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32, i64, i32*, i32, i32*, i32*, %struct.ck_malloc* }
%struct.ck_malloc = type { i32*, i32* }

@CK_RHS_DEFAULT_LOAD_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_rhs_init(%struct.ck_rhs* %0, i32 %1, i32* %2, i32* %3, %struct.ck_malloc* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ck_rhs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ck_malloc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ck_rhs* %0, %struct.ck_rhs** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.ck_malloc* %4, %struct.ck_malloc** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load %struct.ck_malloc*, %struct.ck_malloc** %13, align 8
  %17 = icmp eq %struct.ck_malloc* %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %7
  %19 = load %struct.ck_malloc*, %struct.ck_malloc** %13, align 8
  %20 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load %struct.ck_malloc*, %struct.ck_malloc** %13, align 8
  %25 = getelementptr inbounds %struct.ck_malloc, %struct.ck_malloc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %11, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %23, %18, %7
  store i32 0, i32* %8, align 4
  br label %61

32:                                               ; preds = %28
  %33 = load %struct.ck_malloc*, %struct.ck_malloc** %13, align 8
  %34 = load %struct.ck_rhs*, %struct.ck_rhs** %9, align 8
  %35 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %34, i32 0, i32 6
  store %struct.ck_malloc* %33, %struct.ck_malloc** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.ck_rhs*, %struct.ck_rhs** %9, align 8
  %38 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* %15, align 8
  %40 = load %struct.ck_rhs*, %struct.ck_rhs** %9, align 8
  %41 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.ck_rhs*, %struct.ck_rhs** %9, align 8
  %44 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %43, i32 0, i32 5
  store i32* %42, i32** %44, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.ck_rhs*, %struct.ck_rhs** %9, align 8
  %47 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %46, i32 0, i32 4
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* @CK_RHS_DEFAULT_LOAD_FACTOR, align 4
  %49 = load %struct.ck_rhs*, %struct.ck_rhs** %9, align 8
  %50 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ck_rhs*, %struct.ck_rhs** %9, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i32* @ck_rhs_map_create(%struct.ck_rhs* %51, i64 %52)
  %54 = load %struct.ck_rhs*, %struct.ck_rhs** %9, align 8
  %55 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.ck_rhs*, %struct.ck_rhs** %9, align 8
  %57 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %32, %31
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32* @ck_rhs_map_create(%struct.ck_rhs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
