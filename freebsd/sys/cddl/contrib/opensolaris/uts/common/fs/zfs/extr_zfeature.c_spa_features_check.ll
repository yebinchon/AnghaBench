; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfeature.c_spa_features_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfeature.c_spa_features_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }

@B_TRUE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAXPATHLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spa_features_check(%struct.TYPE_6__* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  br label %30

26:                                               ; preds = %4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %25, %22 ], [ %29, %26 ]
  store i32 %31, i32* %13, align 4
  %32 = load i64, i64* @B_TRUE, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @zap_cursor_init(i32* %11, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %101, %30
  %37 = call i64 @zap_cursor_retrieve(i32* %11, %struct.TYPE_5__* %12)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %103

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi i1 [ false, %39 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* null, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @fnvlist_add_uint64(i32* %55, i32 %57, i64 %59)
  br label %61

61:                                               ; preds = %54, %48
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @zfeature_is_supported(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* @B_FALSE, align 8
  store i64 %71, i64* %10, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = icmp ne i32* null, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %75 = load i32, i32* @MAXPATHLEN, align 4
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %15, align 8
  %78 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %16, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = trunc i64 %76 to i32
  %86 = call i64 @zap_lookup(i32* %79, i32 %82, i32 %84, i32 1, i32 %85, i8* %78)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  store i8* %78, i8** %14, align 8
  br label %89

89:                                               ; preds = %88, %74
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = call i64 @nvlist_add_string(i32* %90, i32 %92, i8* %93)
  %95 = icmp eq i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @VERIFY(i32 %96)
  %98 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %99

99:                                               ; preds = %89, %70
  br label %100

100:                                              ; preds = %99, %65, %61
  br label %101

101:                                              ; preds = %100
  %102 = call i32 @zap_cursor_advance(i32* %11)
  br label %36

103:                                              ; preds = %36
  %104 = call i32 @zap_cursor_fini(i32* %11)
  %105 = load i64, i64* %10, align 8
  ret i64 %105
}

declare dso_local i32 @zap_cursor_init(i32*, i32*, i32) #1

declare dso_local i64 @zap_cursor_retrieve(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @zfeature_is_supported(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @zap_lookup(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
