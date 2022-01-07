; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_print_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_print_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { %struct.config_strlist*, i32 }
%struct.config_strlist = type { i32, %struct.config_strlist* }

@.str = private unnamed_addr constant [8 x i8] c"pidfile\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"auto-trust-anchor-file\00", align 1
@config_print_func = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot print option '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_file*, i8*, i32)* @print_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_option(%struct.config_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.config_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.config_strlist*, align 8
  %9 = alloca i8*, align 8
  store %struct.config_file* %0, %struct.config_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.config_file*, %struct.config_file** %4, align 8
  %18 = getelementptr inbounds %struct.config_file, %struct.config_file* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.config_file*, %struct.config_file** %4, align 8
  %21 = call i8* @fname_after_chroot(i32 %19, %struct.config_file* %20, i32 1)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @free(i8* %29)
  br label %75

31:                                               ; preds = %13, %3
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load %struct.config_file*, %struct.config_file** %4, align 8
  %40 = getelementptr inbounds %struct.config_file, %struct.config_file* %39, i32 0, i32 0
  %41 = load %struct.config_strlist*, %struct.config_strlist** %40, align 8
  store %struct.config_strlist* %41, %struct.config_strlist** %8, align 8
  br label %42

42:                                               ; preds = %60, %38
  %43 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %44 = icmp ne %struct.config_strlist* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %47 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.config_file*, %struct.config_file** %4, align 8
  %50 = call i8* @fname_after_chroot(i32 %48, %struct.config_file* %49, i32 1)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %55
  %61 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %62 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %61, i32 0, i32 1
  %63 = load %struct.config_strlist*, %struct.config_strlist** %62, align 8
  store %struct.config_strlist* %63, %struct.config_strlist** %8, align 8
  br label %42

64:                                               ; preds = %42
  br label %75

65:                                               ; preds = %35, %31
  %66 = load %struct.config_file*, %struct.config_file** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* @config_print_func, align 4
  %69 = load i32, i32* @stdout, align 4
  %70 = call i32 @config_get_option(%struct.config_file* %66, i8* %67, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %26, %64, %72, %65
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @fname_after_chroot(i32, %struct.config_file*, i32) #1

declare dso_local i32 @fatal_exit(i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @config_get_option(%struct.config_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
