; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfigpar/extr_figpar.c_get_config_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfigpar/extr_figpar.c_get_config_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.figpar_config = type { %struct.TYPE_2__, i32*, i64, i32* }
%struct.TYPE_2__ = type { i64 }

@figpar_dummy_config = common dso_local global %struct.figpar_config zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.figpar_config* @get_config_option(%struct.figpar_config* %0, i8* %1) #0 {
  %3 = alloca %struct.figpar_config*, align 8
  %4 = alloca %struct.figpar_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.figpar_config* %0, %struct.figpar_config** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.figpar_config*, %struct.figpar_config** %4, align 8
  %8 = icmp eq %struct.figpar_config* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store %struct.figpar_config* @figpar_dummy_config, %struct.figpar_config** %3, align 8
  br label %39

13:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %35, %13
  %15 = load %struct.figpar_config*, %struct.figpar_config** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %15, i64 %16
  %18 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.figpar_config*, %struct.figpar_config** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %22, i64 %23
  %25 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strcmp(i32* %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.figpar_config*, %struct.figpar_config** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.figpar_config, %struct.figpar_config* %31, i64 %32
  store %struct.figpar_config* %33, %struct.figpar_config** %3, align 8
  br label %39

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %14

38:                                               ; preds = %14
  store i32* null, i32** getelementptr inbounds (%struct.figpar_config, %struct.figpar_config* @figpar_dummy_config, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.figpar_config, %struct.figpar_config* @figpar_dummy_config, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.figpar_config, %struct.figpar_config* @figpar_dummy_config, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.figpar_config, %struct.figpar_config* @figpar_dummy_config, i32 0, i32 0, i32 0), align 8
  store %struct.figpar_config* @figpar_dummy_config, %struct.figpar_config** %3, align 8
  br label %39

39:                                               ; preds = %38, %30, %12
  %40 = load %struct.figpar_config*, %struct.figpar_config** %3, align 8
  ret %struct.figpar_config* %40
}

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
