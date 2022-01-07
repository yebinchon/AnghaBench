; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_mlfk_ipl.c_ipf_modunload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_mlfk_ipl.c_ipf_modunload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipf_devfiles = common dso_local global i64* null, align 8
@ipf_devs = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [13 x i8] c"%s unloaded\0A\00", align 1
@ipfilter_version = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ipf_modunload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipf_modunload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @ipf_event_dereg()
  %5 = call i32 (...) @ipf_fbsd_sysctl_destroy()
  %6 = call i32 (...) @ipf_pfil_unhook()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %41

11:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %34, %11
  %13 = load i64*, i64** @ipf_devfiles, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load i32**, i32*** @ipf_devs, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i32**, i32*** @ipf_devs, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @destroy_dev(i32* %31)
  br label %33

33:                                               ; preds = %26, %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %12

37:                                               ; preds = %12
  %38 = call i32 (...) @ipf_unload_all()
  %39 = load i8*, i8** @ipfilter_version, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %37, %9
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @ipf_event_dereg(...) #1

declare dso_local i32 @ipf_fbsd_sysctl_destroy(...) #1

declare dso_local i32 @ipf_pfil_unhook(...) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @ipf_unload_all(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
