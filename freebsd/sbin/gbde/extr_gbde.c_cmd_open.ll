; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_cmd_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gbde/extr_gbde.c_cmd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_softc = type { i32 }
%struct.stat = type { i32, i32 }

@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Lock was destroyed.\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Lock was nuked.\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Lock not found\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Error %d decrypting lock\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Opened with key %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_softc*, i32, i8*, i32*)* @cmd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_open(%struct.g_bde_softc* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.g_bde_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 4
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %17 = call i32 @ioctl(i32 %15, i32 %16, i32* %12)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 512, i32* %12, align 4
  br label %21

21:                                               ; preds = %20, %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %24 = call i32 @ioctl(i32 %22, i32 %23, i32* %13)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @fstat(i32 %28, %struct.stat* %14)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISREG(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  br label %42

40:                                               ; preds = %32, %27
  %41 = load i32, i32* @ENOENT, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -1, i32* %13, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @O_RDONLY, align 4
  %53 = call i32 @open(i8* %51, i32 %52, i32 0)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %10, align 4
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %62 = call i32 @read(i32 %60, i32* %61, i32 64)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @close(i32 %63)
  br label %68

65:                                               ; preds = %47
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %67 = call i32 @memset(i32* %66, i32 0, i32 64)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %70 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %71 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @g_bde_decrypt_lock(%struct.g_bde_softc* %69, i32 %72, i32* %73, i32 %74, i32 %75, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @ENOENT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %68
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @ESRCH, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @ENOTDIR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32*, i32** %8, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 1, %106
  %108 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %104, %101
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @g_bde_decrypt_lock(%struct.g_bde_softc*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
