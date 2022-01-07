; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_view_list_local_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_view_list_local_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.view = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"no view with name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_view_list_local_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_view_list_local_data(i32* %0, %struct.worker* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.worker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.view*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.worker* %1, %struct.worker** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.worker*, %struct.worker** %5, align 8
  %9 = getelementptr inbounds %struct.worker, %struct.worker* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.view* @views_find_view(i32 %12, i8* %13, i32 0)
  store %struct.view* %14, %struct.view** %7, align 8
  %15 = load %struct.view*, %struct.view** %7, align 8
  %16 = icmp ne %struct.view* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @ssl_printf(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.view*, %struct.view** %7, align 8
  %23 = getelementptr inbounds %struct.view, %struct.view* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.worker*, %struct.worker** %5, align 8
  %29 = load %struct.view*, %struct.view** %7, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @do_list_local_data(i32* %27, %struct.worker* %28, i64 %31)
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.view*, %struct.view** %7, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 0
  %36 = call i32 @lock_rw_unlock(i32* %35)
  br label %37

37:                                               ; preds = %33, %17
  ret void
}

declare dso_local %struct.view* @views_find_view(i32, i8*, i32) #1

declare dso_local i32 @ssl_printf(i32*, i8*, i8*) #1

declare dso_local i32 @do_list_local_data(i32*, %struct.worker*, i64) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
