; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i32, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }

@disk = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@part_ofs = common dso_local global i64 0, align 8
@sblock = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@acg = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@CG_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"cg 0: bad magic number\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"first cylinder group ran out of space\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"internal error: can't find block in cyl 0\0A\00", align 1
@fscs = common dso_local global %struct.TYPE_21__* null, align 8
@IFDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"alloc: cgput: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @part_ofs, align 8
  %10 = call i32 @cgtod(%struct.TYPE_20__* @sblock, i32 0)
  %11 = call i64 @fsbtodb(%struct.TYPE_20__* @sblock, i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 5), align 4
  %14 = call i32 @bread(%struct.TYPE_22__* @disk, i64 %12, i8* bitcast (%struct.TYPE_17__* @acg to i8*), i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acg, i32 0, i32 0), align 8
  %16 = load i64, i64* @CG_MAGIC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 38) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acg, i32 0, i32 3, i32 0), align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @exit(i32 39) #3
  unreachable

27:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acg, i32 0, i32 1), align 8
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = call i32 @cg_blksfree(%struct.TYPE_17__* @acg)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %36 = sdiv i32 %34, %35
  %37 = call i64 @isblock(%struct.TYPE_20__* @sblock, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %48

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %28

45:                                               ; preds = %28
  %46 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 @exit(i32 40) #3
  unreachable

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @fragstoblks(%struct.TYPE_20__* @sblock, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = call i32 @cg_blksfree(%struct.TYPE_17__* @acg)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @clrblock(%struct.TYPE_20__* @sblock, i32 %51, i32 %52)
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 1), align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = call i32 @cg_clustersfree(%struct.TYPE_17__* @acg)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @clrbit(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acg, i32 0, i32 3, i32 0), align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acg, i32 0, i32 3, i32 0), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 3, i32 2), align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 3, i32 2), align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** @fscs, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @IFDIR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %60
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acg, i32 0, i32 3, i32 2), align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acg, i32 0, i32 3, i32 2), align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 3, i32 1), align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 3, i32 1), align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** @fscs, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %74, %60
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 2), align 8
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %133

88:                                               ; preds = %84
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 4), align 8
  %91 = call i32 @howmany(i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** @fscs, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %94
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 3, i32 0), align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 3, i32 0), align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acg, i32 0, i32 3, i32 1), align 8
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acg, i32 0, i32 3, i32 1), align 8
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acg, i32 0, i32 2), align 8
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %129, %88
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sblock, i32 0, i32 0), align 8
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = call i32 @cg_blksfree(%struct.TYPE_17__* @acg)
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %125, %126
  %128 = call i32 @setbit(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %119

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %84
  %134 = call i64 @cgput(%struct.TYPE_22__* @disk, %struct.TYPE_17__* @acg)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @disk, i32 0, i32 0), align 4
  %138 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i32 @bread(%struct.TYPE_22__*, i64, i8*, i32) #1

declare dso_local i64 @fsbtodb(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @cgtod(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @isblock(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @cg_blksfree(%struct.TYPE_17__*) #1

declare dso_local i32 @fragstoblks(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @clrblock(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @clrbit(i32, i32) #1

declare dso_local i32 @cg_clustersfree(%struct.TYPE_17__*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @setbit(i32, i32) #1

declare dso_local i64 @cgput(%struct.TYPE_22__*, %struct.TYPE_17__*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
