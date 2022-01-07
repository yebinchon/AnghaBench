; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_accthdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_accthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_spcl = type { i32, i64, i64*, i32, i64 }

@accthdr.previno = internal global i32 2147483647, align 4
@accthdr.prevtype = internal global i32 0, align 4
@accthdr.predict = internal global i64 0, align 8
@TS_TAPE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Volume header \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"begins with record %jd\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Dumped inodes map header\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Used inodes map header\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"File header, ino %ju\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"File continuation header, ino %ju\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"End of tape header\00", align 1
@blksread = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"; predicted %ld blocks, got %ld blocks\00", align 1
@readmapflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_spcl*)* @accthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accthdr(%struct.s_spcl* %0) #0 {
  %2 = alloca %struct.s_spcl*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.s_spcl* %0, %struct.s_spcl** %2, align 8
  %5 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %6 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TS_TAPE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %14 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %20 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %17, %10
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 2147483647, i32* @accthdr.previno, align 4
  br label %104

27:                                               ; preds = %1
  %28 = load i32, i32* @accthdr.previno, align 4
  %29 = icmp eq i32 %28, 2147483647
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %65

31:                                               ; preds = %27
  %32 = load i32, i32* @accthdr.prevtype, align 4
  switch i32 %32, label %50 [
    i32 131, label %33
    i32 130, label %36
    i32 128, label %39
    i32 132, label %43
    i32 129, label %47
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %50

36:                                               ; preds = %31
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %50

39:                                               ; preds = %31
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* @accthdr.previno, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  br label %50

43:                                               ; preds = %31
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* @accthdr.previno, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  br label %50

47:                                               ; preds = %31
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %50

50:                                               ; preds = %31, %47, %43, %39, %36, %33
  %51 = load i64, i64* @accthdr.predict, align 8
  %52 = load i32, i32* @blksread, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* @stderr, align 4
  %58 = load i64, i64* @accthdr.predict, align 8
  %59 = load i32, i32* @blksread, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %58, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %30
  store i64 0, i64* %3, align 8
  %66 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %67 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 129
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  store i64 0, i64* %4, align 8
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i64, i64* %4, align 8
  %73 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %74 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load i64, i64* @readmapflag, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %82 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80, %77
  %89 = load i64, i64* %3, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %88, %80
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %4, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %4, align 8
  br label %71

95:                                               ; preds = %71
  br label %96

96:                                               ; preds = %95, %65
  %97 = load i64, i64* %3, align 8
  store i64 %97, i64* @accthdr.predict, align 8
  store i32 0, i32* @blksread, align 4
  %98 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %99 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* @accthdr.prevtype, align 4
  %101 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %102 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* @accthdr.previno, align 4
  br label %104

104:                                              ; preds = %96, %24
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
