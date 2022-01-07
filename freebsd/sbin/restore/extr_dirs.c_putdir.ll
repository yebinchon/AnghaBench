; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_putdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_putdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.direct = type { i64, i32, i64, i64 }

@Bcvt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@oldinofmt = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i64 0, align 8
@DIRBLKSIZ = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Mangled directory: \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"reclen not multiple of 4 \00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"reclen less than DIRSIZ (%u < %zu) \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"reclen name too big (%u > %u) \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @putdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putdir(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.direct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %139, %119, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %140

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = bitcast i8* %15 to %struct.direct*
  store %struct.direct* %16, %struct.direct** %5, align 8
  %17 = load i64, i64* @Bcvt, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.direct*, %struct.direct** %5, align 8
  %21 = bitcast %struct.direct* %20 to i32*
  %22 = call i32 @swabst(i32* bitcast ([3 x i8]* @.str to i32*), i32* %21)
  br label %23

23:                                               ; preds = %19, %12
  %24 = load i64, i64* @oldinofmt, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.direct*, %struct.direct** %5, align 8
  %28 = getelementptr inbounds %struct.direct, %struct.direct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i64, i64* @Bcvt, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.direct*, %struct.direct** %5, align 8
  %36 = getelementptr inbounds %struct.direct, %struct.direct* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.direct*, %struct.direct** %5, align 8
  %39 = getelementptr inbounds %struct.direct, %struct.direct* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i64, i64* @DT_UNKNOWN, align 8
  %42 = load %struct.direct*, %struct.direct** %5, align 8
  %43 = getelementptr inbounds %struct.direct, %struct.direct* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %26, %23
  %45 = load i32, i32* @DIRBLKSIZ, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @DIRBLKSIZ, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = and i64 %47, %50
  %52 = sub i64 %46, %51
  store i64 %52, i64* %7, align 8
  %53 = load %struct.direct*, %struct.direct** %5, align 8
  %54 = getelementptr inbounds %struct.direct, %struct.direct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 3
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %44
  %59 = load %struct.direct*, %struct.direct** %5, align 8
  %60 = getelementptr inbounds %struct.direct, %struct.direct* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %7, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %58
  %66 = load %struct.direct*, %struct.direct** %5, align 8
  %67 = getelementptr inbounds %struct.direct, %struct.direct* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load %struct.direct*, %struct.direct** %5, align 8
  %71 = call i64 @DIRSIZ(i32 0, %struct.direct* %70)
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = load %struct.direct*, %struct.direct** %5, align 8
  %75 = getelementptr inbounds %struct.direct, %struct.direct* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @NAME_MAX, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %125

79:                                               ; preds = %73, %65, %58, %44
  %80 = load i32, i32* @stdout, align 4
  %81 = call i32 (i32, i8*, ...) @vprintf(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.direct*, %struct.direct** %5, align 8
  %83 = getelementptr inbounds %struct.direct, %struct.direct* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 3
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @stdout, align 4
  %89 = call i32 (i32, i8*, ...) @vprintf(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %79
  %91 = load %struct.direct*, %struct.direct** %5, align 8
  %92 = getelementptr inbounds %struct.direct, %struct.direct* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load %struct.direct*, %struct.direct** %5, align 8
  %96 = call i64 @DIRSIZ(i32 0, %struct.direct* %95)
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = load i32, i32* @stdout, align 4
  %100 = load %struct.direct*, %struct.direct** %5, align 8
  %101 = getelementptr inbounds %struct.direct, %struct.direct* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.direct*, %struct.direct** %5, align 8
  %104 = call i64 @DIRSIZ(i32 0, %struct.direct* %103)
  %105 = call i32 (i32, i8*, ...) @vprintf(i32 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %102, i64 %104)
  br label %106

106:                                              ; preds = %98, %90
  %107 = load %struct.direct*, %struct.direct** %5, align 8
  %108 = getelementptr inbounds %struct.direct, %struct.direct* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NAME_MAX, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i32, i32* @stdout, align 4
  %114 = load %struct.direct*, %struct.direct** %5, align 8
  %115 = getelementptr inbounds %struct.direct, %struct.direct* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @NAME_MAX, align 8
  %118 = call i32 (i32, i8*, ...) @vprintf(i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %116, i64 %117)
  br label %119

119:                                              ; preds = %112, %106
  %120 = load i32, i32* @stdout, align 4
  %121 = call i32 (i32, i8*, ...) @vprintf(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %6, align 8
  br label %8

125:                                              ; preds = %73
  %126 = load %struct.direct*, %struct.direct** %5, align 8
  %127 = getelementptr inbounds %struct.direct, %struct.direct* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %6, align 8
  %132 = load %struct.direct*, %struct.direct** %5, align 8
  %133 = getelementptr inbounds %struct.direct, %struct.direct* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %125
  %137 = load %struct.direct*, %struct.direct** %5, align 8
  %138 = call i32 @putent(%struct.direct* %137)
  br label %139

139:                                              ; preds = %136, %125
  br label %8

140:                                              ; preds = %8
  ret void
}

declare dso_local i32 @swabst(i32*, i32*) #1

declare dso_local i64 @DIRSIZ(i32, %struct.direct*) #1

declare dso_local i32 @vprintf(i32, i8*, ...) #1

declare dso_local i32 @putent(%struct.direct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
