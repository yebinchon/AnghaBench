; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_change_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_change_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dos_partition* }
%struct.dos_partition = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@mboot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"The data for partition %d is:\0A\00", align 1
@u_flag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Do you want to change it?\00", align 1
@i_flag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"\0AThe static data for the slice 1 has been reinitialized to:\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"sysid (165=FreeBSD)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@NO_DISK_SECTORS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"ERROR: failed to adjust; setting sysid to 0\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Explicitly specify beg/end address ?\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"beginning cylinder\00", align 1
@NO_TRACK_CYLINDERS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"beginning head\00", align 1
@NO_TRACK_HEADS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"beginning sector\00", align 1
@NO_TRACK_SECTORS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"ending cylinder\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ending head\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"ending sector\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Are we happy with this entry?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @change_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_part(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dos_partition*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load %struct.dos_partition*, %struct.dos_partition** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mboot, i32 0, i32 0), align 8
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %8, i64 %11
  store %struct.dos_partition* %12, %struct.dos_partition** %3, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %16 = call i32 @print_part(%struct.dos_partition* %15)
  %17 = load i64, i64* @u_flag, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %153

19:                                               ; preds = %1
  %20 = call i64 @ok(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %153

22:                                               ; preds = %19
  %23 = load i64, i64* @i_flag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %27 = call i32 @bzero(%struct.dos_partition* %26, i32 56)
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = call i32 @init_sector0(i32 1)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %34 = call i32 @print_part(%struct.dos_partition* %33)
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %148, %36
  %38 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %39 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @Decimal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %41, i32 255)
  %43 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %44 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @NO_DISK_SECTORS, align 4
  %48 = call i32 @Decimal(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %50 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @NO_DISK_SECTORS, align 4
  %54 = call i32 @Decimal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %56 = call i32 @sanitize_partition(%struct.dos_partition* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %37
  %59 = call i32 @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %60 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %61 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %37
  %63 = call i64 @ok(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %142

65:                                               ; preds = %62
  %66 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %67 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %66, i32 0, i32 8
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %70 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %69, i32 0, i32 7
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @DPCYL(i8* %68, i8* %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %74 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  %76 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %77 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %76, i32 0, i32 7
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @DPSECT(i8* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @NO_TRACK_CYLINDERS, align 4
  %83 = call i32 @Decimal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @NO_TRACK_HEADS, align 4
  %87 = call i32 @Decimal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @NO_TRACK_SECTORS, align 4
  %91 = call i32 @Decimal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = call i8* @DOSCYL(i32 %92)
  %94 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %95 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %94, i32 0, i32 8
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i8* @DOSSECT(i32 %96, i32 %97)
  %99 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %100 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %103 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %105 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %104, i32 0, i32 6
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %108 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %107, i32 0, i32 5
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @DPCYL(i8* %106, i8* %109)
  store i32 %110, i32* %6, align 4
  %111 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %112 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %7, align 4
  %114 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %115 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %114, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @DPSECT(i8* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @NO_TRACK_CYLINDERS, align 4
  %121 = call i32 @Decimal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @NO_TRACK_HEADS, align 4
  %125 = call i32 @Decimal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @NO_TRACK_SECTORS, align 4
  %129 = call i32 @Decimal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %6, align 4
  %131 = call i8* @DOSCYL(i32 %130)
  %132 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %133 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %132, i32 0, i32 6
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i8* @DOSSECT(i32 %134, i32 %135)
  %137 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %138 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %141 = getelementptr inbounds %struct.dos_partition, %struct.dos_partition* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  br label %145

142:                                              ; preds = %62
  %143 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %144 = call i32 @dos(%struct.dos_partition* %143)
  br label %145

145:                                              ; preds = %142, %65
  %146 = load %struct.dos_partition*, %struct.dos_partition** %3, align 8
  %147 = call i32 @print_part(%struct.dos_partition* %146)
  br label %148

148:                                              ; preds = %145
  %149 = call i64 @ok(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %150 = icmp ne i64 %149, 0
  %151 = xor i1 %150, true
  br i1 %151, label %37, label %152

152:                                              ; preds = %148
  br label %153

153:                                              ; preds = %152, %19, %1
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_part(%struct.dos_partition*) #1

declare dso_local i64 @ok(i8*) #1

declare dso_local i32 @bzero(%struct.dos_partition*, i32) #1

declare dso_local i32 @init_sector0(i32) #1

declare dso_local i32 @Decimal(i8*, i32, i32, i32) #1

declare dso_local i32 @sanitize_partition(%struct.dos_partition*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @DPCYL(i8*, i8*) #1

declare dso_local i32 @DPSECT(i8*) #1

declare dso_local i8* @DOSCYL(i32) #1

declare dso_local i8* @DOSSECT(i32, i32) #1

declare dso_local i32 @dos(%struct.dos_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
