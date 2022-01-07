; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_image = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_image, align 8
  %3 = call i32 @memset(%struct.pt_image* %2, i32 205, i32 32)
  %4 = call i32 @pt_image_init(%struct.pt_image* %2, i32* null)
  %5 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %2, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @ptu_null(i8* %6)
  %8 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %2, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @ptu_null(i8* %9)
  %11 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %2, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @ptu_null(i8* %14)
  %16 = getelementptr inbounds %struct.pt_image, %struct.pt_image* %2, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @ptu_null(i8* %18)
  %20 = call i32 (...) @ptu_passed()
  %21 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

declare dso_local i32 @memset(%struct.pt_image*, i32, i32) #1

declare dso_local i32 @pt_image_init(%struct.pt_image*, i32*) #1

declare dso_local i32 @ptu_null(i8*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
