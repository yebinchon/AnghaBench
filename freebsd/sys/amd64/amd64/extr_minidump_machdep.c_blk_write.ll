; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_minidump_machdep.c_blk_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_minidump_machdep.c_blk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32 }

@MAXDUMPPGS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"size not page aligned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cant have both va and pa!\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"address not page aligned %p\0A\00", align 1
@fragsz = common dso_local global i32 0, align 4
@counter = common dso_local global i64 0, align 8
@progress = common dso_local global i64 0, align 8
@dumpsize = common dso_local global i32 0, align 4
@wdog_next = common dso_local global i64 0, align 8
@WD_LASTVAL = common dso_local global i32 0, align 4
@WDOG_DUMP_INTERVAL = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@dump_va = common dso_local global i32 0, align 4
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
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
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = urem i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %189

35:                                               ; preds = %27
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %5, align 4
  br label %189

44:                                               ; preds = %38, %35
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = urem i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %5, align 4
  br label %189

53:                                               ; preds = %44
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %58 = call i32 @blk_flush(%struct.dumperinfo* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %189

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %53
  br label %65

65:                                               ; preds = %187, %64
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %188

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @fragsz, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %76, %68
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @counter, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* @counter, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @progress, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* @progress, align 8
  %85 = load i64, i64* @counter, align 8
  %86 = lshr i64 %85, 24
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load i64, i64* @progress, align 8
  %90 = load i32, i32* @dumpsize, align 4
  %91 = call i32 @report_progress(i64 %89, i32 %90)
  %92 = load i64, i64* @counter, align 8
  %93 = and i64 %92, 16777215
  store i64 %93, i64* @counter, align 8
  br label %94

94:                                               ; preds = %88, %78
  %95 = load i64, i64* @progress, align 8
  %96 = load i64, i64* @wdog_next, align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i32, i32* @WD_LASTVAL, align 4
  %100 = call i32 @wdog_kern_pat(i32 %99)
  %101 = load i64, i64* @wdog_next, align 8
  %102 = load i64, i64* @WDOG_DUMP_INTERVAL, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i64, i64* @WDOG_DUMP_INTERVAL, align 8
  %106 = load i64, i64* @wdog_next, align 8
  %107 = sub nsw i64 %106, %105
  store i64 %107, i64* @wdog_next, align 8
  br label %109

108:                                              ; preds = %98
  store i64 0, i64* @wdog_next, align 8
  br label %109

109:                                              ; preds = %108, %104
  br label %110

110:                                              ; preds = %109, %94
  %111 = load i8*, i8** %7, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @dump_append(%struct.dumperinfo* %114, i8* %115, i32 0, i64 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %5, align 4
  br label %189

122:                                              ; preds = %113
  %123 = load i64, i64* %10, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 %123
  store i8* %125, i8** %7, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %9, align 8
  %128 = sub i64 %127, %126
  store i64 %128, i64* %9, align 8
  br label %176

129:                                              ; preds = %110
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %146, %129
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %10, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %130
  %136 = load i64, i64* %8, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @fragsz, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* @PAGE_SHIFT, align 4
  %144 = ashr i32 %142, %143
  %145 = call i32 @pmap_kenter_temporary(i64 %139, i32 %144)
  store i32 %145, i32* @dump_va, align 4
  br label %146

146:                                              ; preds = %135
  %147 = load i64, i64* @PAGE_SIZE, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %12, align 4
  br label %130

152:                                              ; preds = %130
  %153 = load i64, i64* %10, align 8
  %154 = load i32, i32* @fragsz, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* @fragsz, align 4
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* %8, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %8, align 8
  %161 = load i64, i64* %10, align 8
  %162 = load i64, i64* %9, align 8
  %163 = sub i64 %162, %161
  store i64 %163, i64* %9, align 8
  %164 = load i32, i32* @fragsz, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %152
  %168 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %169 = call i32 @blk_flush(%struct.dumperinfo* %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %11, align 4
  store i32 %173, i32* %5, align 4
  br label %189

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %152
  br label %176

176:                                              ; preds = %175, %122
  %177 = call i32 (...) @cncheckc()
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp eq i32 %178, 3
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @ECANCELED, align 4
  store i32 %181, i32* %5, align 4
  br label %189

182:                                              ; preds = %176
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, -1
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %182
  br label %65

188:                                              ; preds = %65
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %188, %180, %172, %120, %61, %49, %41, %32
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @blk_flush(%struct.dumperinfo*) #1

declare dso_local i32 @report_progress(i64, i32) #1

declare dso_local i32 @wdog_kern_pat(i32) #1

declare dso_local i32 @dump_append(%struct.dumperinfo*, i8*, i32, i64) #1

declare dso_local i32 @pmap_kenter_temporary(i64, i32) #1

declare dso_local i32 @cncheckc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
