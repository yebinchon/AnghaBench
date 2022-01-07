; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_fsck_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_fsck_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.direct = type { i64 }
%struct.inodesc = type { i64, i64, i64, i64, i32 }
%struct.bufarea = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@sblock = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DIRBLKSIZ = common dso_local global i64 0, align 8
@IGNORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"DIRECTORY CORRUPTED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.direct* (%struct.inodesc*)* @fsck_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.direct* @fsck_readdir(%struct.inodesc* %0) #0 {
  %2 = alloca %struct.direct*, align 8
  %3 = alloca %struct.inodesc*, align 8
  %4 = alloca %struct.direct*, align 8
  %5 = alloca %struct.direct*, align 8
  %6 = alloca %struct.bufarea*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.inodesc* %0, %struct.inodesc** %3, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %11 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sblock, i32 0, i32 0), align 8
  %14 = mul nsw i64 %12, %13
  store i64 %14, i64* %8, align 8
  %15 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %16 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %21 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %1
  store %struct.direct* null, %struct.direct** %2, align 8
  br label %157

26:                                               ; preds = %19
  %27 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %28 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.bufarea* @getdirblk(i32 %29, i64 %30)
  store %struct.bufarea* %31, %struct.bufarea** %6, align 8
  %32 = load %struct.bufarea*, %struct.bufarea** %6, align 8
  %33 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %37 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = inttoptr i64 %39 to %struct.direct*
  store %struct.direct* %40, %struct.direct** %4, align 8
  %41 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %42 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DIRBLKSIZ, align 8
  %45 = srem i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %26
  %48 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %49 = load %struct.bufarea*, %struct.bufarea** %6, align 8
  %50 = load %struct.direct*, %struct.direct** %4, align 8
  %51 = call i64 @dircheck(%struct.inodesc* %48, %struct.bufarea* %49, %struct.direct* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %105

53:                                               ; preds = %47, %26
  %54 = load %struct.direct*, %struct.direct** %4, align 8
  %55 = getelementptr inbounds %struct.direct, %struct.direct* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %58 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.direct*, %struct.direct** %4, align 8
  %62 = getelementptr inbounds %struct.direct, %struct.direct* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %65 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %69 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %53
  %73 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %74 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %72
  %79 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %80 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DIRBLKSIZ, align 8
  %83 = srem i64 %81, %82
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78, %72, %53
  %86 = load %struct.direct*, %struct.direct** %4, align 8
  store %struct.direct* %86, %struct.direct** %2, align 8
  br label %157

87:                                               ; preds = %78
  %88 = load %struct.bufarea*, %struct.bufarea** %6, align 8
  %89 = getelementptr inbounds %struct.bufarea, %struct.bufarea* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %93 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = inttoptr i64 %95 to %struct.direct*
  store %struct.direct* %96, %struct.direct** %5, align 8
  %97 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %98 = load %struct.bufarea*, %struct.bufarea** %6, align 8
  %99 = load %struct.direct*, %struct.direct** %5, align 8
  %100 = call i64 @dircheck(%struct.inodesc* %97, %struct.bufarea* %98, %struct.direct* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = load %struct.direct*, %struct.direct** %4, align 8
  store %struct.direct* %103, %struct.direct** %2, align 8
  br label %157

104:                                              ; preds = %87
  store i64 1, i64* %9, align 8
  br label %105

105:                                              ; preds = %104, %47
  %106 = load i64, i64* @DIRBLKSIZ, align 8
  %107 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %108 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DIRBLKSIZ, align 8
  %111 = srem i64 %109, %110
  %112 = sub nsw i64 %106, %111
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %115 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %120 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %124 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IGNORE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %105
  store %struct.direct* null, %struct.direct** %2, align 8
  br label %157

129:                                              ; preds = %105
  %130 = load i64, i64* %9, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load %struct.direct*, %struct.direct** %5, align 8
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @memset(%struct.direct* %133, i32 0, i64 %134)
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.direct*, %struct.direct** %4, align 8
  %138 = getelementptr inbounds %struct.direct, %struct.direct* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, %136
  store i64 %140, i64* %138, align 8
  br label %148

141:                                              ; preds = %129
  %142 = load %struct.direct*, %struct.direct** %4, align 8
  %143 = load i64, i64* %7, align 8
  %144 = call i32 @memset(%struct.direct* %142, i32 0, i64 %143)
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.direct*, %struct.direct** %4, align 8
  %147 = getelementptr inbounds %struct.direct, %struct.direct* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %141, %132
  %149 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %150 = call i64 @dofix(%struct.inodesc* %149, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load %struct.bufarea*, %struct.bufarea** %6, align 8
  %154 = call i32 @dirty(%struct.bufarea* %153)
  br label %155

155:                                              ; preds = %152, %148
  %156 = load %struct.direct*, %struct.direct** %4, align 8
  store %struct.direct* %156, %struct.direct** %2, align 8
  br label %157

157:                                              ; preds = %155, %128, %102, %85, %25
  %158 = load %struct.direct*, %struct.direct** %2, align 8
  ret %struct.direct* %158
}

declare dso_local %struct.bufarea* @getdirblk(i32, i64) #1

declare dso_local i64 @dircheck(%struct.inodesc*, %struct.bufarea*, %struct.direct*) #1

declare dso_local i32 @memset(%struct.direct*, i32, i64) #1

declare dso_local i64 @dofix(%struct.inodesc*, i8*) #1

declare dso_local i32 @dirty(%struct.bufarea*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
