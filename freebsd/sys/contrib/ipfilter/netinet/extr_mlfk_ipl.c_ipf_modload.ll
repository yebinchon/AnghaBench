; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_mlfk_ipl.c_ipf_modload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_mlfk_ipl.c_ipf_modload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@IPL_LOGSIZE = common dso_local global i32 0, align 4
@ipf_devs = common dso_local global i32** null, align 8
@ipf_devfiles = common dso_local global i8** null, align 8
@ipf_cdevsw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ipf_modload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipf_modload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i64 (...) @ipf_load_all()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @EIO, align 4
  store i32 %10, i32* %1, align 4
  br label %85

11:                                               ; preds = %0
  %12 = call i64 (...) @ipf_fbsd_sysctl_create()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @EIO, align 4
  store i32 %15, i32* %1, align 4
  br label %85

16:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %26, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IPL_LOGSIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32**, i32*** @ipf_devs, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %17

29:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %74, %29
  %31 = load i8**, i8*** @ipf_devfiles, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %3, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %77

37:                                               ; preds = %30
  store i8* null, i8** %2, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %58, %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %2, align 8
  br label %61

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %5, align 4
  br label %40

61:                                               ; preds = %51, %40
  %62 = load i8*, i8** %2, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %3, align 8
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i32, i32* %4, align 4
  %68 = load i8*, i8** %2, align 8
  %69 = call i32* @make_dev(i32* @ipf_cdevsw, i32 %67, i32 0, i32 0, i32 384, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i32**, i32*** @ipf_devs, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  store i32* %69, i32** %73, align 8
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %30

77:                                               ; preds = %30
  %78 = call i32 (...) @ipf_pfil_hook()
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %1, align 4
  br label %85

83:                                               ; preds = %77
  %84 = call i32 (...) @ipf_event_reg()
  store i32 0, i32* %1, align 4
  br label %85

85:                                               ; preds = %83, %81, %14, %9
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i64 @ipf_load_all(...) #1

declare dso_local i64 @ipf_fbsd_sysctl_create(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @make_dev(i32*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ipf_pfil_hook(...) #1

declare dso_local i32 @ipf_event_reg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
