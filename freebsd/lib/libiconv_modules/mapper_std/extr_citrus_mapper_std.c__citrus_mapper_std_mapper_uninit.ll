; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_std/extr_citrus_mapper_std.c__citrus_mapper_std_mapper_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_std/extr_citrus_mapper_std.c__citrus_mapper_std_mapper_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper = type { %struct._citrus_mapper_std* }
%struct._citrus_mapper_std = type { i32, i32, i32 (%struct._citrus_mapper_std*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._citrus_mapper*)* @_citrus_mapper_std_mapper_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_citrus_mapper_std_mapper_uninit(%struct._citrus_mapper* %0) #0 {
  %2 = alloca %struct._citrus_mapper*, align 8
  %3 = alloca %struct._citrus_mapper_std*, align 8
  store %struct._citrus_mapper* %0, %struct._citrus_mapper** %2, align 8
  %4 = load %struct._citrus_mapper*, %struct._citrus_mapper** %2, align 8
  %5 = getelementptr inbounds %struct._citrus_mapper, %struct._citrus_mapper* %4, i32 0, i32 0
  %6 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %5, align 8
  store %struct._citrus_mapper_std* %6, %struct._citrus_mapper_std** %3, align 8
  %7 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %8 = getelementptr inbounds %struct._citrus_mapper_std, %struct._citrus_mapper_std* %7, i32 0, i32 2
  %9 = load i32 (%struct._citrus_mapper_std*)*, i32 (%struct._citrus_mapper_std*)** %8, align 8
  %10 = icmp ne i32 (%struct._citrus_mapper_std*)* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %13 = getelementptr inbounds %struct._citrus_mapper_std, %struct._citrus_mapper_std* %12, i32 0, i32 2
  %14 = load i32 (%struct._citrus_mapper_std*)*, i32 (%struct._citrus_mapper_std*)** %13, align 8
  %15 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %16 = call i32 %14(%struct._citrus_mapper_std* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %19 = getelementptr inbounds %struct._citrus_mapper_std, %struct._citrus_mapper_std* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @_db_close(i32 %20)
  %22 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %23 = getelementptr inbounds %struct._citrus_mapper_std, %struct._citrus_mapper_std* %22, i32 0, i32 0
  %24 = call i32 @_unmap_file(i32* %23)
  %25 = load %struct._citrus_mapper_std*, %struct._citrus_mapper_std** %3, align 8
  %26 = call i32 @free(%struct._citrus_mapper_std* %25)
  ret void
}

declare dso_local i32 @_db_close(i32) #1

declare dso_local i32 @_unmap_file(i32*) #1

declare dso_local i32 @free(%struct._citrus_mapper_std*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
