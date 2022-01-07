; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_lookupname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_lookupname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, %struct.entry*, %struct.entry* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@UFS_ROOTINO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.entry* @lookupname(i8* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i32, i32* @UFS_ROOTINO, align 4
  %16 = call %struct.entry* @lookupino(i32 %15)
  store %struct.entry* %16, %struct.entry** %4, align 8
  br label %17

17:                                               ; preds = %78, %1
  %18 = load %struct.entry*, %struct.entry** %4, align 8
  %19 = icmp ne %struct.entry* %18, null
  br i1 %19, label %20, label %82

20:                                               ; preds = %17
  store i8* %13, i8** %5, align 8
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 47
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %13, i64 %11
  %34 = icmp ult i8* %32, %33
  br label %35

35:                                               ; preds = %31, %26, %21
  %36 = phi i1 [ false, %26 ], [ false, %21 ], [ %34, %31 ]
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = load i8, i8* %38, align 1
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  store i8 %40, i8* %41, align 1
  br label %21

43:                                               ; preds = %35
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %13, i64 %11
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %82

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %61, %48
  %51 = load %struct.entry*, %struct.entry** %4, align 8
  %52 = icmp ne %struct.entry* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load %struct.entry*, %struct.entry** %4, align 8
  %55 = getelementptr inbounds %struct.entry, %struct.entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @strcmp(i32 %56, i8* %13)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %65

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.entry*, %struct.entry** %4, align 8
  %63 = getelementptr inbounds %struct.entry, %struct.entry* %62, i32 0, i32 1
  %64 = load %struct.entry*, %struct.entry** %63, align 8
  store %struct.entry* %64, %struct.entry** %4, align 8
  br label %50

65:                                               ; preds = %59, %50
  %66 = load %struct.entry*, %struct.entry** %4, align 8
  %67 = icmp eq %struct.entry* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %82

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load %struct.entry*, %struct.entry** %4, align 8
  store %struct.entry* %76, %struct.entry** %2, align 8
  store i32 1, i32* %9, align 4
  br label %83

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.entry*, %struct.entry** %4, align 8
  %80 = getelementptr inbounds %struct.entry, %struct.entry* %79, i32 0, i32 2
  %81 = load %struct.entry*, %struct.entry** %80, align 8
  store %struct.entry* %81, %struct.entry** %4, align 8
  br label %17

82:                                               ; preds = %68, %47, %17
  store %struct.entry* null, %struct.entry** %2, align 8
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %75
  %84 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load %struct.entry*, %struct.entry** %2, align 8
  ret %struct.entry* %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.entry* @lookupino(i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
