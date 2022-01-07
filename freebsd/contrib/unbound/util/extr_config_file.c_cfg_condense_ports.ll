; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_condense_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_condense_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_condense_ports(%struct.config_file* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.config_file* %0, %struct.config_file** %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = load %struct.config_file*, %struct.config_file** %4, align 8
  %10 = getelementptr inbounds %struct.config_file, %struct.config_file* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @cfg_scan_ports(i32* %11, i32 65536)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32**, i32*** %5, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = call i64 @reallocarray(i32* null, i64 %19, i32 4)
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32**, i32*** %5, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i32**, i32*** %5, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %65

27:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %55, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 65536
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load %struct.config_file*, %struct.config_file** %4, align 8
  %33 = getelementptr inbounds %struct.config_file, %struct.config_file* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %31
  %41 = load %struct.config_file*, %struct.config_file** %4, align 8
  %42 = getelementptr inbounds %struct.config_file, %struct.config_file* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32**, i32*** %5, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %40, %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %28

58:                                               ; preds = %28
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @log_assert(i32 %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %26, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @cfg_scan_ports(i32*, i32) #1

declare dso_local i64 @reallocarray(i32*, i64, i32) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
