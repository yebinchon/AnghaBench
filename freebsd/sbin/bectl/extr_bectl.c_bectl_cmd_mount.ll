; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl.c_bectl_cmd_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@BE_MNT_DEEP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"bectl mount: missing argument(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"bectl mount: too many arguments\0A\00", align 1
@be = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"successfully mounted %s at %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to mount bootenv %s at %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"failed to mount bootenv %s at temporary path %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @bectl_cmd_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bectl_cmd_mount(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @BE_MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @BE_MNT_DEEP, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @usage(i32 0)
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %64

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 3
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @usage(i32 0)
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %64

31:                                               ; preds = %24
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %8, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i8* [ %40, %37 ], [ null, %41 ]
  store i8* %43, i8** %9, align 8
  %44 = load i32, i32* @be, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @be_mount(i32 %44, i8* %45, i8* %46, i32 %47, i8* %16)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %53 [
    i32 128, label %50
  ]

50:                                               ; preds = %42
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %16)
  br label %62

53:                                               ; preds = %42
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 3
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0)
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* %58, i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %53, %50
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %62, %27, %20
  %65 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @be_mount(i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
