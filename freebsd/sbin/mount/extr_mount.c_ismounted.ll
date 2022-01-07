; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_ismounted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount/extr_mount.c_ismounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i8*, i8*, i8* }
%struct.statfs = type { i32, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ismounted(%struct.fstab* %0, %struct.statfs* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fstab*, align 8
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fstab* %0, %struct.fstab** %5, align 8
  store %struct.statfs* %1, %struct.statfs** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.fstab*, %struct.fstab** %5, align 8
  %17 = getelementptr inbounds %struct.fstab, %struct.fstab* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.fstab*, %struct.fstab** %5, align 8
  %25 = getelementptr inbounds %struct.fstab, %struct.fstab* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %95

32:                                               ; preds = %23, %3
  %33 = load %struct.fstab*, %struct.fstab** %5, align 8
  %34 = getelementptr inbounds %struct.fstab, %struct.fstab* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32* @realpath(i8* %35, i8* %15)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.fstab*, %struct.fstab** %5, align 8
  %40 = getelementptr inbounds %struct.fstab, %struct.fstab* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = trunc i64 %13 to i32
  %43 = call i32 @strlcpy(i8* %15, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %91, %44
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %94

50:                                               ; preds = %47
  %51 = load %struct.statfs*, %struct.statfs** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.statfs, %struct.statfs* %51, i64 %53
  %55 = getelementptr inbounds %struct.statfs, %struct.statfs* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strcmp(i8* %15, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %50
  %60 = load %struct.fstab*, %struct.fstab** %5, align 8
  %61 = getelementptr inbounds %struct.fstab, %struct.fstab* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.statfs*, %struct.statfs** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.statfs, %struct.statfs* %63, i64 %65
  %67 = getelementptr inbounds %struct.statfs, %struct.statfs* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @strcmp(i8* %62, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %59
  %72 = load %struct.fstab*, %struct.fstab** %5, align 8
  %73 = getelementptr inbounds %struct.fstab, %struct.fstab* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @isremountable(i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load %struct.fstab*, %struct.fstab** %5, align 8
  %79 = getelementptr inbounds %struct.fstab, %struct.fstab* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.statfs*, %struct.statfs** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.statfs, %struct.statfs* %81, i64 %83
  %85 = getelementptr inbounds %struct.statfs, %struct.statfs* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @strcmp(i8* %80, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77, %71
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %95

90:                                               ; preds = %77, %59, %50
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %10, align 4
  br label %47

94:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %95

95:                                               ; preds = %94, %89, %31
  %96 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @isremountable(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
