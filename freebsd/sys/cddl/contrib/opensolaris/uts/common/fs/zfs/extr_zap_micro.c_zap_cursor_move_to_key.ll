; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_zap_cursor_move_to_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_zap_cursor_move_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@RW_READER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zap_cursor_move_to_key(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RW_READER, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32, i32* @FTAG, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = call i32 @zap_lockdir(i32 %18, i32 %21, i32* null, i32 %22, i32 %23, i32 %24, i32 %25, %struct.TYPE_10__** %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %98

33:                                               ; preds = %15
  br label %41

34:                                               ; preds = %3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* @RW_READER, align 4
  %40 = call i32 @rw_enter(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %33
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32* @zap_name_alloc(%struct.TYPE_10__* %44, i8* %45, i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = call i32 @rw_exit(i32* %54)
  %56 = load i32, i32* @ENOTSUP, align 4
  %57 = call i32 @SET_ERROR(i32 %56)
  store i32 %57, i32* %4, align 4
  br label %98

58:                                               ; preds = %41
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @fzap_cursor_move_to_key(%struct.TYPE_8__* %66, i32* %67)
  store i32 %68, i32* %8, align 4
  br label %88

69:                                               ; preds = %58
  %70 = load i32*, i32** %10, align 8
  %71 = call %struct.TYPE_9__* @mze_find(i32* %70)
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %9, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = icmp eq %struct.TYPE_9__* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOENT, align 4
  %76 = call i32 @SET_ERROR(i32 %75)
  store i32 %76, i32* %8, align 4
  br label %89

77:                                               ; preds = %69
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %77, %65
  br label %89

89:                                               ; preds = %88, %74
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @zap_name_free(i32* %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = call i32 @rw_exit(i32* %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %89, %50, %31
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @zap_lockdir(i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32* @zap_name_alloc(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @fzap_cursor_move_to_key(%struct.TYPE_8__*, i32*) #1

declare dso_local %struct.TYPE_9__* @mze_find(i32*) #1

declare dso_local i32 @zap_name_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
