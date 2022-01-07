; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rap.c_smb_rap_NetShareEnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rap.c_smb_rap_NetShareEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i32 }
%struct.smb_rap = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"WrLeh\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"B13BWz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_rap_NetShareEnum(%struct.smb_ctx* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.smb_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.smb_rap*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.smb_ctx* %0, %struct.smb_ctx** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = call i32 @smb_rap_create(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.smb_rap** %14)
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* %16, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* %16, align 4
  store i32 %21, i32* %7, align 4
  br label %54

22:                                               ; preds = %6
  %23 = load %struct.smb_rap*, %struct.smb_rap** %14, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @smb_rap_setNparam(%struct.smb_rap* %23, i32 %24)
  %26 = load %struct.smb_rap*, %struct.smb_rap** %14, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @smb_rap_setPparam(%struct.smb_rap* %26, i8* %27)
  %29 = load %struct.smb_rap*, %struct.smb_rap** %14, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @smb_rap_setNparam(%struct.smb_rap* %29, i32 %30)
  %32 = load %struct.smb_rap*, %struct.smb_rap** %14, align 8
  %33 = load %struct.smb_ctx*, %struct.smb_ctx** %8, align 8
  %34 = call i32 @smb_rap_request(%struct.smb_rap* %32, %struct.smb_ctx* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %22
  %38 = load %struct.smb_rap*, %struct.smb_rap** %14, align 8
  %39 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %12, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.smb_rap*, %struct.smb_rap** %14, align 8
  %43 = call i32 @smb_rap_getNparam(%struct.smb_rap* %42, i64* %15)
  store i32 %43, i32* %16, align 4
  %44 = load i64, i64* %15, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %37, %22
  %48 = load %struct.smb_rap*, %struct.smb_rap** %14, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @smb_rap_error(%struct.smb_rap* %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.smb_rap*, %struct.smb_rap** %14, align 8
  %52 = call i32 @smb_rap_done(%struct.smb_rap* %51)
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %47, %20
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @smb_rap_create(i32, i8*, i8*, %struct.smb_rap**) #1

declare dso_local i32 @smb_rap_setNparam(%struct.smb_rap*, i32) #1

declare dso_local i32 @smb_rap_setPparam(%struct.smb_rap*, i8*) #1

declare dso_local i32 @smb_rap_request(%struct.smb_rap*, %struct.smb_ctx*) #1

declare dso_local i32 @smb_rap_getNparam(%struct.smb_rap*, i64*) #1

declare dso_local i32 @smb_rap_error(%struct.smb_rap*, i32) #1

declare dso_local i32 @smb_rap_done(%struct.smb_rap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
