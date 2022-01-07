; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_subr.c_provinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_subr.c_provinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i8*, i32, i32, i32 }
%struct.stat = type { i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unable to stat %s\00", align 1
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Unable obtain provider %s mediasize\00", align 1
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable obtain provider %s sectorsize\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%s is neither GEOM provider nor regular file.\00", align 1
@EFTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @provinfo(%struct.hast_resource* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hast_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  store %struct.hast_resource* %0, %struct.hast_resource** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %8 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %13 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %11, %2
  %20 = phi i1 [ false, %2 ], [ %18, %11 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @PJDLOG_ASSERT(i32 %21)
  %23 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %24 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %53

27:                                               ; preds = %19
  %28 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %29 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @O_RDWR, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @O_RDONLY, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @open(i8* %30, i32 %38)
  %40 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %41 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %43 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %49 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @pjdlog_errno(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 -1, i32* %3, align 4
  br label %121

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %19
  %54 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %55 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @fstat(i32 %56, %struct.stat* %6)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @LOG_ERR, align 4
  %61 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %62 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @pjdlog_errno(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  store i32 -1, i32* %3, align 4
  br label %121

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @S_ISCHR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %65
  %71 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %72 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %75 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %76 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %75, i32 0, i32 2
  %77 = call i32 @ioctl(i32 %73, i32 %74, i32* %76)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load i32, i32* @LOG_ERR, align 4
  %81 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %82 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @pjdlog_errno(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  store i32 -1, i32* %3, align 4
  br label %121

85:                                               ; preds = %70
  %86 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %87 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %90 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %91 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %90, i32 0, i32 3
  %92 = call i32 @ioctl(i32 %88, i32 %89, i32* %91)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load i32, i32* @LOG_ERR, align 4
  %96 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %97 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @pjdlog_errno(i32 %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  store i32 -1, i32* %3, align 4
  br label %121

100:                                              ; preds = %85
  br label %120

101:                                              ; preds = %65
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @S_ISREG(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %110 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %112 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %111, i32 0, i32 3
  store i32 512, i32* %112, align 8
  br label %119

113:                                              ; preds = %101
  %114 = load %struct.hast_resource*, %struct.hast_resource** %4, align 8
  %115 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @pjdlog_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* @EFTYPE, align 4
  store i32 %118, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %121

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %100
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %113, %94, %79, %59, %46
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @pjdlog_error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
