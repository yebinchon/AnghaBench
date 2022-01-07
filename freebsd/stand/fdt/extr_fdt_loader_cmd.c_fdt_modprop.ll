; ModuleID = '/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_modprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/fdt/extr_fdt_loader_cmd.c_fdt_modprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32 }

@fdtp = common dso_local global i32 0, align 4
@command_errbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"property already exists!\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"property does not exist!\00", align 1
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Device tree blob is too small!\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Could not add/modify property!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8)* @fdt_modprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_modprop(i32 %0, i8* %1, i8* %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca [100 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fdt_property*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8 %3, i8* %9, align 1
  %15 = load i32, i32* @fdtp, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call %struct.fdt_property* @fdt_get_property(i32 %15, i32 %16, i8* %17, i32* null)
  store %struct.fdt_property* %18, %struct.fdt_property** %14, align 8
  %19 = load %struct.fdt_property*, %struct.fdt_property** %14, align 8
  %20 = icmp ne %struct.fdt_property* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i8, i8* %9, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @command_errbuf, align 4
  %27 = call i32 @sprintf(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @CMD_ERROR, align 4
  store i32 %28, i32* %5, align 4
  br label %95

29:                                               ; preds = %21
  br label %39

30:                                               ; preds = %4
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @command_errbuf, align 4
  %36 = call i32 @sprintf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @CMD_ERROR, align 4
  store i32 %37, i32* %5, align 4
  br label %95

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %29
  store i32 0, i32* %13, align 4
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %72 [
    i32 38, label %44
    i32 60, label %45
    i32 91, label %58
    i32 34, label %71
  ]

44:                                               ; preds = %39
  br label %78

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = bitcast [100 x i32]* %10 to i8*
  %48 = call i32 @fdt_strtovect(i8* %46, i8* %47, i32 100, i32 4)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @fdtp, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast [100 x i32]* %10 to i32**
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @fdt_setprop(i32 %49, i32 %50, i8* %51, i32** %52, i32 %56)
  store i32 %57, i32* %13, align 4
  br label %78

58:                                               ; preds = %39
  %59 = load i8*, i8** %11, align 8
  %60 = bitcast [100 x i32]* %10 to i8*
  %61 = call i32 @fdt_strtovect(i8* %59, i8* %60, i32 100, i32 4)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* @fdtp, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = bitcast [100 x i32]* %10 to i32**
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @fdt_setprop(i32 %62, i32 %63, i8* %64, i32** %65, i32 %69)
  store i32 %70, i32* %13, align 4
  br label %78

71:                                               ; preds = %39
  br label %72

72:                                               ; preds = %39, %71
  %73 = load i32, i32* @fdtp, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @fdt_setprop_string(i32 %73, i32 %74, i8* %75, i8* %76)
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %72, %58, %45, %44
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @command_errbuf, align 4
  %88 = call i32 @sprintf(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @command_errbuf, align 4
  %91 = call i32 @sprintf(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %34, %25
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.fdt_property* @fdt_get_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @fdt_strtovect(i8*, i8*, i32, i32) #1

declare dso_local i32 @fdt_setprop(i32, i32, i8*, i32**, i32) #1

declare dso_local i32 @fdt_setprop_string(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
