; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_findcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_findcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcmd = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.xcmd*, %struct.xcmd*, %struct.xcmd**)* @findcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findcmd(i8* %0, %struct.xcmd* %1, %struct.xcmd* %2, %struct.xcmd** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xcmd*, align 8
  %8 = alloca %struct.xcmd*, align 8
  %9 = alloca %struct.xcmd**, align 8
  %10 = alloca %struct.xcmd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xcmd*, align 8
  %14 = alloca %struct.xcmd*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.xcmd* %1, %struct.xcmd** %7, align 8
  store %struct.xcmd* %2, %struct.xcmd** %8, align 8
  store %struct.xcmd** %3, %struct.xcmd*** %9, align 8
  store %struct.xcmd* null, %struct.xcmd** %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.xcmd*, %struct.xcmd** %7, align 8
  %18 = icmp ne %struct.xcmd* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load %struct.xcmd*, %struct.xcmd** %7, align 8
  store %struct.xcmd* %20, %struct.xcmd** %14, align 8
  br label %28

21:                                               ; preds = %4
  %22 = load %struct.xcmd*, %struct.xcmd** %8, align 8
  %23 = icmp ne %struct.xcmd* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load %struct.xcmd*, %struct.xcmd** %8, align 8
  store %struct.xcmd* %25, %struct.xcmd** %14, align 8
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %93

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %19
  br label %29

29:                                               ; preds = %83, %28
  %30 = load %struct.xcmd*, %struct.xcmd** %14, align 8
  store %struct.xcmd* %30, %struct.xcmd** %10, align 8
  br label %31

31:                                               ; preds = %73, %29
  %32 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %33 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %76

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %41 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %73

47:                                               ; preds = %36
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %50 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i64 @strncmp(i8* %48, i8* %51, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %47
  %57 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %58 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %67 = load %struct.xcmd**, %struct.xcmd*** %9, align 8
  store %struct.xcmd* %66, %struct.xcmd** %67, align 8
  store i32 1, i32* %5, align 4
  br label %93

68:                                               ; preds = %56
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  store %struct.xcmd* %71, %struct.xcmd** %13, align 8
  br label %72

72:                                               ; preds = %68, %47
  br label %73

73:                                               ; preds = %72, %46
  %74 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %75 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %74, i32 1
  store %struct.xcmd* %75, %struct.xcmd** %10, align 8
  br label %31

76:                                               ; preds = %31
  %77 = load %struct.xcmd*, %struct.xcmd** %14, align 8
  %78 = load %struct.xcmd*, %struct.xcmd** %7, align 8
  %79 = icmp eq %struct.xcmd* %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.xcmd*, %struct.xcmd** %8, align 8
  %82 = icmp ne %struct.xcmd* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load %struct.xcmd*, %struct.xcmd** %8, align 8
  store %struct.xcmd* %84, %struct.xcmd** %14, align 8
  br label %29

85:                                               ; preds = %80, %76
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.xcmd*, %struct.xcmd** %13, align 8
  %90 = load %struct.xcmd**, %struct.xcmd*** %9, align 8
  store %struct.xcmd* %89, %struct.xcmd** %90, align 8
  store i32 1, i32* %5, align 4
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %88, %65, %26
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
