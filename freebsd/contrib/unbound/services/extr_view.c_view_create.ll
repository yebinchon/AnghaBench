; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_view.c_view_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_view.c_view_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.view* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.view* (i8*)* @view_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.view* @view_create(i8* %0) #0 {
  %2 = alloca %struct.view*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.view*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i64 @calloc(i32 1, i32 16)
  %6 = inttoptr i64 %5 to %struct.view*
  store %struct.view* %6, %struct.view** %4, align 8
  %7 = load %struct.view*, %struct.view** %4, align 8
  %8 = icmp ne %struct.view* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.view* null, %struct.view** %2, align 8
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.view*, %struct.view** %4, align 8
  %12 = load %struct.view*, %struct.view** %4, align 8
  %13 = getelementptr inbounds %struct.view, %struct.view* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.view* %11, %struct.view** %14, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strdup(i8* %15)
  %17 = load %struct.view*, %struct.view** %4, align 8
  %18 = getelementptr inbounds %struct.view, %struct.view* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = icmp ne i32 %16, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = load %struct.view*, %struct.view** %4, align 8
  %22 = call i32 @free(%struct.view* %21)
  store %struct.view* null, %struct.view** %2, align 8
  br label %33

23:                                               ; preds = %10
  %24 = load %struct.view*, %struct.view** %4, align 8
  %25 = getelementptr inbounds %struct.view, %struct.view* %24, i32 0, i32 1
  %26 = call i32 @lock_rw_init(i32* %25)
  %27 = load %struct.view*, %struct.view** %4, align 8
  %28 = getelementptr inbounds %struct.view, %struct.view* %27, i32 0, i32 1
  %29 = load %struct.view*, %struct.view** %4, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 0
  %31 = call i32 @lock_protect(i32* %28, i32* %30, i32 12)
  %32 = load %struct.view*, %struct.view** %4, align 8
  store %struct.view* %32, %struct.view** %2, align 8
  br label %33

33:                                               ; preds = %23, %20, %9
  %34 = load %struct.view*, %struct.view** %2, align 8
  ret %struct.view* %34
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(%struct.view*) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
