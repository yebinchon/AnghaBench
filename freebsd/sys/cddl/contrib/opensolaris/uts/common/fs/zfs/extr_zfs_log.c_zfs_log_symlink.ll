; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_symlink(i32* %0, i32* %1, i32 %2, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %17, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %18, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @zil_replaying(i32* %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  br label %107

32:                                               ; preds = %7
  %33 = load i32, i32* %10, align 4
  %34 = load i64, i64* %17, align 8
  %35 = add i64 32, %34
  %36 = load i64, i64* %18, align 8
  %37 = add i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call %struct.TYPE_10__* @zil_itx_create(i32 %33, i32 %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %15, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %16, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SA_ZPL_GEN(i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = call i32 @sa_lookup(i32 %70, i32 %74, i32* %76, i32 4)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SA_ZPL_CRTIME(i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @sa_lookup(i32 %80, i32 %84, i32* %87, i32 8)
  %89 = load i8*, i8** %13, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 1
  %92 = bitcast %struct.TYPE_9__* %91 to i8*
  %93 = load i64, i64* %17, align 8
  %94 = call i32 @bcopy(i8* %89, i8* %92, i64 %93)
  %95 = load i8*, i8** %14, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 1
  %98 = bitcast %struct.TYPE_9__* %97 to i8*
  %99 = load i64, i64* %17, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i64, i64* %18, align 8
  %102 = call i32 @bcopy(i8* %95, i8* %100, i64 %101)
  %103 = load i32*, i32** %8, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @zil_itx_assign(i32* %103, %struct.TYPE_10__* %104, i32* %105)
  br label %107

107:                                              ; preds = %32, %31
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @zil_itx_create(i32, i32) #1

declare dso_local i32 @sa_lookup(i32, i32, i32*, i32) #1

declare dso_local i32 @SA_ZPL_GEN(i32) #1

declare dso_local i32 @SA_ZPL_CRTIME(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
