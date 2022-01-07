; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"\0ASecurity Option           Value\0A\00", align 1
@arglist = common dso_local global i32 0, align 4
@CAM_ARG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"status                    %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"supported                 %s\0A\00", align 1
@ATA_SECURITY_SUPPORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"enabled                   %s\0A\00", align 1
@ATA_SECURITY_ENABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"drive locked              %s\0A\00", align 1
@ATA_SECURITY_LOCKED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"security config frozen    %s\0A\00", align 1
@ATA_SECURITY_FROZEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"count expired             %s\0A\00", align 1
@ATA_SECURITY_COUNT_EXP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"security level            %s\0A\00", align 1
@ATA_SECURITY_LEVEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"enhanced erase supported  %s\0A\00", align 1
@ATA_SECURITY_ENH_SUPP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"erase time                \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"enhanced erase time       \00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"master password rev       %04x%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c" (unsupported)\00", align 1
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_params*)* @atasecurity_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atasecurity_print(%struct.ata_params* %0) #0 {
  %2 = alloca %struct.ata_params*, align 8
  store %struct.ata_params* %0, %struct.ata_params** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @arglist, align 4
  %5 = load i32, i32* @CAM_ARG_VERBOSE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %10 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %15 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATA_SECURITY_SUPPORTED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %24 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ATA_SECURITY_SUPPORTED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %13
  br label %114

30:                                               ; preds = %13
  %31 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %32 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ATA_SECURITY_ENABLED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %38)
  %40 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %41 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATA_SECURITY_LOCKED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %50 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ATA_SECURITY_FROZEN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %56)
  %58 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %59 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATA_SECURITY_COUNT_EXP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %65)
  %67 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %68 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ATA_SECURITY_LEVEL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %74)
  %76 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %77 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ATA_SECURITY_ENH_SUPP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %83)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %86 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %87 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @atasecurity_print_time(i32 %88)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %92 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %93 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @atasecurity_print_time(i32 %94)
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %97 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %98 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %101 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %30
  %105 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %106 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 65535
  br label %109

109:                                              ; preds = %104, %30
  %110 = phi i1 [ true, %30 ], [ %108, %104 ]
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i64 0, i64 0)
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 %99, i8* %112)
  br label %114

114:                                              ; preds = %109, %29
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @atasecurity_print_time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
