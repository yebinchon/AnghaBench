; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_printfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_printfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8*, i64, i8* }

@.str = private unnamed_addr constant [54 x i8] c"POSIX.1e ACLs: (-a)                                %s\00", align 1
@sblock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FS_ACLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"NFSv4 ACLs: (-N)                                   %s\00", align 1
@FS_NFS4ACLS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"MAC multilabel: (-l)                               %s\00", align 1
@FS_MULTILABEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"soft updates: (-n)                                 %s\00", align 1
@FS_DOSOFTDEP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"soft update journaling: (-j)                       %s\00", align 1
@FS_SUJ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"gjournal: (-J)                                     %s\00", align 1
@FS_GJOURNAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"trim: (-t)                                         %s\00", align 1
@FS_TRIM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [54 x i8] c"maximum blocks per file in a cylinder group: (-e)  %d\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"average file size: (-f)                            %d\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"average number of files in a directory: (-s)       %d\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"minimum percentage of free space: (-m)             %d%%\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"space to hold for metadata blocks: (-k)            %jd\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"optimization preference: (-o)                      %s\00", align 1
@FS_OPTSPACE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@MINFREE = common dso_local global i8* null, align 8
@OPTWARN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@FS_OPTTIME = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"volume label: (-L)                                 %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @printfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printfs() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %2 = load i32, i32* @FS_ACLS, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %7 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %9 = load i32, i32* @FS_NFS4ACLS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %16 = load i32, i32* @FS_MULTILABEL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %23 = load i32, i32* @FS_DOSOFTDEP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %30 = load i32, i32* @FS_SUJ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %37 = load i32, i32* @FS_GJOURNAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %44 = load i32, i32* @FS_TRIM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 1), align 8
  %51 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* %50)
  %52 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 2), align 8
  %53 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 3), align 8
  %55 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i8* %54)
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 4), align 8
  %57 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 5), align 8
  %59 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i8* %58)
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 6), align 8
  %61 = load i64, i64* @FS_OPTSPACE, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  %65 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i8* %64)
  %66 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 4), align 8
  %67 = load i8*, i8** @MINFREE, align 8
  %68 = icmp uge i8* %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %0
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 6), align 8
  %71 = load i64, i64* @FS_OPTSPACE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* @OPTWARN, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load i8*, i8** @MINFREE, align 8
  %78 = call i32 (i8*, i8*, ...) @warnx(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %69, %0
  %80 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 4), align 8
  %81 = load i8*, i8** @MINFREE, align 8
  %82 = icmp ult i8* %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 6), align 8
  %85 = load i64, i64* @FS_OPTTIME, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* @OPTWARN, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load i8*, i8** @MINFREE, align 8
  %92 = call i32 (i8*, i8*, ...) @warnx(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %87, %83, %79
  %94 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 7), align 8
  %95 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i8* %94)
  ret void
}

declare dso_local i32 @warnx(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
