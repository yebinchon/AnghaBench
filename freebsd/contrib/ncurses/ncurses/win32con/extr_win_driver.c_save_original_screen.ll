; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/win32con/extr_win_driver.c_save_original_screen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/win32con/extr_win_driver.c_save_original_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"... reading console buffer %dx%d into %d,%d - %d,%d at %d,%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" error %#lx\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"... reading console window %dx%d into %d,%d - %d,%d at %d,%d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"... save original screen contents %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @save_original_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_original_screen(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__, align 4
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = call %struct.TYPE_19__* @PropOf(%struct.TYPE_17__* %10)
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %4, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %25, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = mul i64 %30, 4
  %32 = call i8* @malloc(i64 %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = icmp ne i8* %32, null
  br i1 %35, label %36, label %207

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  store i8* null, i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  store i8* null, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @T(i8* %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast %struct.TYPE_20__* %5 to i64*
  %79 = load i64, i64* %78, align 4
  %80 = bitcast %struct.TYPE_20__* %6 to i64*
  %81 = load i64, i64* %80, align 4
  %82 = call i64 @ReadConsoleOutput(i32 %74, i8* %77, i64 %79, i64 %81, %struct.TYPE_18__* %7)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %36
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %3, align 4
  br label %206

86:                                               ; preds = %36
  %87 = call i64 (...) @GetLastError()
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @T(i8* %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @FreeAndNull(i8* %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = ptrtoint i8* %98 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = add nsw i64 %106, 1
  %108 = inttoptr i64 %107 to i8*
  %109 = ptrtoint i8* %108 to i32
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = ptrtoint i8* %115 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = add nsw i64 %123, 1
  %125 = inttoptr i64 %124 to i8*
  %126 = ptrtoint i8* %125 to i32
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %129, %131
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %8, align 8
  %135 = mul i64 %134, 4
  %136 = call i8* @malloc(i64 %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = icmp ne i8* %136, null
  br i1 %139, label %140, label %205

140:                                              ; preds = %86
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i32 0, i32* %142, align 4
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  store i8* %147, i8** %148, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  store i8* %153, i8** %154, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  store i8* %159, i8** %160, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i8* %165, i8** %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = call i32 @T(i8* %184)
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = bitcast %struct.TYPE_20__* %5 to i64*
  %193 = load i64, i64* %192, align 4
  %194 = bitcast %struct.TYPE_20__* %6 to i64*
  %195 = load i64, i64* %194, align 4
  %196 = call i64 @ReadConsoleOutput(i32 %188, i8* %191, i64 %193, i64 %195, %struct.TYPE_18__* %7)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %140
  %199 = load i32, i32* @TRUE, align 4
  store i32 %199, i32* %3, align 4
  br label %204

200:                                              ; preds = %140
  %201 = call i64 (...) @GetLastError()
  %202 = inttoptr i64 %201 to i8*
  %203 = call i32 @T(i8* %202)
  br label %204

204:                                              ; preds = %200, %198
  br label %205

205:                                              ; preds = %204, %86
  br label %206

206:                                              ; preds = %205, %84
  br label %207

207:                                              ; preds = %206, %1
  %208 = load i32, i32* %3, align 4
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %212 = call i32 @T(i8* %211)
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.TYPE_19__* @PropOf(%struct.TYPE_17__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @T(i8*) #1

declare dso_local i64 @ReadConsoleOutput(i32, i8*, i64, i64, %struct.TYPE_18__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @FreeAndNull(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
