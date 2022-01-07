; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_minidump_machdep.c_blk_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_minidump_machdep.c_blk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32 }

@MAXDUMPPGS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"cant have both va and pa!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"size not page aligned\0A\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"address not page aligned\0A\00", align 1
@fragsz = common dso_local global i32 0, align 4
@counter = common dso_local global i64 0, align 8
@progress = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" %lld\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@dump_va = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c" (CTRL-C to abort) \00", align 1
@WD_LASTVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dumperinfo*, i8*, i32, i64)* @blk_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_write(%struct.dumperinfo* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dumperinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %16 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @MAXDUMPPGS, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = mul i64 %18, %19
  %21 = call i32 @min(i32 %17, i64 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %24, %4
  store i32 0, i32* %11, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %180

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = urem i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %5, align 4
  br label %180

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PAGE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %5, align 4
  br label %180

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %61 = call i32 @blk_flush(%struct.dumperinfo* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %180

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %56
  br label %68

68:                                               ; preds = %178, %67
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %179

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @fragsz, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %79, %71
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @counter, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* @counter, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @progress, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* @progress, align 8
  %88 = load i64, i64* @counter, align 8
  %89 = lshr i64 %88, 22
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load i64, i64* @progress, align 8
  %93 = load i64, i64* @PAGE_SHIFT, align 8
  %94 = lshr i64 %92, %93
  %95 = call i32 @PG2MB(i64 %94)
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i64, i64* @counter, align 8
  %98 = and i64 %97, 4194303
  store i64 %98, i64* @counter, align 8
  br label %99

99:                                               ; preds = %91, %81
  %100 = load i8*, i8** %7, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @dump_append(%struct.dumperinfo* %103, i8* %104, i32 0, i64 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %5, align 4
  br label %180

111:                                              ; preds = %102
  %112 = load i64, i64* %10, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 %112
  store i8* %114, i8** %7, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = sub i64 %116, %115
  store i64 %117, i64* %9, align 8
  br label %167

118:                                              ; preds = %99
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %135, %118
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %10, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @fragsz, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i64, i64* @PAGE_SHIFT, align 8
  %132 = trunc i64 %131 to i32
  %133 = ashr i32 %130, %132
  %134 = call i32 @pmap_kenter_temporary(i32 %127, i32 %133)
  store i32 %134, i32* @dump_va, align 4
  br label %135

135:                                              ; preds = %124
  %136 = load i64, i64* @PAGE_SIZE, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %12, align 4
  br label %119

141:                                              ; preds = %119
  %142 = load i64, i64* %10, align 8
  %143 = load i32, i32* @fragsz, align 4
  %144 = sext i32 %143 to i64
  %145 = add i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* @fragsz, align 4
  %147 = load i64, i64* %10, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %8, align 4
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* %9, align 8
  %154 = sub i64 %153, %152
  store i64 %154, i64* %9, align 8
  %155 = load i32, i32* @fragsz, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %141
  %159 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %160 = call i32 @blk_flush(%struct.dumperinfo* %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %5, align 4
  br label %180

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165, %141
  br label %167

167:                                              ; preds = %166, %111
  %168 = call i32 (...) @cncheckc()
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* @ECANCELED, align 4
  store i32 %172, i32* %5, align 4
  br label %180

173:                                              ; preds = %167
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, -1
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %173
  br label %68

179:                                              ; preds = %68
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %171, %163, %109, %64, %52, %44, %33
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @blk_flush(%struct.dumperinfo*) #1

declare dso_local i32 @PG2MB(i64) #1

declare dso_local i32 @dump_append(%struct.dumperinfo*, i8*, i32, i64) #1

declare dso_local i32 @pmap_kenter_temporary(i32, i32) #1

declare dso_local i32 @cncheckc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
