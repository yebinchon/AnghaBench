; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afssys.c_try_ioctlpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afssys.c_try_ioctlpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procdata = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.devdata = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@AFSCALL_PIOCTL = common dso_local global i32 0, align 4
@VIOCGETTOK = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@afs_ioctlnum = common dso_local global i64 0, align 8
@afs_ioctlpath = common dso_local global i32* null, align 8
@afs_entry_point = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @try_ioctlpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_ioctlpath(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.procdata, align 8
  %12 = alloca %struct.devdata, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %78

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %48 [
    i32 129, label %21
    i32 128, label %37
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.procdata, %struct.procdata* %11, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.procdata, %struct.procdata* %11, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.procdata, %struct.procdata* %11, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.procdata, %struct.procdata* %11, i32 0, i32 3
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.procdata, %struct.procdata* %11, i32 0, i32 4
  %27 = load i32, i32* @AFSCALL_PIOCTL, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.procdata, %struct.procdata* %11, i32 0, i32 5
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.procdata, %struct.procdata* %11, i32 0, i32 6
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.procdata, %struct.procdata* %11, i32 0, i32 7
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.procdata, %struct.procdata* %11, i32 0, i32 8
  store i32 0, i32* %31, align 4
  %32 = load i64, i64* @VIOCGETTOK, align 8
  %33 = getelementptr inbounds %struct.procdata, %struct.procdata* %11, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @ioctl(i32 %34, i64 %35, %struct.procdata* %11)
  store i32 %36, i32* %9, align 4
  br label %50

37:                                               ; preds = %19
  %38 = bitcast %struct.devdata* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 0, i64 40, i1 false)
  %39 = getelementptr inbounds %struct.devdata, %struct.devdata* %12, i32 0, i32 0
  %40 = load i32, i32* @AFSCALL_PIOCTL, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %39, align 8
  %42 = load i64, i64* @VIOCGETTOK, align 8
  %43 = getelementptr inbounds %struct.devdata, %struct.devdata* %12, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i64, i64* %6, align 8
  %46 = bitcast %struct.devdata* %12 to %struct.procdata*
  %47 = call i32 @ioctl(i32 %44, i64 %45, %struct.procdata* %46)
  store i32 %47, i32* %9, align 4
  br label %50

48:                                               ; preds = %19
  %49 = call i32 (...) @abort() #4
  unreachable

50:                                               ; preds = %37, %21
  %51 = load i32, i32* @errno, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @EFAULT, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @EDOM, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @ENOTCONN, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  br label %78

69:                                               ; preds = %64, %60, %56, %50
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* @afs_ioctlnum, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32* @strdup(i8* %71)
  store i32* %72, i32** @afs_ioctlpath, align 8
  %73 = load i32*, i32** @afs_ioctlpath, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* %4, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* @afs_entry_point, align 4
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %75, %68, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i64, %struct.procdata*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @close(i32) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
