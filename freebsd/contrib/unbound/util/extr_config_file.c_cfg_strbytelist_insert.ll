; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_strbytelist_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_strbytelist_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_strbytelist = type { i8*, i64, %struct.config_strbytelist*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_strbytelist_insert(%struct.config_strbytelist** %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.config_strbytelist**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.config_strbytelist*, align 8
  store %struct.config_strbytelist** %0, %struct.config_strbytelist*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.config_strbytelist**, %struct.config_strbytelist*** %6, align 8
  %18 = icmp ne %struct.config_strbytelist** %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %4
  store i32 0, i32* %5, align 4
  br label %42

20:                                               ; preds = %16
  %21 = call i64 @calloc(i32 1, i32 32)
  %22 = inttoptr i64 %21 to %struct.config_strbytelist*
  store %struct.config_strbytelist* %22, %struct.config_strbytelist** %10, align 8
  %23 = load %struct.config_strbytelist*, %struct.config_strbytelist** %10, align 8
  %24 = icmp ne %struct.config_strbytelist* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %42

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.config_strbytelist*, %struct.config_strbytelist** %10, align 8
  %29 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.config_strbytelist*, %struct.config_strbytelist** %10, align 8
  %32 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.config_strbytelist*, %struct.config_strbytelist** %10, align 8
  %35 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.config_strbytelist**, %struct.config_strbytelist*** %6, align 8
  %37 = load %struct.config_strbytelist*, %struct.config_strbytelist** %36, align 8
  %38 = load %struct.config_strbytelist*, %struct.config_strbytelist** %10, align 8
  %39 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %38, i32 0, i32 2
  store %struct.config_strbytelist* %37, %struct.config_strbytelist** %39, align 8
  %40 = load %struct.config_strbytelist*, %struct.config_strbytelist** %10, align 8
  %41 = load %struct.config_strbytelist**, %struct.config_strbytelist*** %6, align 8
  store %struct.config_strbytelist* %40, %struct.config_strbytelist** %41, align 8
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %26, %25, %19
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
