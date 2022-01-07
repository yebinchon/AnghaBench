; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_createlinks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_restore.c_createlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i64, %struct.entry* }

@BUFSIZ = common dso_local global i32 0, align 4
@UFS_WINO = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Add whiteouts\0A\00", align 1
@NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Add links\0A\00", align 1
@UFS_ROOTINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@NODE = common dso_local global i64 0, align 8
@SYMLINK = common dso_local global i32 0, align 4
@HARDLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createlinks() #0 {
  %1 = alloca %struct.entry*, align 8
  %2 = alloca %struct.entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @BUFSIZ, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i64, i64* @UFS_WINO, align 8
  %11 = call %struct.entry* @lookupino(i64 %10)
  store %struct.entry* %11, %struct.entry** %2, align 8
  %12 = icmp ne %struct.entry* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %0
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @vprintf(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %37, %13
  %17 = load %struct.entry*, %struct.entry** %2, align 8
  %18 = icmp ne %struct.entry* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load %struct.entry*, %struct.entry** %2, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NEW, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %37

27:                                               ; preds = %19
  %28 = load %struct.entry*, %struct.entry** %2, align 8
  %29 = call i32 @myname(%struct.entry* %28)
  %30 = call i32 @addwhiteout(i32 %29)
  %31 = load i32, i32* @NEW, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.entry*, %struct.entry** %2, align 8
  %34 = getelementptr inbounds %struct.entry, %struct.entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %27, %26
  %38 = load %struct.entry*, %struct.entry** %2, align 8
  %39 = getelementptr inbounds %struct.entry, %struct.entry* %38, i32 0, i32 2
  %40 = load %struct.entry*, %struct.entry** %39, align 8
  store %struct.entry* %40, %struct.entry** %2, align 8
  br label %16

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41, %0
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @vprintf(i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* @UFS_ROOTINO, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %102, %42
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @maxino, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %105

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = call %struct.entry* @lookupino(i64 %51)
  store %struct.entry* %52, %struct.entry** %2, align 8
  %53 = load %struct.entry*, %struct.entry** %2, align 8
  %54 = icmp eq %struct.entry* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %102

56:                                               ; preds = %50
  %57 = load %struct.entry*, %struct.entry** %2, align 8
  %58 = getelementptr inbounds %struct.entry, %struct.entry* %57, i32 0, i32 2
  %59 = load %struct.entry*, %struct.entry** %58, align 8
  store %struct.entry* %59, %struct.entry** %1, align 8
  br label %60

60:                                               ; preds = %97, %56
  %61 = load %struct.entry*, %struct.entry** %1, align 8
  %62 = icmp ne %struct.entry* %61, null
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  %64 = load %struct.entry*, %struct.entry** %1, align 8
  %65 = getelementptr inbounds %struct.entry, %struct.entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NEW, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %97

71:                                               ; preds = %63
  %72 = load %struct.entry*, %struct.entry** %2, align 8
  %73 = call i32 @myname(%struct.entry* %72)
  %74 = call i32 @strcpy(i8* %9, i32 %73)
  %75 = load %struct.entry*, %struct.entry** %2, align 8
  %76 = getelementptr inbounds %struct.entry, %struct.entry* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NODE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.entry*, %struct.entry** %1, align 8
  %82 = call i32 @myname(%struct.entry* %81)
  %83 = load i32, i32* @SYMLINK, align 4
  %84 = call i32 @linkit(i8* %9, i32 %82, i32 %83)
  br label %90

85:                                               ; preds = %71
  %86 = load %struct.entry*, %struct.entry** %1, align 8
  %87 = call i32 @myname(%struct.entry* %86)
  %88 = load i32, i32* @HARDLINK, align 4
  %89 = call i32 @linkit(i8* %9, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* @NEW, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.entry*, %struct.entry** %1, align 8
  %94 = getelementptr inbounds %struct.entry, %struct.entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %90, %70
  %98 = load %struct.entry*, %struct.entry** %1, align 8
  %99 = getelementptr inbounds %struct.entry, %struct.entry* %98, i32 0, i32 2
  %100 = load %struct.entry*, %struct.entry** %99, align 8
  store %struct.entry* %100, %struct.entry** %1, align 8
  br label %60

101:                                              ; preds = %60
  br label %102

102:                                              ; preds = %101, %55
  %103 = load i64, i64* %3, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %3, align 8
  br label %46

105:                                              ; preds = %46
  %106 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %106)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.entry* @lookupino(i64) #2

declare dso_local i32 @vprintf(i32, i8*) #2

declare dso_local i32 @addwhiteout(i32) #2

declare dso_local i32 @myname(%struct.entry*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @linkit(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
