; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_minidump_machdep.c_blk_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_minidump_machdep.c_blk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32 }

@MAXDUMPPGS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"size not page aligned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cant have both va and pa!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"address not page aligned %p\0A\00", align 1
@fragsz = common dso_local global i64 0, align 8
@counter = common dso_local global i64 0, align 8
@progress = common dso_local global i64 0, align 8
@dumpsize = common dso_local global i32 0, align 4
@WD_LASTVAL = common dso_local global i32 0, align 4
@dump_va = common dso_local global i8* null, align 8
@ECANCELED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c" (CTRL-C to abort) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dumperinfo*, i8*, i64, i64)* @blk_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_write(%struct.dumperinfo* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dumperinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.dumperinfo* %0, %struct.dumperinfo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %15 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @MAXDUMPPGS, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = mul i64 %17, %18
  %20 = call i64 @min(i32 %16, i64 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %24, i64* %13, align 8
  br label %25

25:                                               ; preds = %23, %4
  store i32 0, i32* %11, align 4
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = urem i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %5, align 4
  br label %145

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %5, align 4
  br label %145

42:                                               ; preds = %36, %33
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = urem i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %5, align 4
  br label %145

51:                                               ; preds = %42
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %56 = call i32 @blk_flush(%struct.dumperinfo* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %145

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %51
  br label %63

63:                                               ; preds = %143, %62
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %144

66:                                               ; preds = %63
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @fragsz, align 8
  %69 = sub i64 %67, %68
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i64, i64* %9, align 8
  store i64 %74, i64* %10, align 8
  br label %75

75:                                               ; preds = %73, %66
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @counter, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* @counter, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @progress, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* @progress, align 8
  %82 = load i64, i64* @counter, align 8
  %83 = lshr i64 %82, 22
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load i64, i64* @progress, align 8
  %87 = load i32, i32* @dumpsize, align 4
  %88 = call i32 @report_progress(i64 %86, i32 %87)
  %89 = load i64, i64* @counter, align 8
  %90 = and i64 %89, 4194303
  store i64 %90, i64* @counter, align 8
  br label %91

91:                                               ; preds = %85, %75
  %92 = load i32, i32* @WD_LASTVAL, align 4
  %93 = call i32 @wdog_kern_pat(i32 %92)
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @dump_append(%struct.dumperinfo* %97, i8* %98, i32 0, i64 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %5, align 4
  br label %145

105:                                              ; preds = %96
  %106 = load i64, i64* %10, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 %106
  store i8* %108, i8** %7, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %9, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %9, align 8
  br label %132

112:                                              ; preds = %91
  %113 = load i64, i64* %8, align 8
  %114 = call i64 @PHYS_TO_DMAP(i64 %113)
  %115 = inttoptr i64 %114 to i8*
  store i8* %115, i8** @dump_va, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @fragsz, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* @fragsz, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %8, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %9, align 8
  %124 = sub i64 %123, %122
  store i64 %124, i64* %9, align 8
  %125 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %126 = call i32 @blk_flush(%struct.dumperinfo* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %112
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  br label %145

131:                                              ; preds = %112
  br label %132

132:                                              ; preds = %131, %105
  %133 = call i32 (...) @cncheckc()
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %134, 3
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* @ECANCELED, align 4
  store i32 %137, i32* %5, align 4
  br label %145

138:                                              ; preds = %132
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, -1
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %138
  br label %63

144:                                              ; preds = %63
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %136, %129, %103, %59, %47, %39, %30
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @blk_flush(%struct.dumperinfo*) #1

declare dso_local i32 @report_progress(i64, i32) #1

declare dso_local i32 @wdog_kern_pat(i32) #1

declare dso_local i32 @dump_append(%struct.dumperinfo*, i8*, i32, i64) #1

declare dso_local i64 @PHYS_TO_DMAP(i64) #1

declare dso_local i32 @cncheckc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
