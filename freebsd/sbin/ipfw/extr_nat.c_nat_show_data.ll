; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_nat_show_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_nat_show_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat44_cfg_nat = type { i32 }
%struct.nat_list_arg = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Error getting nat instance %s info\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nat44_cfg_nat*, i8*)* @nat_show_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat_show_data(%struct.nat44_cfg_nat* %0, i8* %1) #0 {
  %3 = alloca %struct.nat44_cfg_nat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nat_list_arg*, align 8
  %6 = alloca i32*, align 8
  store %struct.nat44_cfg_nat* %0, %struct.nat44_cfg_nat** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.nat_list_arg*
  store %struct.nat_list_arg* %8, %struct.nat_list_arg** %5, align 8
  %9 = load %struct.nat_list_arg*, %struct.nat_list_arg** %5, align 8
  %10 = getelementptr inbounds %struct.nat_list_arg, %struct.nat_list_arg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %64 [
    i32 129, label %12
    i32 128, label %33
  ]

12:                                               ; preds = %2
  %13 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %14 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nat_list_arg*, %struct.nat_list_arg** %5, align 8
  %17 = getelementptr inbounds %struct.nat_list_arg, %struct.nat_list_arg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nat_get_cmd(i32 %15, i32 %18, i32** %6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %23 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %64

26:                                               ; preds = %12
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = bitcast i32* %28 to %struct.nat44_cfg_nat*
  %30 = call i32 @nat_show_cfg(%struct.nat44_cfg_nat* %29, i32* null)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @free(i32* %31)
  br label %64

33:                                               ; preds = %2
  %34 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %35 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nat_list_arg*, %struct.nat_list_arg** %5, align 8
  %38 = getelementptr inbounds %struct.nat_list_arg, %struct.nat_list_arg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nat_get_cmd(i32 %36, i32 %39, i32** %6)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = bitcast i32* %44 to %struct.nat44_cfg_nat*
  %46 = call i32 @nat_show_log(%struct.nat44_cfg_nat* %45, i32* null)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @free(i32* %47)
  br label %64

49:                                               ; preds = %33
  %50 = load %struct.nat_list_arg*, %struct.nat_list_arg** %5, align 8
  %51 = getelementptr inbounds %struct.nat_list_arg, %struct.nat_list_arg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @errno, align 4
  %56 = load i32, i32* @ENOENT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %64

59:                                               ; preds = %54, %49
  %60 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %3, align 8
  %61 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %2, %59, %58, %42, %26, %21
  ret i32 0
}

declare dso_local i32 @nat_get_cmd(i32, i32, i32**) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @nat_show_cfg(%struct.nat44_cfg_nat*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @nat_show_log(%struct.nat44_cfg_nat*, i32*) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
