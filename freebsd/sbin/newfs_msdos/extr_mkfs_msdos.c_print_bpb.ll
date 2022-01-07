; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs_msdos/extr_mkfs_msdos.c_print_bpb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs_msdos/extr_mkfs_msdos.c_print_bpb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"BytesPerSec=%u SecPerClust=%u ResSectors=%u FATs=%u\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" RootDirEnts=%u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" Sectors=%u\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" Media=%#x\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" FATsecs=%u\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c" SecPerTrack=%u Heads=%u HiddenSecs=%u\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c" HugeSectors=%u\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c" FATsecs=%u RootCluster=%u\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" FSInfo=\00", align 1
@MAXU16 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"%#x\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" Backup=\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpb*)* @print_bpb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bpb(%struct.bpb* %0) #0 {
  %2 = alloca %struct.bpb*, align 8
  store %struct.bpb* %0, %struct.bpb** %2, align 8
  %3 = load %struct.bpb*, %struct.bpb** %2, align 8
  %4 = getelementptr inbounds %struct.bpb, %struct.bpb* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.bpb*, %struct.bpb** %2, align 8
  %7 = getelementptr inbounds %struct.bpb, %struct.bpb* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bpb*, %struct.bpb** %2, align 8
  %10 = getelementptr inbounds %struct.bpb, %struct.bpb* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.bpb*, %struct.bpb** %2, align 8
  %13 = getelementptr inbounds %struct.bpb, %struct.bpb* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %14)
  %16 = load %struct.bpb*, %struct.bpb** %2, align 8
  %17 = getelementptr inbounds %struct.bpb, %struct.bpb* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.bpb*, %struct.bpb** %2, align 8
  %22 = getelementptr inbounds %struct.bpb, %struct.bpb* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.bpb*, %struct.bpb** %2, align 8
  %27 = getelementptr inbounds %struct.bpb, %struct.bpb* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.bpb*, %struct.bpb** %2, align 8
  %32 = getelementptr inbounds %struct.bpb, %struct.bpb* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.bpb*, %struct.bpb** %2, align 8
  %37 = getelementptr inbounds %struct.bpb, %struct.bpb* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load %struct.bpb*, %struct.bpb** %2, align 8
  %41 = getelementptr inbounds %struct.bpb, %struct.bpb* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.bpb*, %struct.bpb** %2, align 8
  %46 = getelementptr inbounds %struct.bpb, %struct.bpb* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %35
  %50 = load %struct.bpb*, %struct.bpb** %2, align 8
  %51 = getelementptr inbounds %struct.bpb, %struct.bpb* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bpb*, %struct.bpb** %2, align 8
  %54 = getelementptr inbounds %struct.bpb, %struct.bpb* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bpb*, %struct.bpb** %2, align 8
  %57 = getelementptr inbounds %struct.bpb, %struct.bpb* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %52, i32 %55, i32 %58)
  %60 = load %struct.bpb*, %struct.bpb** %2, align 8
  %61 = getelementptr inbounds %struct.bpb, %struct.bpb* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.bpb*, %struct.bpb** %2, align 8
  %66 = getelementptr inbounds %struct.bpb, %struct.bpb* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %64, %49
  %70 = load %struct.bpb*, %struct.bpb** %2, align 8
  %71 = getelementptr inbounds %struct.bpb, %struct.bpb* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %106, label %74

74:                                               ; preds = %69
  %75 = load %struct.bpb*, %struct.bpb** %2, align 8
  %76 = getelementptr inbounds %struct.bpb, %struct.bpb* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bpb*, %struct.bpb** %2, align 8
  %79 = getelementptr inbounds %struct.bpb, %struct.bpb* %78, i32 0, i32 13
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %77, i32 %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %83 = load %struct.bpb*, %struct.bpb** %2, align 8
  %84 = getelementptr inbounds %struct.bpb, %struct.bpb* %83, i32 0, i32 14
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MAXU16, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %90 = load %struct.bpb*, %struct.bpb** %2, align 8
  %91 = getelementptr inbounds %struct.bpb, %struct.bpb* %90, i32 0, i32 14
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i8*, ...) @printf(i8* %89, i64 %92)
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %95 = load %struct.bpb*, %struct.bpb** %2, align 8
  %96 = getelementptr inbounds %struct.bpb, %struct.bpb* %95, i32 0, i32 15
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MAXU16, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %102 = load %struct.bpb*, %struct.bpb** %2, align 8
  %103 = getelementptr inbounds %struct.bpb, %struct.bpb* %102, i32 0, i32 15
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, ...) @printf(i8* %101, i64 %104)
  br label %106

106:                                              ; preds = %74, %69
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
