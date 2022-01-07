; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configurator_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_configurator_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_global = type { i32 }
%struct.dpp_configurator = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c" curve=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" key=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_configurator_add(%struct.dpp_global* %0, i8* %1) #0 {
  %3 = alloca %struct.dpp_global*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpp_configurator*, align 8
  store %struct.dpp_global* %0, %struct.dpp_global** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 -1, i32* %9, align 4
  store %struct.dpp_configurator* null, %struct.dpp_configurator** %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @get_param(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @get_param(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @os_strlen(i8* %18)
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32* @os_malloc(i64 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @hexstr2bin(i8* %27, i32* %28, i64 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %17
  br label %55

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i8*, i8** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call %struct.dpp_configurator* @dpp_keygen_configurator(i8* %35, i32* %36, i64 %37)
  store %struct.dpp_configurator* %38, %struct.dpp_configurator** %10, align 8
  %39 = load %struct.dpp_configurator*, %struct.dpp_configurator** %10, align 8
  %40 = icmp ne %struct.dpp_configurator* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %55

42:                                               ; preds = %34
  %43 = load %struct.dpp_global*, %struct.dpp_global** %3, align 8
  %44 = call i32 @dpp_next_configurator_id(%struct.dpp_global* %43)
  %45 = load %struct.dpp_configurator*, %struct.dpp_configurator** %10, align 8
  %46 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.dpp_global*, %struct.dpp_global** %3, align 8
  %48 = getelementptr inbounds %struct.dpp_global, %struct.dpp_global* %47, i32 0, i32 0
  %49 = load %struct.dpp_configurator*, %struct.dpp_configurator** %10, align 8
  %50 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %49, i32 0, i32 1
  %51 = call i32 @dl_list_add(i32* %48, i32* %50)
  %52 = load %struct.dpp_configurator*, %struct.dpp_configurator** %10, align 8
  %53 = getelementptr inbounds %struct.dpp_configurator, %struct.dpp_configurator* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  store %struct.dpp_configurator* null, %struct.dpp_configurator** %10, align 8
  br label %55

55:                                               ; preds = %42, %41, %32
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @os_free(i8* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @str_clear_free(i8* %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @bin_clear_free(i32* %60, i64 %61)
  %63 = load %struct.dpp_configurator*, %struct.dpp_configurator** %10, align 8
  %64 = call i32 @dpp_configurator_free(%struct.dpp_configurator* %63)
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i8* @get_param(i8*, i8*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @hexstr2bin(i8*, i32*, i64) #1

declare dso_local %struct.dpp_configurator* @dpp_keygen_configurator(i8*, i32*, i64) #1

declare dso_local i32 @dpp_next_configurator_id(%struct.dpp_global*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @str_clear_free(i8*) #1

declare dso_local i32 @bin_clear_free(i32*, i64) #1

declare dso_local i32 @dpp_configurator_free(%struct.dpp_configurator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
