; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_load_nvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_load_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32 }

@DMU_OT_PACKED_NVLIST = common dso_local global i64 0, align 8
@DMU_OT_PACKED_NVLIST_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i8**)* @load_nvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_nvlist(%struct.TYPE_9__* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i8**, i8*** %7, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @objset_get_dnode(%struct.TYPE_9__* %13, i32* %15, i64 %16, %struct.TYPE_10__* %8)
  store i32 %17, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %65

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DMU_OT_PACKED_NVLIST, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMU_OT_PACKED_NVLIST_SIZE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %4, align 4
  br label %65

33:                                               ; preds = %26, %21
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 8
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %4, align 4
  br label %65

40:                                               ; preds = %33
  %41 = call i64 @DN_BONUS(%struct.TYPE_10__* %8)
  %42 = inttoptr i64 %41 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i8* @malloc(i64 %44)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %4, align 4
  br label %65

50:                                               ; preds = %40
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @dnode_read(%struct.TYPE_9__* %51, %struct.TYPE_10__* %8, i32 0, i8* %52, i64 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @free(i8* %58)
  store i8* null, i8** %11, align 8
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %50
  %62 = load i8*, i8** %11, align 8
  %63 = load i8**, i8*** %7, align 8
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %57, %48, %38, %31, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @objset_get_dnode(%struct.TYPE_9__*, i32*, i64, %struct.TYPE_10__*) #1

declare dso_local i64 @DN_BONUS(%struct.TYPE_10__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @dnode_read(%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
