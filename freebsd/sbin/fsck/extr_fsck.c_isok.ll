; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck/extr_fsck.c_isok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck/extr_fsck.c_isok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstab = type { i64, i8*, i32, i32, i32*, i32 }

@flags = common dso_local global i32 0, align 4
@DO_BACKGRD = common dso_local global i32 0, align 4
@FSTAB_RO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@CHECK_BACKGRD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"noauto\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: DEFER FOR BACKGROUND CHECKING\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fstab*)* @isok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isok(%struct.fstab* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fstab*, align 8
  %4 = alloca i32, align 4
  store %struct.fstab* %0, %struct.fstab** %3, align 8
  %5 = load %struct.fstab*, %struct.fstab** %3, align 8
  %6 = getelementptr inbounds %struct.fstab, %struct.fstab* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %116

10:                                               ; preds = %1
  %11 = load %struct.fstab*, %struct.fstab** %3, align 8
  %12 = getelementptr inbounds %struct.fstab, %struct.fstab* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @BADTYPE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %116

17:                                               ; preds = %10
  %18 = load %struct.fstab*, %struct.fstab** %3, align 8
  %19 = getelementptr inbounds %struct.fstab, %struct.fstab* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @selected(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %116

24:                                               ; preds = %17
  %25 = load i32, i32* @flags, align 4
  %26 = load i32, i32* @DO_BACKGRD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %24
  %30 = load %struct.fstab*, %struct.fstab** %3, align 8
  %31 = getelementptr inbounds %struct.fstab, %struct.fstab* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FSTAB_RO, align 4
  %34 = call i32 @strcmp(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %116

37:                                               ; preds = %29
  %38 = load %struct.fstab*, %struct.fstab** %3, align 8
  %39 = getelementptr inbounds %struct.fstab, %struct.fstab* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32* @getmntpt(i8* %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %116

44:                                               ; preds = %37
  %45 = load %struct.fstab*, %struct.fstab** %3, align 8
  %46 = getelementptr inbounds %struct.fstab, %struct.fstab* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fstab*, %struct.fstab** %3, align 8
  %49 = getelementptr inbounds %struct.fstab, %struct.fstab* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.fstab*, %struct.fstab** %3, align 8
  %52 = getelementptr inbounds %struct.fstab, %struct.fstab* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @checkfs(i32 %47, i8* %50, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %116

57:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %116

58:                                               ; preds = %24
  %59 = load i32, i32* @flags, align 4
  %60 = load i32, i32* @CHECK_BACKGRD, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load %struct.fstab*, %struct.fstab** %3, align 8
  %65 = getelementptr inbounds %struct.fstab, %struct.fstab* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FSTAB_RO, align 4
  %68 = call i32 @strcmp(i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63, %58
  store i32 1, i32* %2, align 4
  br label %116

71:                                               ; preds = %63
  %72 = load %struct.fstab*, %struct.fstab** %3, align 8
  %73 = getelementptr inbounds %struct.fstab, %struct.fstab* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @strlen(i32* %74)
  %76 = sub nsw i32 %75, 6
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %91, %71
  %78 = load i32, i32* %4, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %struct.fstab*, %struct.fstab** %3, align 8
  %82 = getelementptr inbounds %struct.fstab, %struct.fstab* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @strncmp(i32* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  br label %94

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %4, align 4
  br label %77

94:                                               ; preds = %89, %77
  %95 = load i32, i32* %4, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 1, i32* %2, align 4
  br label %116

98:                                               ; preds = %94
  %99 = load %struct.fstab*, %struct.fstab** %3, align 8
  %100 = getelementptr inbounds %struct.fstab, %struct.fstab* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fstab*, %struct.fstab** %3, align 8
  %103 = getelementptr inbounds %struct.fstab, %struct.fstab* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.fstab*, %struct.fstab** %3, align 8
  %106 = getelementptr inbounds %struct.fstab, %struct.fstab* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @checkfs(i32 %101, i8* %104, i32 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  store i32 1, i32* %2, align 4
  br label %116

111:                                              ; preds = %98
  %112 = load %struct.fstab*, %struct.fstab** %3, align 8
  %113 = getelementptr inbounds %struct.fstab, %struct.fstab* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %111, %110, %97, %70, %57, %56, %43, %36, %23, %16, %9
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @BADTYPE(i32) #1

declare dso_local i32 @selected(i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32* @getmntpt(i8*) #1

declare dso_local i64 @checkfs(i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
