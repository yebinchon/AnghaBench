; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_getmntentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_getmntentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i32, i32 }

@getmntentry.mntbuf = internal global %struct.statfs* null, align 8
@getmntentry.mntsize = internal global i64 0, align 8
@getmntentry.mntcheck = internal global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.statfs* @getmntentry(i8* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.statfs*, align 8
  %11 = alloca %struct.statfs*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* @getmntentry.mntsize, align 8
  %15 = icmp ule i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = call i64 @mntinfo(%struct.statfs** @getmntentry.mntbuf)
  store i64 %17, i64* @getmntentry.mntsize, align 8
  %18 = icmp ule i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store %struct.statfs* null, %struct.statfs** %5, align 8
  br label %109

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %4
  %22 = load i32*, i32** @getmntentry.mntcheck, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i64, i64* @getmntentry.mntsize, align 8
  %26 = add i64 %25, 1
  %27 = call i32* @calloc(i64 %26, i32 4)
  store i32* %27, i32** @getmntentry.mntcheck, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31, %21
  store i32 0, i32* %13, align 4
  store %struct.statfs* null, %struct.statfs** %11, align 8
  %33 = load i64, i64* @getmntentry.mntsize, align 8
  %34 = sub i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %97, %32
  %37 = load i32, i32* %12, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %100

39:                                               ; preds = %36
  %40 = load i32*, i32** @getmntentry.mntcheck, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %97

47:                                               ; preds = %39
  %48 = load %struct.statfs*, %struct.statfs** @getmntentry.mntbuf, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.statfs, %struct.statfs* %48, i64 %50
  store %struct.statfs* %51, %struct.statfs** %10, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.statfs*, %struct.statfs** %10, align 8
  %56 = getelementptr inbounds %struct.statfs, %struct.statfs* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strcmp(i32 %57, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %97

62:                                               ; preds = %54, %47
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.statfs*, %struct.statfs** %10, align 8
  %67 = getelementptr inbounds %struct.statfs, %struct.statfs* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @strcmp(i32 %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %97

73:                                               ; preds = %65, %62
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.statfs*, %struct.statfs** %10, align 8
  %78 = getelementptr inbounds %struct.statfs, %struct.statfs* %77, i32 0, i32 0
  %79 = load i32*, i32** %8, align 8
  %80 = call i64 @bcmp(i32* %78, i32* %79, i32 4)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %97

83:                                               ; preds = %76, %73
  %84 = load i32, i32* %9, align 4
  switch i32 %84, label %94 [
    i32 129, label %85
    i32 128, label %89
  ]

85:                                               ; preds = %83
  %86 = load %struct.statfs*, %struct.statfs** %10, align 8
  store %struct.statfs* %86, %struct.statfs** %11, align 8
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %97

89:                                               ; preds = %83
  %90 = load i32*, i32** @getmntentry.mntcheck, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 1, i32* %93, align 4
  br label %95

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %89
  %96 = load %struct.statfs*, %struct.statfs** %10, align 8
  store %struct.statfs* %96, %struct.statfs** %5, align 8
  br label %109

97:                                               ; preds = %85, %82, %72, %61, %46
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  br label %36

100:                                              ; preds = %36
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 129
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load %struct.statfs*, %struct.statfs** %11, align 8
  store %struct.statfs* %107, %struct.statfs** %5, align 8
  br label %109

108:                                              ; preds = %103, %100
  store %struct.statfs* null, %struct.statfs** %5, align 8
  br label %109

109:                                              ; preds = %108, %106, %95, %19
  %110 = load %struct.statfs*, %struct.statfs** %5, align 8
  ret %struct.statfs* %110
}

declare dso_local i64 @mntinfo(%struct.statfs**) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
