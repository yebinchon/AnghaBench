; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_command_pnpautoload.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_command_pnpautoload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 (...)* }

@pnp_verbose_flag = common dso_local global i64 0, align 8
@pnp_dump_flag = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@CMD_OK = common dso_local global i32 0, align 4
@CMD_ERROR = common dso_local global i32 0, align 4
@pnp_buses = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Skipping bus %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Autoloading modules for simplebus\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unsupported bus %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_pnpautoload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_pnpautoload(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* @pnp_verbose_flag, align 8
  store i64 0, i64* @pnp_dump_flag, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* @optind, align 4
  store i32 1, i32* @optreset, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %19 [
    i32 118, label %17
    i32 63, label %18
  ]

17:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  br label %21

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %15, %18
  %20 = load i32, i32* @CMD_OK, align 4
  store i32 %20, i32* %3, align 4
  br label %95

21:                                               ; preds = %17
  br label %10

22:                                               ; preds = %10
  %23 = load i32, i32* @optind, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i8**, i8*** %5, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  store i8** %27, i8*** %5, align 8
  %28 = load i32, i32* @optind, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @CMD_ERROR, align 4
  store i32 %35, i32* %3, align 4
  br label %95

36:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %82, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pnp_buses, align 8
  %40 = call i32 @nitems(%struct.TYPE_3__* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pnp_buses, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %48, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %45
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pnp_buses, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %60, %57
  br label %82

69:                                               ; preds = %45, %42
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pnp_buses, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32 (...)*, i32 (...)** %79, align 8
  %81 = call i32 (...) %80()
  store i32 1, i32* %9, align 4
  br label %82

82:                                               ; preds = %74, %68
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %37

85:                                               ; preds = %37
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i32, i32* @CMD_OK, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %34, %19
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
