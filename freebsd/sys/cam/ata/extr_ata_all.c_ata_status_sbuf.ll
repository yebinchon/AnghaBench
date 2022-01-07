; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_status_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_status_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_ataio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"ATA status: %02x (%s%s%s%s%s%s%s%s)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BSY \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DRDY \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DF \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SERV \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"DRQ \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"CORR \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"IDX \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c", error: %02x (%s%s%s%s%s%s%s%s)\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ICRC \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"UNC \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"MC \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"IDNF \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"MCR \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"ABRT \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"NM \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ILI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_status_sbuf(%struct.ccb_ataio* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.ccb_ataio*, align 8
  %4 = alloca %struct.sbuf*, align 8
  store %struct.ccb_ataio* %0, %struct.ccb_ataio** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %5 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %6 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %7 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %11 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %18 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %19 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %27 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 32
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %34 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %35 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 16
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %42 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %43 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %50 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %51 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %58 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %59 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 2
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %66 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %67 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32 @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %17, i8* %25, i8* %33, i8* %41, i8* %49, i8* %57, i8* %65, i8* %73)
  %75 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %76 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %152

81:                                               ; preds = %2
  %82 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %83 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %84 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %88 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 128
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %95 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %96 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 64
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %103 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %104 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 32
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %111 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %112 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 16
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %119 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %120 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 8
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %127 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %128 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %135 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %136 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 2
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %143 = load %struct.ccb_ataio*, %struct.ccb_ataio** %3, align 8
  %144 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %151 = call i32 @sbuf_printf(%struct.sbuf* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %86, i8* %94, i8* %102, i8* %110, i8* %118, i8* %126, i8* %134, i8* %142, i8* %150)
  br label %152

152:                                              ; preds = %81, %2
  ret i32 0
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
