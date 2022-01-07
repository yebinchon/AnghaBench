; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_addfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_addfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }

@hflag = common dso_local global i64 0, align 8
@GOOD = common dso_local global i64 0, align 8
@FAIL = common dso_local global i64 0, align 8
@dumpmap = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: not on the tape\0A\00", align 1
@UFS_WINO = common dso_local global i64 0, align 8
@command = common dso_local global i8 0, align 1
@vflag = common dso_local global i32 0, align 4
@mflag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"./%ju\00", align 1
@NODE = common dso_local global i32 0, align 4
@NEW = common dso_local global i32 0, align 4
@LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @addfile(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [100 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @hflag, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @GOOD, align 8
  br label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @FAIL, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @dumpmap, align 4
  %21 = call i64 @TSTINO(i64 %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @stdout, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @dprintf(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %4, align 8
  br label %99

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @UFS_WINO, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i8, i8* @command, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 105
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @vflag, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %4, align 8
  br label %99

41:                                               ; preds = %36, %32, %28
  %42 = load i32, i32* @mflag, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  store i8* %49, i8** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @NODE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @genliteraldir(i8* %54, i64 %55)
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %4, align 8
  br label %99

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i64, i64* %6, align 8
  %61 = call %struct.entry* @lookupino(i64 %60)
  store %struct.entry* %61, %struct.entry** %8, align 8
  %62 = load %struct.entry*, %struct.entry** %8, align 8
  %63 = icmp ne %struct.entry* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.entry*, %struct.entry** %8, align 8
  %67 = call i32 @myname(%struct.entry* %66)
  %68 = call i64 @strcmp(i8* %65, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i32, i32* @NEW, align 4
  %72 = load %struct.entry*, %struct.entry** %8, align 8
  %73 = getelementptr inbounds %struct.entry, %struct.entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i64, i64* %9, align 8
  store i64 %76, i64* %4, align 8
  br label %99

77:                                               ; preds = %64
  %78 = load i32, i32* @LINK, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %59
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call %struct.entry* @addentry(i8* %82, i64 %83, i32 %84)
  store %struct.entry* %85, %struct.entry** %8, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @NODE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.entry*, %struct.entry** %8, align 8
  %91 = call i32 @newnode(%struct.entry* %90)
  br label %92

92:                                               ; preds = %89, %81
  %93 = load i32, i32* @NEW, align 4
  %94 = load %struct.entry*, %struct.entry** %8, align 8
  %95 = getelementptr inbounds %struct.entry, %struct.entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load i64, i64* %9, align 8
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %92, %70, %53, %39, %23
  %100 = load i64, i64* %4, align 8
  ret i64 %100
}

declare dso_local i64 @TSTINO(i64, i32) #1

declare dso_local i32 @dprintf(i32, i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @genliteraldir(i8*, i64) #1

declare dso_local %struct.entry* @lookupino(i64) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @myname(%struct.entry*) #1

declare dso_local %struct.entry* @addentry(i8*, i64, i32) #1

declare dso_local i32 @newnode(%struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
