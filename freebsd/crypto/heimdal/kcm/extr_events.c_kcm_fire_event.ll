; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_kcm_fire_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_events.c_kcm_fire_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@KRB5KRB_AP_ERR_TKT_EXPIRED = common dso_local global i64 0, align 8
@KRB5_FCC_INTERNAL = common dso_local global i64 0, align 8
@KCM_EVENT_MAX_BACKOFF_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s credentials in cache %s for principal %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Acquired\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Renewed\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@KCM_EVENT_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"requeuing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_9__**)* @kcm_fire_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_fire_event(i32 %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %4, align 8
  store i32* null, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %51 [
    i32 131, label %15
    i32 128, label %21
    i32 130, label %37
    i32 129, label %45
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = call i64 @kcm_ccache_acquire(i32 %16, %struct.TYPE_10__* %19, i32** %7)
  store i64 %20, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = call i64 @kcm_ccache_refresh(i32 %22, %struct.TYPE_10__* %25, i32** %7)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @KRB5KRB_AP_ERR_TKT_EXPIRED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = call i64 @kcm_ccache_acquire(i32 %31, %struct.TYPE_10__* %34, i32** %7)
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %30, %21
  store i32 0, i32* %8, align 4
  br label %53

37:                                               ; preds = %2
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @kcm_ccache_destroy(i32 %38, i32 %43)
  store i64 %44, i64* %6, align 8
  br label %53

45:                                               ; preds = %2
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = call i64 @kcm_ccache_destroy_if_empty(i32 %46, %struct.TYPE_10__* %49)
  store i64 %50, i64* %6, align 8
  br label %53

51:                                               ; preds = %2
  %52 = load i64, i64* @KRB5_FCC_INTERNAL, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %51, %45, %37, %36, %15
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @KCM_EVENT_MAX_BACKOFF_TIME, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 2
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %74, %60
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %95 = call i32 @kcm_remove_event_internal(i32 %93, %struct.TYPE_9__** %94)
  br label %96

96:                                               ; preds = %92, %84, %79
  br label %161

97:                                               ; preds = %53
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %153, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @krb5_unparse_name(i32 %101, i32 %106, i8** %9)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  store i8* null, i8** %9, align 8
  br label %110

110:                                              ; preds = %109, %100
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 131
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %110
  %125 = load i8*, i8** %9, align 8
  br label %127

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i8* [ %125, %124 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %126 ]
  %129 = call i32 @kcm_log(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %116, i32 %121, i8* %128)
  %130 = load i8*, i8** %9, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @free(i8* %133)
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = call i64 @kcm_ccache_make_default_event(i32 %136, %struct.TYPE_9__* %137, i32* %138)
  store i64 %139, i64* %6, align 8
  %140 = load i64, i64* %6, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %135
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @KCM_EVENT_NONE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142, %135
  store i32 1, i32* %8, align 4
  br label %152

149:                                              ; preds = %142
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = call i32 @log_event(%struct.TYPE_9__* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %148
  br label %153

153:                                              ; preds = %152, %97
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* %3, align 4
  %158 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %159 = call i32 @kcm_remove_event_internal(i32 %157, %struct.TYPE_9__** %158)
  br label %160

160:                                              ; preds = %156, %153
  br label %161

161:                                              ; preds = %160, %96
  %162 = load i64, i64* %6, align 8
  ret i64 %162
}

declare dso_local i64 @kcm_ccache_acquire(i32, %struct.TYPE_10__*, i32**) #1

declare dso_local i64 @kcm_ccache_refresh(i32, %struct.TYPE_10__*, i32**) #1

declare dso_local i64 @kcm_ccache_destroy(i32, i32) #1

declare dso_local i64 @kcm_ccache_destroy_if_empty(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @kcm_remove_event_internal(i32, %struct.TYPE_9__**) #1

declare dso_local i64 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @kcm_log(i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @kcm_ccache_make_default_event(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @log_event(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
