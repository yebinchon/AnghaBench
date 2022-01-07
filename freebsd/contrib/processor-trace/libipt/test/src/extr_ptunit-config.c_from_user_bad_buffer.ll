; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_from_user_bad_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_from_user_bad_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_config = type { i32*, i32* }

@pte_bad_config = common dso_local global i32 0, align 4
@buffer = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @from_user_bad_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from_user_bad_buffer() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_config, align 8
  %3 = alloca %struct.pt_config, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @pt_config_init(%struct.pt_config* %3)
  %6 = call i32 @pt_config_from_user(%struct.pt_config* %2, %struct.pt_config* %3)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @pte_bad_config, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32 @ptu_int_eq(i32 %7, i32 %9)
  %11 = load i32*, i32** @buffer, align 8
  %12 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %3, i32 0, i32 1
  store i32* %11, i32** %12, align 8
  %13 = call i32 @pt_config_from_user(%struct.pt_config* %2, %struct.pt_config* %3)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @pte_bad_config, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @ptu_int_eq(i32 %14, i32 %16)
  %18 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %3, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load i32*, i32** @buffer, align 8
  %20 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %3, i32 0, i32 0
  store i32* %19, i32** %20, align 8
  %21 = call i32 @pt_config_from_user(%struct.pt_config* %2, %struct.pt_config* %3)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @pte_bad_config, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @ptu_int_eq(i32 %22, i32 %24)
  %26 = load i32*, i32** @buffer, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %3, i32 0, i32 1
  store i32* %27, i32** %28, align 8
  %29 = load i32*, i32** @buffer, align 8
  %30 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %3, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = call i32 @pt_config_from_user(%struct.pt_config* %2, %struct.pt_config* %3)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @pte_bad_config, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @ptu_int_eq(i32 %32, i32 %34)
  %36 = call i32 (...) @ptu_passed()
  %37 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

declare dso_local i32 @pt_config_init(%struct.pt_config*) #1

declare dso_local i32 @pt_config_from_user(%struct.pt_config*, %struct.pt_config*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
