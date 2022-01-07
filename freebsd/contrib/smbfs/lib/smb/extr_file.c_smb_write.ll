; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_file.c_smb_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_file.c_smb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i32 }
%struct.smbioc_rw = type { i8*, i64, i32, i32 }

@SMBIOC_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_write(%struct.smb_ctx* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.smbioc_rw, align 8
  store %struct.smb_ctx* %0, %struct.smb_ctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %12, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** %11, align 8
  %16 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %12, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %12, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %12, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load %struct.smb_ctx*, %struct.smb_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SMBIOC_WRITE, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.smbioc_rw* %12)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %32

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.smbioc_rw, %struct.smbioc_rw* %12, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @ioctl(i32, i32, %struct.smbioc_rw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
