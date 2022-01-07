; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zil.c_zil_read_log_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zil.c_zil_read_log_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ARC_FLAG_WAIT = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@ZIO_FLAG_SCRUB = common dso_local global i32 0, align 4
@ZB_ZIL_LEVEL = common dso_local global i32 0, align 4
@arc_getbuf_func = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i8*)* @zil_read_log_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zil_read_log_data(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  store i32* %16, i32** %9, align 8
  %17 = load i32, i32* @ARC_FLAG_WAIT, align 4
  store i32 %17, i32* %10, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @BP_IS_HOLE(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @BP_GET_LSIZE(i32* %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MAX(i32 %27, i32 %30)
  %32 = call i32 @bzero(i8* %25, i32 %31)
  br label %33

33:                                               ; preds = %24, %21
  store i32 0, i32* %4, align 4
  br label %89

34:                                               ; preds = %3
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %43 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dmu_objset_id(i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ZB_ZIL_LEVEL, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @BP_GET_LSIZE(i32* %59)
  %61 = sdiv i32 %58, %60
  %62 = call i32 @SET_BOOKMARK(i32* %12, i32 %51, i32 %54, i32 %55, i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* @arc_getbuf_func, align 4
  %68 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @arc_read(i32* null, i32 %65, i32* %66, i32 %67, %struct.TYPE_14__** %11, i32 %68, i32 %69, i32* %10, i32* %12)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %47
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %82 = call i32 @arc_buf_size(%struct.TYPE_14__* %81)
  %83 = call i32 @bcopy(i32 %79, i8* %80, i32 %82)
  br label %84

84:                                               ; preds = %76, %73
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %86 = call i32 @arc_buf_destroy(%struct.TYPE_14__* %85, %struct.TYPE_14__** %11)
  br label %87

87:                                               ; preds = %84, %47
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %33
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @BP_GET_LSIZE(i32*) #1

declare dso_local i32 @SET_BOOKMARK(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dmu_objset_id(i32) #1

declare dso_local i32 @arc_read(i32*, i32, i32*, i32, %struct.TYPE_14__**, i32, i32, i32*, i32*) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local i32 @arc_buf_size(%struct.TYPE_14__*) #1

declare dso_local i32 @arc_buf_destroy(%struct.TYPE_14__*, %struct.TYPE_14__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
