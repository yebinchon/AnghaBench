; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rap.c_smb_rap_setNparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rap.c_smb_rap_setNparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rap = type { i8*, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_rap_setNparam(%struct.smb_rap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_rap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smb_rap* %0, %struct.smb_rap** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %11 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %7, align 1
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @smb_rap_parserqparam(i8* %15, i8** %6, i32* %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %34 [
    i32 76, label %24
    i32 87, label %28
    i32 68, label %28
    i32 98, label %28
  ]

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %27 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %21, %21, %24
  %29 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %30 = load i8, i8* %7, align 1
  %31 = load i32, i32* %9, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @smb_rap_rqparam(%struct.smb_rap* %29, i8 signext %30, i32 %31, i64 %32)
  store i32 %33, i32* %8, align 4
  br label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.smb_rap*, %struct.smb_rap** %4, align 8
  %39 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %34, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @smb_rap_parserqparam(i8*, i8**, i32*) #1

declare dso_local i32 @smb_rap_rqparam(%struct.smb_rap*, i8 signext, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
