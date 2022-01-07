; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm_map.c_dbm_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm_map.c_dbm_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@ifd = common dso_local global i32 0, align 4
@st = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"dbm_map(%s): File too short\00", align 1
@EFTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@dbm_base = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32 0, align 4
@MANDOCDB_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"SQLite format 3\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"dbm_map(%s): Bad initial magic %x (expected %x)\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"dbm_map(%s): Obsolete format based on SQLite 3\00", align 1
@MANDOCDB_VERSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"dbm_map(%s): Bad version number %d (expected %d)\00", align 1
@max_offset = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"dbm_map(%s): Inconsistent file size %lld (expected %d)\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"dbm_map(%s): Bad final magic %x (expected %x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbm_map(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = call i32 @open(i8* %6, i32 %7)
  store i32 %8, i32* @ifd, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %119

11:                                               ; preds = %1
  %12 = load i32, i32* @ifd, align 4
  %13 = call i32 @fstat(i32 %12, %struct.TYPE_3__* @st)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %114

16:                                               ; preds = %11
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 0), align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @EFTYPE, align 4
  store i32 %22, i32* @errno, align 4
  br label %114

23:                                               ; preds = %16
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 0), align 4
  %25 = load i32, i32* @INT32_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @EFBIG, align 4
  store i32 %28, i32* @errno, align 4
  br label %114

29:                                               ; preds = %23
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 0), align 4
  %31 = load i32, i32* @PROT_READ, align 4
  %32 = load i32, i32* @MAP_SHARED, align 4
  %33 = load i32, i32* @ifd, align 4
  %34 = call i32 @mmap(i32* null, i32 %30, i32 %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* @dbm_base, align 4
  %35 = load i32, i32* @MAP_FAILED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %114

38:                                               ; preds = %29
  %39 = call i32* @dbm_getint(i32 0)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @be32toh(i32 %41)
  %43 = load i64, i64* @MANDOCDB_MAGIC, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load i32, i32* @dbm_base, align 4
  %47 = call i64 @strncmp(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 15)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @be32toh(i32 %52)
  %54 = load i64, i64* @MANDOCDB_MAGIC, align 8
  %55 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %50, i64 %53, i64 %54)
  br label %59

56:                                               ; preds = %45
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32, i32* @EFTYPE, align 4
  store i32 %60, i32* @errno, align 4
  br label %114

61:                                               ; preds = %38
  %62 = call i32* @dbm_getint(i32 1)
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @be32toh(i32 %64)
  %66 = load i64, i64* @MANDOCDB_VERSION, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load i8*, i8** %3, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @be32toh(i32 %71)
  %73 = load i64, i64* @MANDOCDB_VERSION, align 8
  %74 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %69, i64 %72, i64 %73)
  %75 = load i32, i32* @EFTYPE, align 4
  store i32 %75, i32* @errno, align 4
  br label %114

76:                                               ; preds = %61
  %77 = call i32* @dbm_getint(i32 3)
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @be32toh(i32 %78)
  %80 = add i64 %79, 4
  store i64 %80, i64* @max_offset, align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 0), align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @max_offset, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %76
  %86 = load i8*, i8** %3, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 0), align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @max_offset, align 8
  %90 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %86, i64 %88, i64 %89)
  %91 = load i32, i32* @EFTYPE, align 4
  store i32 %91, i32* @errno, align 4
  br label %114

92:                                               ; preds = %76
  %93 = call i32* @dbm_getint(i32 3)
  %94 = load i32, i32* %93, align 4
  %95 = call i32* @dbm_get(i32 %94)
  store i32* %95, i32** %5, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @EFTYPE, align 4
  store i32 %98, i32* @errno, align 4
  br label %114

99:                                               ; preds = %92
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @be32toh(i32 %101)
  %103 = load i64, i64* @MANDOCDB_MAGIC, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load i8*, i8** %3, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @be32toh(i32 %108)
  %110 = load i64, i64* @MANDOCDB_MAGIC, align 8
  %111 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %106, i64 %109, i64 %110)
  %112 = load i32, i32* @EFTYPE, align 4
  store i32 %112, i32* @errno, align 4
  br label %114

113:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %119

114:                                              ; preds = %105, %97, %85, %68, %59, %37, %27, %19, %15
  %115 = load i32, i32* @errno, align 4
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* @ifd, align 4
  %117 = call i32 @close(i32 %116)
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %119

119:                                              ; preds = %114, %113, %10
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @dbm_getint(i32) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32* @dbm_get(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
