; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_image.c_pmcstat_image_get_aout_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_image.c_pmcstat_image_get_aout_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_image = type { i32, i64, i32 }
%struct.pmcstat_args = type { i8*, i32 }
%struct.exec = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ERROR: a.out kernel modules are unsupported \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"WARNING: Cannot determine type of \22%s\22\00", align 1
@PMCSTAT_IMAGE_INDETERMINABLE = common dso_local global i32 0, align 4
@PMCSTAT_IMAGE_AOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_image_get_aout_params(%struct.pmcstat_image* %0, %struct.pmcstat_args* %1) #0 {
  %3 = alloca %struct.pmcstat_image*, align 8
  %4 = alloca %struct.pmcstat_args*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.exec, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pmcstat_image* %0, %struct.pmcstat_image** %3, align 8
  store %struct.pmcstat_args* %1, %struct.pmcstat_args** %4, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %17 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @pmcstat_string_unintern(i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %25 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @EX_SOFTWARE, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @errx(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = trunc i64 %13 to i32
  %34 = load %struct.pmcstat_args*, %struct.pmcstat_args** %4, align 8
  %35 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @snprintf(i8* %15, i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %37)
  %39 = load i32, i32* @O_RDONLY, align 4
  %40 = call i32 @open(i8* %15, i32 %39, i32 0)
  store i32 %40, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @read(i32 %43, %struct.exec* %7, i32 4)
  store i64 %44, i64* %6, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %42, %32
  %47 = load %struct.pmcstat_args*, %struct.pmcstat_args** %4, align 8
  %48 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* @PMCSTAT_IMAGE_INDETERMINABLE, align 4
  %56 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %57 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @close(i32 %61)
  br label %63

63:                                               ; preds = %60, %54
  store i32 1, i32* %11, align 4
  br label %81

64:                                               ; preds = %42
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i64, i64* %6, align 8
  %68 = trunc i64 %67 to i32
  %69 = zext i32 %68 to i64
  %70 = icmp ne i64 %69, 4
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.exec, %struct.exec* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @N_BADMAG(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %64
  store i32 1, i32* %11, align 4
  br label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @PMCSTAT_IMAGE_AOUT, align 4
  %79 = load %struct.pmcstat_image*, %struct.pmcstat_image** %3, align 8
  %80 = getelementptr inbounds %struct.pmcstat_image, %struct.pmcstat_image* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 1, i32* %11, align 4
  br label %81

81:                                               ; preds = %77, %76, %63
  %82 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %82)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @pmcstat_string_unintern(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i64 @read(i32, %struct.exec*, i32) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @N_BADMAG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
