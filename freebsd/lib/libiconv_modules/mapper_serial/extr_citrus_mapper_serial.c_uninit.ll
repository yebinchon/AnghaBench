; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_serial/extr_citrus_mapper_serial.c_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/mapper_serial/extr_citrus_mapper_serial.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_mapper_serial = type { i32 }
%struct.maplink = type { i32 }

@ml_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._citrus_mapper_serial*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct._citrus_mapper_serial* %0) #0 {
  %2 = alloca %struct._citrus_mapper_serial*, align 8
  %3 = alloca %struct.maplink*, align 8
  store %struct._citrus_mapper_serial* %0, %struct._citrus_mapper_serial** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct._citrus_mapper_serial*, %struct._citrus_mapper_serial** %2, align 8
  %6 = getelementptr inbounds %struct._citrus_mapper_serial, %struct._citrus_mapper_serial* %5, i32 0, i32 0
  %7 = call %struct.maplink* @STAILQ_FIRST(i32* %6)
  store %struct.maplink* %7, %struct.maplink** %3, align 8
  %8 = icmp ne %struct.maplink* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load %struct._citrus_mapper_serial*, %struct._citrus_mapper_serial** %2, align 8
  %11 = getelementptr inbounds %struct._citrus_mapper_serial, %struct._citrus_mapper_serial* %10, i32 0, i32 0
  %12 = load i32, i32* @ml_entry, align 4
  %13 = call i32 @STAILQ_REMOVE_HEAD(i32* %11, i32 %12)
  %14 = load %struct.maplink*, %struct.maplink** %3, align 8
  %15 = getelementptr inbounds %struct.maplink, %struct.maplink* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @_mapper_close(i32 %16)
  %18 = load %struct.maplink*, %struct.maplink** %3, align 8
  %19 = call i32 @free(%struct.maplink* %18)
  br label %4

20:                                               ; preds = %4
  ret void
}

declare dso_local %struct.maplink* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @_mapper_close(i32) #1

declare dso_local i32 @free(%struct.maplink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
