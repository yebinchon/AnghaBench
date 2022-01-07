; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs_msdos/extr_mkfs_msdos.c_check_mounted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs_msdos/extr_mkfs_msdos.c_check_mounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i8*, i32 }

@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getmntinfo\00", align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s is mounted on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @check_mounted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mounted(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @MNT_NOWAIT, align 4
  %13 = call i32 @getmntinfo(%struct.statfs** %6, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %94

17:                                               ; preds = %2
  %18 = load i32, i32* @_PATH_DEV, align 4
  %19 = call i64 @strlen(i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @_PATH_DEV, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @strncmp(i8* %21, i32 %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 %27
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @S_ISCHR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 114
  br label %43

43:                                               ; preds = %38, %34, %30
  %44 = phi i1 [ false, %34 ], [ false, %30 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %90, %43
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %10, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %46
  %51 = load %struct.statfs*, %struct.statfs** %6, align 8
  %52 = getelementptr inbounds %struct.statfs, %struct.statfs* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @_PATH_DEV, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @strncmp(i8* %54, i32 %55, i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = load i64, i64* %9, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %8, align 8
  br label %63

63:                                               ; preds = %59, %50
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.statfs*, %struct.statfs** %6, align 8
  %69 = getelementptr inbounds %struct.statfs, %struct.statfs* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @strcmp(i8* %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72, %66, %63
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strcmp(i8* %79, i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78, %72
  %84 = load i8*, i8** %4, align 8
  %85 = load %struct.statfs*, %struct.statfs** %6, align 8
  %86 = getelementptr inbounds %struct.statfs, %struct.statfs* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %84, i32 %87)
  store i32 -1, i32* %3, align 4
  br label %94

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.statfs*, %struct.statfs** %6, align 8
  %92 = getelementptr inbounds %struct.statfs, %struct.statfs* %91, i32 1
  store %struct.statfs* %92, %struct.statfs** %6, align 8
  br label %46

93:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %83, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i64) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
