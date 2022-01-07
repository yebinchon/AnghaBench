; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rq.c_smb_t2_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rq.c_smb_t2_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i32 }
%struct.smbioc_t2rq = type { i32*, i32, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@SMBIOC_T2RQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_t2_request(%struct.smb_ctx* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i32* %8, i8* %9, i32* %10, i8* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.smb_ctx*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.smbioc_t2rq, align 8
  store %struct.smb_ctx* %0, %struct.smb_ctx** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i8* %3, i8** %17, align 8
  store i32 %4, i32* %18, align 4
  store i8* %5, i8** %19, align 8
  store i32 %6, i32* %20, align 4
  store i8* %7, i8** %21, align 8
  store i32* %8, i32** %22, align 8
  store i8* %9, i8** %23, align 8
  store i32* %10, i32** %24, align 8
  store i8* %11, i8** %25, align 8
  %27 = call i32 @bzero(%struct.smbioc_t2rq* %26, i32 72)
  %28 = load i32, i32* %15, align 4
  %29 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %16, align 4
  %33 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %18, align 4
  %37 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 10
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %20, align 4
  %41 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = load i8*, i8** %21, align 8
  %43 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 9
  store i8* %42, i8** %43, align 8
  %44 = load i32*, i32** %22, align 8
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 5
  store i32 %45, i32* %46, align 8
  %47 = load i8*, i8** %23, align 8
  %48 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 8
  store i8* %47, i8** %48, align 8
  %49 = load i32*, i32** %24, align 8
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 6
  store i32 %50, i32* %51, align 4
  %52 = load i8*, i8** %25, align 8
  %53 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 7
  store i8* %52, i8** %53, align 8
  %54 = load %struct.smb_ctx*, %struct.smb_ctx** %14, align 8
  %55 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SMBIOC_T2RQ, align 4
  %58 = call i32 @ioctl(i32 %56, i32 %57, %struct.smbioc_t2rq* %26)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %12
  %61 = load i32, i32* @errno, align 4
  store i32 %61, i32* %13, align 4
  br label %69

62:                                               ; preds = %12
  %63 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %22, align 8
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.smbioc_t2rq, %struct.smbioc_t2rq* %26, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %24, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %62, %60
  %70 = load i32, i32* %13, align 4
  ret i32 %70
}

declare dso_local i32 @bzero(%struct.smbioc_t2rq*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.smbioc_t2rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
