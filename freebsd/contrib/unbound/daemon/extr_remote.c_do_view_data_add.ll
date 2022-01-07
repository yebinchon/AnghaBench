; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_view_data_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_view_data_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.view = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"no view with name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_view_data_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_view_data_add(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.view*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @find_arg2(i32* %9, i8* %10, i8** %7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %55

14:                                               ; preds = %3
  %15 = load %struct.worker*, %struct.worker** %5, align 8
  %16 = getelementptr inbounds %struct.worker, %struct.worker* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.view* @views_find_view(i32 %19, i8* %20, i32 1)
  store %struct.view* %21, %struct.view** %8, align 8
  %22 = load %struct.view*, %struct.view** %8, align 8
  %23 = icmp ne %struct.view* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %55

28:                                               ; preds = %14
  %29 = load %struct.view*, %struct.view** %8, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = call i64 (...) @local_zones_create()
  %35 = load %struct.view*, %struct.view** %8, align 8
  %36 = getelementptr inbounds %struct.view, %struct.view* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = icmp ne i64 %34, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.view*, %struct.view** %8, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 0
  %41 = call i32 @lock_rw_unlock(i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %55

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.view*, %struct.view** %8, align 8
  %48 = getelementptr inbounds %struct.view, %struct.view* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @do_data_add(i32* %46, i64 %49, i8* %50)
  %52 = load %struct.view*, %struct.view** %8, align 8
  %53 = getelementptr inbounds %struct.view, %struct.view* %52, i32 0, i32 0
  %54 = call i32 @lock_rw_unlock(i32* %53)
  br label %55

55:                                               ; preds = %45, %38, %24, %13
  ret void
}

declare dso_local i32 @find_arg2(i32*, i8*, i8**) #1

declare dso_local %struct.view* @views_find_view(i32, i8*, i32) #1

declare dso_local i32 @ssl_printf(i32*, i8*, ...) #1

declare dso_local i64 @local_zones_create(...) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @do_data_add(i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
