; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_print_ident_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_print_ident_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32, i32, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@ATA_PROTO_CFA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"CFA\00", align 1
@ATA_PROTO_ATAPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ATAPI\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ATA\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s8-ACS\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ACS-%d %s\00", align 1
@ATA_SATA_GEN3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c" SATA 3.x\00", align 1
@ATA_SATA_GEN2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c" SATA 2.x\00", align 1
@ATA_SATA_GEN1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c" SATA 1.x\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" SATA\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%s device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_print_ident_sbuf(%struct.ata_params* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.ata_params*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ata_params* %0, %struct.ata_params** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %8 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %9 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %10 = call i32 @ata_print_ident_short_sbuf(%struct.ata_params* %8, %struct.sbuf* %9)
  %11 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %12 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %14 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATA_PROTO_CFA, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %21 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ATA_PROTO_ATAPI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %28

28:                                               ; preds = %19, %18
  %29 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %18 ], [ %27, %19 ]
  store i8* %29, i8** %5, align 8
  %30 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %31 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ata_version(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %48 [
    i32 0, label %35
    i32 1, label %39
    i32 2, label %39
    i32 3, label %39
    i32 4, label %39
    i32 5, label %39
    i32 6, label %39
    i32 7, label %39
    i32 8, label %44
  ]

35:                                               ; preds = %28
  %36 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  br label %54

39:                                               ; preds = %28, %28, %28, %28, %28, %28, %28
  %40 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %41, i32 %42)
  br label %54

44:                                               ; preds = %28
  %45 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  br label %54

48:                                               ; preds = %28
  %49 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 7
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %48, %44, %39, %35
  %55 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %56 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %54
  %60 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %61 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 65535
  br i1 %63, label %64, label %92

64:                                               ; preds = %59
  %65 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %66 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ATA_SATA_GEN3, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %91

72:                                               ; preds = %64
  %73 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %74 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ATA_SATA_GEN2, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %90

80:                                               ; preds = %72
  %81 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %82 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ATA_SATA_GEN1, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %89

88:                                               ; preds = %80
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %79
  br label %91

91:                                               ; preds = %90, %71
  br label %93

92:                                               ; preds = %59, %54
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8** %6, align 8
  br label %93

93:                                               ; preds = %92, %91
  %94 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %95)
  ret void
}

declare dso_local i32 @ata_print_ident_short_sbuf(%struct.ata_params*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @ata_version(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
