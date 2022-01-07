; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_view_zone_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_view_zone_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.view = type { i32, i64, i32 }
%struct.config_file = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"no view with name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_view_zone_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_view_zone_add(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.view*, align 8
  %9 = alloca %struct.config_file, align 4
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @find_arg2(i32* %10, i8* %11, i8** %7)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %67

15:                                               ; preds = %3
  %16 = load %struct.worker*, %struct.worker** %5, align 8
  %17 = getelementptr inbounds %struct.worker, %struct.worker* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.view* @views_find_view(i32 %20, i8* %21, i32 1)
  store %struct.view* %22, %struct.view** %8, align 8
  %23 = load %struct.view*, %struct.view** %8, align 8
  %24 = icmp ne %struct.view* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %67

29:                                               ; preds = %15
  %30 = load %struct.view*, %struct.view** %8, align 8
  %31 = getelementptr inbounds %struct.view, %struct.view* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %29
  %35 = call i64 (...) @local_zones_create()
  %36 = load %struct.view*, %struct.view** %8, align 8
  %37 = getelementptr inbounds %struct.view, %struct.view* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = icmp ne i64 %35, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.view*, %struct.view** %8, align 8
  %41 = getelementptr inbounds %struct.view, %struct.view* %40, i32 0, i32 0
  %42 = call i32 @lock_rw_unlock(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %67

45:                                               ; preds = %34
  %46 = load %struct.view*, %struct.view** %8, align 8
  %47 = getelementptr inbounds %struct.view, %struct.view* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = call i32 @memset(%struct.config_file* %9, i32 0, i32 4)
  %52 = load %struct.view*, %struct.view** %8, align 8
  %53 = getelementptr inbounds %struct.view, %struct.view* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @local_zone_enter_defaults(i64 %54, %struct.config_file* %9)
  br label %56

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.view*, %struct.view** %8, align 8
  %60 = getelementptr inbounds %struct.view, %struct.view* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @do_zone_add(i32* %58, i64 %61, i8* %62)
  %64 = load %struct.view*, %struct.view** %8, align 8
  %65 = getelementptr inbounds %struct.view, %struct.view* %64, i32 0, i32 0
  %66 = call i32 @lock_rw_unlock(i32* %65)
  br label %67

67:                                               ; preds = %57, %39, %25, %14
  ret void
}

declare dso_local i32 @find_arg2(i32*, i8*, i8**) #1

declare dso_local %struct.view* @views_find_view(i32, i8*, i32) #1

declare dso_local i32 @ssl_printf(i32*, i8*, ...) #1

declare dso_local i64 @local_zones_create(...) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @memset(%struct.config_file*, i32, i32) #1

declare dso_local i32 @local_zone_enter_defaults(i64, %struct.config_file*) #1

declare dso_local i32 @do_zone_add(i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
