; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs/extr_newfs.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs/extr_newfs.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"usage: %s [ -fsoptions ] special-device%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" [device-type]\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"where fsoptions are:\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\09-E Erase previous disk content\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\09-J Enable journaling via gjournal\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\09-L volume label to add to superblock\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"\09-N do not create file system, just print out parameters\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\09-O file system format: 1 => UFS1, 2 => UFS2\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"\09-R regression test, suppress random factors\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"\09-S sector size\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"\09-T disktype\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\09-U enable soft updates\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\09-a maximum contiguous blocks\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\09-b block size\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\09-c blocks per cylinders group\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"\09-d maximum extent size\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"\09-e maximum blocks per file in a cylinder group\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"\09-f frag size\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"\09-g average file size\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"\09-h average files per directory\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"\09-i number of bytes per inode\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"\09-j enable soft updates journaling\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"\09-k space to hold for metadata blocks\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"\09-l enable multilabel MAC\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"\09-n do not create .snap directory\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"\09-m minimum free space %%\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"\09-o optimization preference (`space' or `time')\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"\09-p partition name (a..h)\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"\09-r reserved sectors at the end of device\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"\09-s file system size (sectors)\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"\09-t enable TRIM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i8* (...) @getprogname()
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0))
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0))
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0))
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0))
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0))
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0))
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0))
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0))
  %62 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @getprogname(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
