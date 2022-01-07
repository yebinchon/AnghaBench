; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_open_kvm.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libprocstat/extr_libprocstat.c_procstat_open_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32*, i32 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"kvm_openfiles(): %s\00", align 1
@PROCSTAT_KVM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.procstat* @procstat_open_kvm(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.procstat*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = call %struct.procstat* @calloc(i32 1, i32 16)
  store %struct.procstat* %15, %struct.procstat** %6, align 8
  %16 = load %struct.procstat*, %struct.procstat** %6, align 8
  %17 = icmp eq %struct.procstat* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.procstat* null, %struct.procstat** %3, align 8
  store i32 1, i32* %10, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32* @kvm_openfiles(i8* %21, i8* %22, i32* null, i32 %23, i8* %14)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %29 = load %struct.procstat*, %struct.procstat** %6, align 8
  %30 = call i32 @free(%struct.procstat* %29)
  store %struct.procstat* null, %struct.procstat** %3, align 8
  store i32 1, i32* %10, align 4
  br label %39

31:                                               ; preds = %20
  %32 = load i32, i32* @PROCSTAT_KVM, align 4
  %33 = load %struct.procstat*, %struct.procstat** %6, align 8
  %34 = getelementptr inbounds %struct.procstat, %struct.procstat* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.procstat*, %struct.procstat** %6, align 8
  %37 = getelementptr inbounds %struct.procstat, %struct.procstat* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.procstat*, %struct.procstat** %6, align 8
  store %struct.procstat* %38, %struct.procstat** %3, align 8
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %31, %27, %18
  %40 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load %struct.procstat*, %struct.procstat** %3, align 8
  ret %struct.procstat* %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.procstat* @calloc(i32, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32* @kvm_openfiles(i8*, i8*, i32*, i32, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @free(%struct.procstat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
