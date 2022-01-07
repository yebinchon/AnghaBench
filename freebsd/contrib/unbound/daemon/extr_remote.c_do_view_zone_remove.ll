; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_view_zone_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_do_view_zone_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.view = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"no view with name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.worker*, i8*)* @do_view_zone_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_view_zone_remove(i32* %0, %struct.worker* %1, i8* %2) #0 {
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
  br label %49

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
  %27 = call i32 @ssl_printf(i32* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %49

28:                                               ; preds = %14
  %29 = load %struct.view*, %struct.view** %8, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.view*, %struct.view** %8, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 0
  %36 = call i32 @lock_rw_unlock(i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @send_ok(i32* %37)
  br label %49

39:                                               ; preds = %28
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.view*, %struct.view** %8, align 8
  %42 = getelementptr inbounds %struct.view, %struct.view* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @do_zone_remove(i32* %40, i32 %43, i8* %44)
  %46 = load %struct.view*, %struct.view** %8, align 8
  %47 = getelementptr inbounds %struct.view, %struct.view* %46, i32 0, i32 0
  %48 = call i32 @lock_rw_unlock(i32* %47)
  br label %49

49:                                               ; preds = %39, %33, %24, %13
  ret void
}

declare dso_local i32 @find_arg2(i32*, i8*, i8**) #1

declare dso_local %struct.view* @views_find_view(i32, i8*, i32) #1

declare dso_local i32 @ssl_printf(i32*, i8*, i8*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @send_ok(i32*) #1

declare dso_local i32 @do_zone_remove(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
