; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_uuids-table.c_svn_fs_bdb__set_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_uuids-table.c_svn_fs_bdb__set_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)* }
%struct.TYPE_17__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"uuids\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"set repository uuid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__set_uuid(%struct.TYPE_15__* %0, i32 %1, i8* %2, %struct.TYPE_14__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %12, align 8
  %21 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_17__* %13)
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  store i32* %7, i32** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store i32 4, i32* %23, align 8
  %24 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_17__* %14)
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = call i32* @apr_pstrmemdup(i32* %29, i8* %30, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32* %34, i32** %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_14__* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32)** %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %42(%struct.TYPE_18__* %43, i32 %46, %struct.TYPE_17__* %13, %struct.TYPE_17__* %14, i32 0)
  %48 = call i32* @BDB_WRAP(%struct.TYPE_15__* %38, i32 %39, i32 %47)
  ret i32* %48
}

declare dso_local i32 @svn_fs_base__clear_dbt(%struct.TYPE_17__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @apr_pstrmemdup(i32*, i8*, i32) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
