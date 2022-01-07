; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dumpfs/extr_dumpfs.c_marshal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dumpfs/extr_dumpfs.c_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, %struct.fs }
%struct.fs = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@disk = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"# newfs command for %s (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"newfs \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-L %s \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-O %d \00", align 1
@FS_DOSOFTDEP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"-U \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-a %d \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"-b %d \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"-d %d \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"-e %d \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"-f %d \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"-g %d \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"-h %d \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"-i %jd \00", align 1
@FS_SUJ = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"-j \00", align 1
@FS_GJOURNAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"-J \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"-k %jd \00", align 1
@FS_MULTILABEL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"-l \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"-m %d \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"-o \00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"space \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"time \00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"unknown \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"-s %jd \00", align 1
@FS_TRIM = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"-t \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marshal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fs*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.fs* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @disk, i32 0, i32 2), %struct.fs** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @disk, i32 0, i32 0), align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %4, i8* %5)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.fs*, %struct.fs** %3, align 8
  %9 = getelementptr inbounds %struct.fs, %struct.fs* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.fs*, %struct.fs** %3, align 8
  %17 = getelementptr inbounds %struct.fs, %struct.fs* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @disk, i32 0, i32 1), align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load %struct.fs*, %struct.fs** %3, align 8
  %24 = getelementptr inbounds %struct.fs, %struct.fs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FS_DOSOFTDEP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %20
  %32 = load %struct.fs*, %struct.fs** %3, align 8
  %33 = getelementptr inbounds %struct.fs, %struct.fs* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.fs*, %struct.fs** %3, align 8
  %37 = getelementptr inbounds %struct.fs, %struct.fs* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %38)
  %40 = load %struct.fs*, %struct.fs** %3, align 8
  %41 = getelementptr inbounds %struct.fs, %struct.fs* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  %44 = load %struct.fs*, %struct.fs** %3, align 8
  %45 = getelementptr inbounds %struct.fs, %struct.fs* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %46)
  %48 = load %struct.fs*, %struct.fs** %3, align 8
  %49 = getelementptr inbounds %struct.fs, %struct.fs* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  %52 = load %struct.fs*, %struct.fs** %3, align 8
  %53 = getelementptr inbounds %struct.fs, %struct.fs* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %54)
  %56 = load %struct.fs*, %struct.fs** %3, align 8
  %57 = getelementptr inbounds %struct.fs, %struct.fs* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %58)
  %60 = load %struct.fs*, %struct.fs** %3, align 8
  %61 = load %struct.fs*, %struct.fs** %3, align 8
  %62 = load %struct.fs*, %struct.fs** %3, align 8
  %63 = load %struct.fs*, %struct.fs** %3, align 8
  %64 = getelementptr inbounds %struct.fs, %struct.fs* %63, i32 0, i32 14
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fragstoblks(%struct.fs* %62, i32 %65)
  %67 = call i32 @lblktosize(%struct.fs* %61, i32 %66)
  %68 = load %struct.fs*, %struct.fs** %3, align 8
  %69 = getelementptr inbounds %struct.fs, %struct.fs* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = sdiv i32 %67, %70
  %72 = call i32 @fragroundup(%struct.fs* %60, i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %72)
  %74 = load %struct.fs*, %struct.fs** %3, align 8
  %75 = getelementptr inbounds %struct.fs, %struct.fs* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FS_SUJ, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %31
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %31
  %83 = load %struct.fs*, %struct.fs** %3, align 8
  %84 = getelementptr inbounds %struct.fs, %struct.fs* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FS_GJOURNAL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %82
  %92 = load %struct.fs*, %struct.fs** %3, align 8
  %93 = getelementptr inbounds %struct.fs, %struct.fs* %92, i32 0, i32 13
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %94)
  %96 = load %struct.fs*, %struct.fs** %3, align 8
  %97 = getelementptr inbounds %struct.fs, %struct.fs* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @FS_MULTILABEL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %91
  %105 = load %struct.fs*, %struct.fs** %3, align 8
  %106 = getelementptr inbounds %struct.fs, %struct.fs* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %107)
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %110 = load %struct.fs*, %struct.fs** %3, align 8
  %111 = getelementptr inbounds %struct.fs, %struct.fs* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %117 [
    i32 129, label %113
    i32 128, label %115
  ]

113:                                              ; preds = %104
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  br label %119

115:                                              ; preds = %104
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  br label %119

117:                                              ; preds = %104
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %115, %113
  %120 = load %struct.fs*, %struct.fs** %3, align 8
  %121 = load %struct.fs*, %struct.fs** %3, align 8
  %122 = getelementptr inbounds %struct.fs, %struct.fs* %121, i32 0, i32 12
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @fsbtodb(%struct.fs* %120, i32 %123)
  %125 = trunc i64 %124 to i32
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 %125)
  %127 = load %struct.fs*, %struct.fs** %3, align 8
  %128 = getelementptr inbounds %struct.fs, %struct.fs* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @FS_TRIM, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %119
  %136 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @disk, i32 0, i32 0), align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8* %136)
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fragroundup(%struct.fs*, i32) #1

declare dso_local i32 @lblktosize(%struct.fs*, i32) #1

declare dso_local i32 @fragstoblks(%struct.fs*, i32) #1

declare dso_local i64 @fsbtodb(%struct.fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
