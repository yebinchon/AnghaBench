; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_print_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_print_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32, i32, i32 }

@ATA_PROTO_CFA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"CFA\00", align 1
@ATA_PROTO_ATAPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ATAPI\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ATA\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s8-ACS\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ACS-%d %s\00", align 1
@ATA_SATA_GEN3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" SATA 3.x\00", align 1
@ATA_SATA_GEN2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c" SATA 2.x\00", align 1
@ATA_SATA_GEN1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c" SATA 1.x\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" SATA\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" %s%s device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_print_ident(%struct.ata_params* %0) #0 {
  %2 = alloca %struct.ata_params*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [12 x i8], align 1
  %5 = alloca [12 x i8], align 1
  store %struct.ata_params* %0, %struct.ata_params** %2, align 8
  %6 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %7 = call i32 @ata_print_ident_short(%struct.ata_params* %6)
  %8 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %9 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ATA_PROTO_CFA, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %16 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ATA_PROTO_ATAPI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  br label %23

23:                                               ; preds = %14, %13
  %24 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %13 ], [ %22, %14 ]
  store i8* %24, i8** %3, align 8
  %25 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %26 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ata_version(i32 %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  br label %69

34:                                               ; preds = %23
  %35 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %36 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ata_version(i32 %37)
  %39 = icmp sle i32 %38, 7
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %42 = load i8*, i8** %3, align 8
  %43 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %44 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ata_version(i32 %45)
  %47 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %41, i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %42, i32 %46)
  br label %68

48:                                               ; preds = %34
  %49 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %50 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ata_version(i32 %51)
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %56)
  br label %67

58:                                               ; preds = %48
  %59 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %60 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %61 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ata_version(i32 %62)
  %64 = sub nsw i32 %63, 7
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %59, i32 12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %58, %54
  br label %68

68:                                               ; preds = %67, %40
  br label %69

69:                                               ; preds = %68, %30
  %70 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %71 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %115

74:                                               ; preds = %69
  %75 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %76 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 65535
  br i1 %78, label %79, label %115

79:                                               ; preds = %74
  %80 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %81 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ATA_SATA_GEN3, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %87, i32 12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %114

89:                                               ; preds = %79
  %90 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %91 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ATA_SATA_GEN2, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %98 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %97, i32 12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %113

99:                                               ; preds = %89
  %100 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %101 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ATA_SATA_GEN1, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %108 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %107, i32 12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %112

109:                                              ; preds = %99
  %110 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %111 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %110, i32 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %96
  br label %114

114:                                              ; preds = %113, %86
  br label %117

115:                                              ; preds = %74, %69
  %116 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %116, align 1
  br label %117

117:                                              ; preds = %115, %114
  %118 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %119 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %120 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %118, i8* %119)
  ret void
}

declare dso_local i32 @ata_print_ident_short(%struct.ata_params*) #1

declare dso_local i32 @ata_version(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
