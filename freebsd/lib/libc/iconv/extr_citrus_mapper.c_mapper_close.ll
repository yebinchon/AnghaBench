; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mapper.c_mapper_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mapper.c_mapper_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper = type { %struct._citrus_mapper*, i64, %struct._citrus_mapper*, i32 (%struct._citrus_mapper*)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._citrus_mapper*)* @mapper_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapper_close(%struct._citrus_mapper* %0) #0 {
  %2 = alloca %struct._citrus_mapper*, align 8
  store %struct._citrus_mapper* %0, %struct._citrus_mapper** %2, align 8
  %3 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %4 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %9 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %8, i32 0, i32 2
  %10 = load %struct._citrus_mapper*, %struct._citrus_mapper** %9, align 8
  %11 = icmp ne %struct._citrus_mapper* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %14 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %19 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %18, i32 0, i32 2
  %20 = load %struct._citrus_mapper*, %struct._citrus_mapper** %19, align 8
  %21 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %20, i32 0, i32 3
  %22 = load i32 (%struct._citrus_mapper*)*, i32 (%struct._citrus_mapper*)** %21, align 8
  %23 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %24 = call i32 %22(%struct._citrus_mapper* %23)
  br label %25

25:                                               ; preds = %17, %12
  %26 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %27 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %26, i32 0, i32 2
  %28 = load %struct._citrus_mapper*, %struct._citrus_mapper** %27, align 8
  %29 = call i32 @free(%struct._citrus_mapper* %28)
  br label %30

30:                                               ; preds = %25, %7
  %31 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %32 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @_citrus_unload_module(i64 %33)
  br label %35

35:                                               ; preds = %30, %1
  %36 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %37 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %36, i32 0, i32 0
  %38 = load %struct._citrus_mapper*, %struct._citrus_mapper** %37, align 8
  %39 = call i32 @free(%struct._citrus_mapper* %38)
  %40 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %41 = call i32 @free(%struct._citrus_mapper* %40)
  ret void
}

declare dso_local i32 @free(%struct._citrus_mapper*) #1

declare dso_local i32 @_citrus_unload_module(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
