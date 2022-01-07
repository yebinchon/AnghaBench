; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_journal_insertfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_journal_insertfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 }
%union.dinodep = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64*, i32, i8* }
%struct.TYPE_13__ = type { i64*, i32, i8* }

@disk = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@UFS_ROOTINO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get root inode: %s\00", align 1
@sblock = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to write root inode: %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to write updated cg\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Failed to write cg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @journal_insertfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_insertfile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.dinodep, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @UFS_ROOTINO, align 4
  %11 = call i64 @getinode(%struct.TYPE_16__* @disk, %union.dinodep* %4, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @disk, i32 0, i32 0), align 4
  %15 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @sbdirty()
  store i32 -1, i32* %2, align 4
  br label %171

17:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %18 = call i64 (...) @journal_balloc()
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %171

22:                                               ; preds = %17
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sblock, i32 0, i32 0), align 8
  %24 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = bitcast %union.dinodep* %4 to %struct.TYPE_13__**
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @lblkno(%struct.TYPE_15__* @sblock, i8* %30)
  store i64 %31, i64* %7, align 8
  %32 = bitcast %union.dinodep* %4 to %struct.TYPE_13__**
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @blkoff(%struct.TYPE_15__* @sblock, i8* %35)
  store i32 %36, i32* %9, align 4
  %37 = bitcast %union.dinodep* %4 to %struct.TYPE_13__**
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %6, align 8
  %44 = bitcast %union.dinodep* %4 to %struct.TYPE_13__**
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @sblksize(%struct.TYPE_15__* @sblock, i32 %48, i64 %49)
  store i32 %50, i32* %8, align 4
  br label %76

51:                                               ; preds = %22
  %52 = bitcast %union.dinodep* %4 to %struct.TYPE_14__**
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @lblkno(%struct.TYPE_15__* @sblock, i8* %55)
  store i64 %56, i64* %7, align 8
  %57 = bitcast %union.dinodep* %4 to %struct.TYPE_14__**
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @blkoff(%struct.TYPE_15__* @sblock, i8* %60)
  store i32 %61, i32* %9, align 4
  %62 = bitcast %union.dinodep* %4 to %struct.TYPE_14__**
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %6, align 8
  %69 = bitcast %union.dinodep* %4 to %struct.TYPE_14__**
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %72 to i32
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @sblksize(%struct.TYPE_15__* @sblock, i32 %73, i64 %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %51, %26
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @dir_extend(i64 %80, i64 %81, i32 %82, i32 %83)
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 -1, i32* %2, align 4
  br label %171

87:                                               ; preds = %79
  br label %95

88:                                               ; preds = %76
  store i64 0, i64* %6, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @dir_insert(i64 %89, i32 0, i32 %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 -1, i32* %2, align 4
  br label %171

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %87
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sblock, i32 0, i32 0), align 8
  %97 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %95
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sblock, i32 0, i32 1), align 8
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* @DEV_BSIZE, align 4
  %104 = sdiv i32 %102, %103
  %105 = bitcast %union.dinodep* %4 to %struct.TYPE_13__**
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, %104
  store i32 %109, i32* %107, align 8
  %110 = load i64, i64* %5, align 8
  %111 = bitcast %union.dinodep* %4 to %struct.TYPE_13__**
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64 %110, i64* %116, align 8
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 1
  %119 = call i8* @lblktosize(%struct.TYPE_15__* @sblock, i64 %118)
  %120 = bitcast %union.dinodep* %4 to %struct.TYPE_13__**
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  store i8* %119, i8** %122, align 8
  br label %147

123:                                              ; preds = %95
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sblock, i32 0, i32 1), align 8
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32, i32* @DEV_BSIZE, align 4
  %128 = sdiv i32 %126, %127
  %129 = bitcast %union.dinodep* %4 to %struct.TYPE_14__**
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, %128
  store i32 %133, i32* %131, align 8
  %134 = load i64, i64* %5, align 8
  %135 = bitcast %union.dinodep* %4 to %struct.TYPE_14__**
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* %7, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  store i64 %134, i64* %140, align 8
  %141 = load i64, i64* %7, align 8
  %142 = add i64 %141, 1
  %143 = call i8* @lblktosize(%struct.TYPE_15__* @sblock, i64 %142)
  %144 = bitcast %union.dinodep* %4 to %struct.TYPE_14__**
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  store i8* %143, i8** %146, align 8
  br label %147

147:                                              ; preds = %123, %99
  %148 = call i64 @putinode(%struct.TYPE_16__* @disk)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @disk, i32 0, i32 0), align 4
  %152 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  store i32 -1, i32* %2, align 4
  br label %171

153:                                              ; preds = %147
  %154 = call i64 @cgwrite(%struct.TYPE_16__* @disk)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %158 = call i32 (...) @sbdirty()
  store i32 -1, i32* %2, align 4
  br label %171

159:                                              ; preds = %153
  %160 = load i64, i64* %6, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load i64, i64* %6, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i64 @cgbfree(%struct.TYPE_16__* @disk, i64 %163, i32 %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %171

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %159
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %167, %156, %150, %93, %86, %21, %13
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i64 @getinode(%struct.TYPE_16__*, %union.dinodep*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @sbdirty(...) #1

declare dso_local i64 @journal_balloc(...) #1

declare dso_local i64 @lblkno(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @blkoff(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @sblksize(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @dir_extend(i64, i64, i32, i32) #1

declare dso_local i32 @dir_insert(i64, i32, i32) #1

declare dso_local i8* @lblktosize(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @putinode(%struct.TYPE_16__*) #1

declare dso_local i64 @cgwrite(%struct.TYPE_16__*) #1

declare dso_local i64 @cgbfree(%struct.TYPE_16__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
