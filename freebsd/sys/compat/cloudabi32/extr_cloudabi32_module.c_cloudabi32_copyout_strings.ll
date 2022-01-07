; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi32/extr_cloudabi32_module.c_cloudabi32_copyout_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi32/extr_cloudabi32_module.c_cloudabi32_copyout_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { %struct.TYPE_2__*, %struct.image_args* }
%struct.TYPE_2__ = type { i64 }
%struct.image_args = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cloudabi32_copyout_strings(%struct.image_params* %0) #0 {
  %2 = alloca %struct.image_params*, align 8
  %3 = alloca %struct.image_args*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.image_params* %0, %struct.image_params** %2, align 8
  %6 = load %struct.image_params*, %struct.image_params** %2, align 8
  %7 = getelementptr inbounds %struct.image_params, %struct.image_params* %6, i32 0, i32 1
  %8 = load %struct.image_args*, %struct.image_args** %7, align 8
  store %struct.image_args* %8, %struct.image_args** %3, align 8
  %9 = load %struct.image_args*, %struct.image_args** %3, align 8
  %10 = call i64 @exec_args_get_begin_envv(%struct.image_args* %9)
  %11 = load %struct.image_args*, %struct.image_args** %3, align 8
  %12 = getelementptr inbounds %struct.image_args, %struct.image_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  store i64 %14, i64* %5, align 8
  %15 = load %struct.image_params*, %struct.image_params** %2, align 8
  %16 = getelementptr inbounds %struct.image_params, %struct.image_params* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 %19, %20
  %22 = call i64 @rounddown2(i64 %21, i32 4)
  store i64 %22, i64* %4, align 8
  %23 = load %struct.image_args*, %struct.image_args** %3, align 8
  %24 = getelementptr inbounds %struct.image_args, %struct.image_args* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @copyout(i64 %25, i8* %27, i64 %28)
  %30 = load i64, i64* %4, align 8
  %31 = inttoptr i64 %30 to i32*
  ret i32* %31
}

declare dso_local i64 @exec_args_get_begin_envv(%struct.image_args*) #1

declare dso_local i64 @rounddown2(i64, i32) #1

declare dso_local i32 @copyout(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
