; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librtld_db/extr_rtld_db.c_rd_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librtld_db/extr_rtld_db.c_rd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.kinfo_proc = type { i32 }
%struct.kinfo_vmentry = type { i64, i8* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@RD_ERR = common dso_local global i32 0, align 4
@KERN_PROC_PID = common dso_local global i32 0, align 4
@AT_BASE = common dso_local global i64 0, align 8
@RD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rd_reset(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.kinfo_vmentry*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  store %struct.kinfo_vmentry* null, %struct.kinfo_vmentry** %5, align 8
  %12 = load i32, i32* @RD_ERR, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KERN_PROC_PID, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @proc_getpid(i32 %19)
  %21 = call %struct.kinfo_proc* @procstat_getprocs(i32 %15, i32 %16, i32 %20, i32* %10)
  store %struct.kinfo_proc* %21, %struct.kinfo_proc** %4, align 8
  %22 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %23 = icmp eq %struct.kinfo_proc* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @RD_ERR, align 4
  store i32 %25, i32* %2, align 4
  br label %147

26:                                               ; preds = %1
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %35 = call %struct.TYPE_10__* @procstat_getauxv(i32 %33, %struct.kinfo_proc* %34, i32* %10)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %6, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = icmp eq %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %118

39:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AT_BASE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %8, align 8
  br label %65

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %40

65:                                               ; preds = %53, %40
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %118

70:                                               ; preds = %65
  store i8* null, i8** %7, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %75 = call %struct.kinfo_vmentry* @procstat_getvmmap(i32 %73, %struct.kinfo_proc* %74, i32* %10)
  store %struct.kinfo_vmentry* %75, %struct.kinfo_vmentry** %5, align 8
  %76 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %5, align 8
  %77 = icmp eq %struct.kinfo_vmentry* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %118

79:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %101, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %85, i64 %87
  %89 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %84
  %94 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %94, i64 %96
  %98 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %7, align 8
  br label %104

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %80

104:                                              ; preds = %93, %80
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %118

109:                                              ; preds = %104
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i64 @rtld_syms(%struct.TYPE_9__* %110, i8* %111, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @RD_OK, align 4
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %116, %115, %108, %78, %69, %38
  %119 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %5, align 8
  %120 = icmp ne %struct.kinfo_vmentry* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %5, align 8
  %126 = call i32 @procstat_freevmmap(i32 %124, %struct.kinfo_vmentry* %125)
  br label %127

127:                                              ; preds = %121, %118
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = icmp ne %struct.TYPE_10__* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = call i32 @procstat_freeauxv(i32 %133, %struct.TYPE_10__* %134)
  br label %136

136:                                              ; preds = %130, %127
  %137 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %138 = icmp ne %struct.kinfo_proc* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %144 = call i32 @procstat_freeprocs(i32 %142, %struct.kinfo_proc* %143)
  br label %145

145:                                              ; preds = %139, %136
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %24
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.kinfo_proc* @procstat_getprocs(i32, i32, i32, i32*) #1

declare dso_local i32 @proc_getpid(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @procstat_getauxv(i32, %struct.kinfo_proc*, i32*) #1

declare dso_local %struct.kinfo_vmentry* @procstat_getvmmap(i32, %struct.kinfo_proc*, i32*) #1

declare dso_local i64 @rtld_syms(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @procstat_freevmmap(i32, %struct.kinfo_vmentry*) #1

declare dso_local i32 @procstat_freeauxv(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @procstat_freeprocs(i32, %struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
