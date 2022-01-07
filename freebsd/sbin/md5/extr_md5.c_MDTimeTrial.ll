; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/md5/extr_md5.c_MDTimeTrial.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/md5/extr_md5.c_MDTimeTrial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* (i32*, i8*)*, i32 (i32*, i8*, i32)*, i32 (i32*)* }
%struct.rusage = type { i32 }
%struct.timeval = type { float, i64 }

@TEST_BLOCK_LEN = common dso_local global i32 0, align 4
@HEX_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s time trial. Digesting %d %d-byte blocks ...\00", align 1
@TEST_BLOCK_COUNT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@RUSAGE_SELF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Digest = %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\0ATime = %f seconds\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Speed = %f MiB/second\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @MDTimeTrial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MDTimeTrial(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rusage, align 4
  %5 = alloca %struct.rusage, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %13 = load i32, i32* @TEST_BLOCK_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @HEX_DIGEST_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @TEST_BLOCK_COUNT, align 4
  %24 = load i32, i32* @TEST_BLOCK_LEN, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 @fflush(i32 %26)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %39, %1
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @TEST_BLOCK_LEN, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %16, i64 %37
  store i8 %35, i8* %38, align 1
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load i32, i32* @RUSAGE_SELF, align 4
  %44 = call i32 @getrusage(i32 %43, %struct.rusage* %4)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32 (i32*)*, i32 (i32*)** %46, align 8
  %48 = call i32 %47(i32* %3)
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %59, %42
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @TEST_BLOCK_COUNT, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %55, align 8
  %57 = load i32, i32* @TEST_BLOCK_LEN, align 4
  %58 = call i32 %56(i32* %3, i8* %16, i32 %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i8* (i32*, i8*)*, i8* (i32*, i8*)** %64, align 8
  %66 = call i8* %65(i32* %3, i8* %19)
  store i8* %66, i8** %11, align 8
  %67 = load i32, i32* @RUSAGE_SELF, align 4
  %68 = call i32 @getrusage(i32 %67, %struct.rusage* %5)
  %69 = getelementptr inbounds %struct.rusage, %struct.rusage* %5, i32 0, i32 0
  %70 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 0
  %71 = call i32 @timersub(i32* %69, i32* %70, %struct.timeval* %6)
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %73 = load float, float* %72, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to float
  %77 = fdiv float %76, 1.000000e+06
  %78 = fadd float %73, %77
  store float %78, float* %7, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = load float, float* %7, align 4
  %83 = fpext float %82 to double
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), double %83)
  %85 = load i32, i32* @TEST_BLOCK_LEN, align 4
  %86 = sitofp i32 %85 to float
  %87 = load i32, i32* @TEST_BLOCK_COUNT, align 4
  %88 = sitofp i32 %87 to float
  %89 = fmul float %86, %88
  %90 = load float, float* %7, align 4
  %91 = fdiv float %89, %90
  %92 = fdiv float %91, 0x4130000000000000
  %93 = fpext float %92 to double
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), double %93)
  %95 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %95)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @getrusage(i32, %struct.rusage*) #2

declare dso_local i32 @timersub(i32*, i32*, %struct.timeval*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
