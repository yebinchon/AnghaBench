; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_create_workers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_create_workers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { i32, %struct.worker**, %struct.TYPE_2__*, i32, i64, i64, i32 }
%struct.worker = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"could not init random generator\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"out of memory during daemon init\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"total of %d outgoing ports available\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"cannot reduce num-threads to %d because so-reuseport so continuing with %d threads.\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"dnstap enabled in config but not built with dnstap support\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"could not create worker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.daemon*)* @daemon_create_workers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @daemon_create_workers(%struct.daemon* %0) #0 {
  %2 = alloca %struct.daemon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.daemon* %0, %struct.daemon** %2, align 8
  %7 = load %struct.daemon*, %struct.daemon** %2, align 8
  %8 = icmp ne %struct.daemon* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.daemon*, %struct.daemon** %2, align 8
  %11 = getelementptr inbounds %struct.daemon, %struct.daemon* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ false, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @log_assert(i32 %16)
  %18 = load %struct.daemon*, %struct.daemon** %2, align 8
  %19 = getelementptr inbounds %struct.daemon, %struct.daemon* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %14
  %23 = call i64 @time(i32* null)
  %24 = trunc i64 %23 to i32
  %25 = call i64 (...) @getpid()
  %26 = trunc i64 %25 to i32
  %27 = xor i32 %24, %26
  %28 = xor i32 %27, 1080
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ub_initstate(i32 %29, i32* null)
  %31 = load %struct.daemon*, %struct.daemon** %2, align 8
  %32 = getelementptr inbounds %struct.daemon, %struct.daemon* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.daemon*, %struct.daemon** %2, align 8
  %34 = getelementptr inbounds %struct.daemon, %struct.daemon* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %22
  %38 = call i32 @fatal_exit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %22
  %40 = load %struct.daemon*, %struct.daemon** %2, align 8
  %41 = getelementptr inbounds %struct.daemon, %struct.daemon* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @ub_random(i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = call i32 @hash_set_raninit(i32 %44)
  br label %46

46:                                               ; preds = %39, %14
  %47 = call i64 @calloc(i64 65536, i32 4)
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 @fatal_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load %struct.daemon*, %struct.daemon** %2, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @daemon_get_shufport(%struct.daemon* %54, i32* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @VERB_ALGO, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @verbose(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.daemon*, %struct.daemon** %2, align 8
  %61 = getelementptr inbounds %struct.daemon, %struct.daemon* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load %struct.daemon*, %struct.daemon** %2, align 8
  %68 = getelementptr inbounds %struct.daemon, %struct.daemon* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  br label %73

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %66
  %74 = phi i32 [ %71, %66 ], [ 1, %72 ]
  %75 = load %struct.daemon*, %struct.daemon** %2, align 8
  %76 = getelementptr inbounds %struct.daemon, %struct.daemon* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.daemon*, %struct.daemon** %2, align 8
  %78 = getelementptr inbounds %struct.daemon, %struct.daemon* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %73
  %82 = load %struct.daemon*, %struct.daemon** %2, align 8
  %83 = getelementptr inbounds %struct.daemon, %struct.daemon* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.daemon*, %struct.daemon** %2, align 8
  %86 = getelementptr inbounds %struct.daemon, %struct.daemon* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %81
  %91 = load %struct.daemon*, %struct.daemon** %2, align 8
  %92 = getelementptr inbounds %struct.daemon, %struct.daemon* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.daemon*, %struct.daemon** %2, align 8
  %95 = getelementptr inbounds %struct.daemon, %struct.daemon* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @log_warn(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %97)
  %99 = load %struct.daemon*, %struct.daemon** %2, align 8
  %100 = getelementptr inbounds %struct.daemon, %struct.daemon* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.daemon*, %struct.daemon** %2, align 8
  %104 = getelementptr inbounds %struct.daemon, %struct.daemon* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %90, %81, %73
  %106 = load %struct.daemon*, %struct.daemon** %2, align 8
  %107 = getelementptr inbounds %struct.daemon, %struct.daemon* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = call i64 @calloc(i64 %109, i32 8)
  %111 = inttoptr i64 %110 to %struct.worker**
  %112 = load %struct.daemon*, %struct.daemon** %2, align 8
  %113 = getelementptr inbounds %struct.daemon, %struct.daemon* %112, i32 0, i32 1
  store %struct.worker** %111, %struct.worker*** %113, align 8
  %114 = load %struct.daemon*, %struct.daemon** %2, align 8
  %115 = getelementptr inbounds %struct.daemon, %struct.daemon* %114, i32 0, i32 1
  %116 = load %struct.worker**, %struct.worker*** %115, align 8
  %117 = icmp ne %struct.worker** %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %105
  %119 = call i32 @fatal_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %105
  %121 = load %struct.daemon*, %struct.daemon** %2, align 8
  %122 = getelementptr inbounds %struct.daemon, %struct.daemon* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = call i32 @fatal_exit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %120
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %176, %129
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.daemon*, %struct.daemon** %2, align 8
  %133 = getelementptr inbounds %struct.daemon, %struct.daemon* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %179

136:                                              ; preds = %130
  %137 = load %struct.daemon*, %struct.daemon** %2, align 8
  %138 = load i32, i32* %3, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* %3, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load %struct.daemon*, %struct.daemon** %2, align 8
  %144 = getelementptr inbounds %struct.daemon, %struct.daemon* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sdiv i32 %142, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %139, i64 %147
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  %152 = mul nsw i32 %149, %151
  %153 = load %struct.daemon*, %struct.daemon** %2, align 8
  %154 = getelementptr inbounds %struct.daemon, %struct.daemon* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sdiv i32 %152, %155
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* %3, align 4
  %159 = mul nsw i32 %157, %158
  %160 = load %struct.daemon*, %struct.daemon** %2, align 8
  %161 = getelementptr inbounds %struct.daemon, %struct.daemon* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sdiv i32 %159, %162
  %164 = sub nsw i32 %156, %163
  %165 = call %struct.worker* @worker_create(%struct.daemon* %137, i32 %138, i32* %148, i32 %164)
  %166 = load %struct.daemon*, %struct.daemon** %2, align 8
  %167 = getelementptr inbounds %struct.daemon, %struct.daemon* %166, i32 0, i32 1
  %168 = load %struct.worker**, %struct.worker*** %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.worker*, %struct.worker** %168, i64 %170
  store %struct.worker* %165, %struct.worker** %171, align 8
  %172 = icmp ne %struct.worker* %165, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %136
  %174 = call i32 @fatal_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %136
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %3, align 4
  br label %130

179:                                              ; preds = %130
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 @free(i32* %180)
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @ub_initstate(i32, i32*) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i32 @hash_set_raninit(i32) #1

declare dso_local i64 @ub_random(i32) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @daemon_get_shufport(%struct.daemon*, i32*) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @log_warn(i8*, i32, i32) #1

declare dso_local %struct.worker* @worker_create(%struct.daemon*, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
