; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_provider_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_provider_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_13__*, i32, i32, i32, i32*, i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@DTRACE_PROVNAMELEN = common dso_local global i32 0, align 4
@fasttrap_provs = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"provider mtx\00", align 1
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"lock on creating\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@DTRACE_PRIV_PROC = common dso_local global i32 0, align 4
@DTRACE_PRIV_OWNER = common dso_local global i32 0, align 4
@DTRACE_PRIV_ZONEOWNER = common dso_local global i32 0, align 4
@pid_attr = common dso_local global i32 0, align 4
@pid_pops = common dso_local global i32 0, align 4
@usdt_pops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i64, i8*, i32*)* @fasttrap_provider_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @fasttrap_provider_lookup(i64 %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  %16 = load i32, i32* @DTRACE_PROVNAMELEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 4
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fasttrap_provs, i32 0, i32 0), align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @FASTTRAP_PROVS_INDEX(i64 %31, i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i64 %33
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %10, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = call i32 @mutex_enter(i32* %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %8, align 8
  br label %41

41:                                               ; preds = %71, %3
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strcmp(i32 %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = call i32 @mutex_enter(i32* %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = call i32 @mutex_exit(i32* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %223

70:                                               ; preds = %57, %50, %44
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %8, align 8
  br label %41

75:                                               ; preds = %41
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = call i32 @mutex_exit(i32* %77)
  %79 = load i64, i64* %5, align 8
  %80 = call %struct.TYPE_12__* @pfind(i64 %79)
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %13, align 8
  %81 = icmp eq %struct.TYPE_12__* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %223

83:                                               ; preds = %75
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %89 = load i32, i32* @MA_OWNED, align 4
  %90 = call i32 @PROC_LOCK_ASSERT(%struct.TYPE_12__* %88, i32 %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @crhold(i32* %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %14, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %99 = call i32 @PROC_UNLOCK(%struct.TYPE_12__* %98)
  %100 = load i32, i32* @KM_SLEEP, align 4
  %101 = call %struct.TYPE_13__* @kmem_zalloc(i32 56, i32 %100)
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %9, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call i32* @fasttrap_proc_lookup(i64 %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 6
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* @MUTEX_DEFAULT, align 4
  %112 = call i32 @mutex_init(i32* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %111, i32* null)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 7
  %115 = load i32, i32* @MUTEX_DEFAULT, align 4
  %116 = call i32 @mutex_init(i32* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32* null)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = call i32 @mutex_enter(i32* %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  store %struct.TYPE_13__* %128, %struct.TYPE_13__** %8, align 8
  br label %129

129:                                              ; preds = %163, %83
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %131 = icmp ne %struct.TYPE_13__* %130, null
  br i1 %131, label %132, label %167

132:                                              ; preds = %129
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %5, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %162

138:                                              ; preds = %132
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %6, align 8
  %143 = call i64 @strcmp(i32 %141, i8* %142)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %138
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %162, label %150

150:                                              ; preds = %145
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = call i32 @mutex_enter(i32* %152)
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = call i32 @mutex_exit(i32* %155)
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %158 = call i32 @fasttrap_provider_free(%struct.TYPE_13__* %157)
  %159 = load i32*, i32** %14, align 8
  %160 = call i32 @crfree(i32* %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %223

162:                                              ; preds = %145, %138, %132
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  store %struct.TYPE_13__* %166, %struct.TYPE_13__** %8, align 8
  br label %129

167:                                              ; preds = %129
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 @strcpy(i32 %170, i8* %171)
  %173 = trunc i64 %17 to i32
  %174 = load i8*, i8** %6, align 8
  %175 = load i64, i64* %5, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i32 @snprintf(i8* %19, i32 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %174, i32 %176)
  %178 = sext i32 %177 to i64
  %179 = icmp uge i64 %178, %17
  br i1 %179, label %197, label %180

180:                                              ; preds = %167
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* @DTRACE_PRIV_PROC, align 4
  %183 = load i32, i32* @DTRACE_PRIV_OWNER, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @DTRACE_PRIV_ZONEOWNER, align 4
  %186 = or i32 %184, %185
  %187 = load i32*, i32** %14, align 8
  %188 = load i32*, i32** %7, align 8
  %189 = icmp eq i32* %188, @pid_attr
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32* @pid_pops, i32* @usdt_pops
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 3
  %195 = call i64 @dtrace_register(i8* %19, i32* %181, i32 %186, i32* %187, i32* %191, %struct.TYPE_13__* %192, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %180, %167
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = call i32 @mutex_exit(i32* %199)
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %202 = call i32 @fasttrap_provider_free(%struct.TYPE_13__* %201)
  %203 = load i32*, i32** %14, align 8
  %204 = call i32 @crfree(i32* %203)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %223

205:                                              ; preds = %180
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  store %struct.TYPE_13__* %208, %struct.TYPE_13__** %210, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  store %struct.TYPE_13__* %211, %struct.TYPE_13__** %213, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = call i32 @mutex_enter(i32* %215)
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = call i32 @mutex_exit(i32* %218)
  %220 = load i32*, i32** %14, align 8
  %221 = call i32 @crfree(i32* %220)
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %222, %struct.TYPE_13__** %4, align 8
  store i32 1, i32* %15, align 4
  br label %223

223:                                              ; preds = %205, %197, %150, %82, %62
  %224 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @FASTTRAP_PROVS_INDEX(i64, i8*) #2

declare dso_local i32 @mutex_enter(i32*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @mutex_exit(i32*) #2

declare dso_local %struct.TYPE_12__* @pfind(i64) #2

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @crhold(i32*) #2

declare dso_local i32 @PROC_UNLOCK(%struct.TYPE_12__*) #2

declare dso_local %struct.TYPE_13__* @kmem_zalloc(i32, i32) #2

declare dso_local i32* @fasttrap_proc_lookup(i64) #2

declare dso_local i32 @mutex_init(i32*, i8*, i32, i32*) #2

declare dso_local i32 @fasttrap_provider_free(%struct.TYPE_13__*) #2

declare dso_local i32 @crfree(i32*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i64 @dtrace_register(i8*, i32*, i32, i32*, i32*, %struct.TYPE_13__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
