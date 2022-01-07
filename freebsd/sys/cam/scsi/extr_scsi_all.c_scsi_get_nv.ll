; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_get_nv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_get_nv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_nv = type { i8* }

@SCSI_NV_FLAG_IG_CASE = common dso_local global i32 0, align 4
@SCSI_NV_FOUND = common dso_local global i32 0, align 4
@SCSI_NV_AMBIGUOUS = common dso_local global i32 0, align 4
@SCSI_NV_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_get_nv(%struct.scsi_nv* %0, i32 %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_nv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.scsi_nv* %0, %struct.scsi_nv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %73, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = load %struct.scsi_nv*, %struct.scsi_nv** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.scsi_nv, %struct.scsi_nv* %21, i64 %23
  %25 = getelementptr inbounds %struct.scsi_nv, %struct.scsi_nv* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %14, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %15, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @SCSI_NV_FLAG_IG_CASE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %20
  %35 = load %struct.scsi_nv*, %struct.scsi_nv** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.scsi_nv, %struct.scsi_nv* %35, i64 %37
  %39 = getelementptr inbounds %struct.scsi_nv, %struct.scsi_nv* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i64 @strncasecmp(i8* %40, i8* %41, i64 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %34, %20
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @SCSI_NV_FLAG_IG_CASE, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = load %struct.scsi_nv*, %struct.scsi_nv** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.scsi_nv, %struct.scsi_nv* %51, i64 %53
  %55 = getelementptr inbounds %struct.scsi_nv, %struct.scsi_nv* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i64 @strncmp(i8* %56, i8* %57, i64 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %50, %34
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @SCSI_NV_FOUND, align 4
  store i32 %68, i32* %6, align 4
  br label %88

69:                                               ; preds = %61
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %69, %50, %45
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %16

76:                                               ; preds = %16
  %77 = load i32, i32* %13, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @SCSI_NV_AMBIGUOUS, align 4
  store i32 %80, i32* %6, align 4
  br label %88

81:                                               ; preds = %76
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @SCSI_NV_FOUND, align 4
  store i32 %85, i32* %6, align 4
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @SCSI_NV_NOT_FOUND, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %84, %79, %67
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
