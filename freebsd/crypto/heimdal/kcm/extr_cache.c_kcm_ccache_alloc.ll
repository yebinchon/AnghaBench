; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_7__, i32*, i32*, i32*, i32*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32* }

@ccache_mutex = common dso_local global i32 0, align 4
@ccache_head = common dso_local global %struct.TYPE_8__* null, align 8
@KCM_FLAGS_VALID = common dso_local global i32 0, align 4
@KRB5_CC_WRITE = common dso_local global i64 0, align 8
@KRB5_CC_NOMEM = common dso_local global i64 0, align 8
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, %struct.TYPE_8__**)* @kcm_ccache_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kcm_ccache_alloc(i32 %0, i8* %1, %struct.TYPE_8__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %13 = call i32 @HEIMDAL_MUTEX_lock(i32* @ccache_mutex)
  store i64 0, i64* %10, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ccache_head, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %9, align 8
  br label %15

15:                                               ; preds = %42, %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @KCM_FLAGS_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 12
  %28 = load i32*, i32** %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i32* %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @KRB5_CC_WRITE, align 8
  store i64 %33, i64* %10, align 8
  br label %46

34:                                               ; preds = %25
  br label %41

35:                                               ; preds = %18
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = icmp eq %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %8, align 8
  br label %40

40:                                               ; preds = %38, %35
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 14
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %9, align 8
  br label %15

46:                                               ; preds = %32, %15
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %118

50:                                               ; preds = %46
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = icmp eq %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = call i64 @malloc(i32 96)
  %55 = inttoptr i64 %54 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %8, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = icmp eq %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @KRB5_CC_NOMEM, align 8
  store i64 %59, i64* %10, align 8
  br label %118

60:                                               ; preds = %53
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ccache_head, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 14
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = call i32 @HEIMDAL_MUTEX_init(i32* %65)
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %60, %50
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 13
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @RAND_bytes(i32 %70, i32 4)
  %72 = load i8*, i8** %6, align 8
  %73 = call i32* @strdup(i8* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 12
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 12
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i64, i64* @KRB5_CC_NOMEM, align 8
  store i64 %81, i64* %10, align 8
  br label %118

82:                                               ; preds = %67
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* @KCM_FLAGS_VALID, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @S_IRUSR, align 4
  %89 = load i32, i32* @S_IWUSR, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  store i32 -1, i32* %94, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  store i32 -1, i32* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 11
  store i32* null, i32** %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 10
  store i32* null, i32** %100, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 9
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 7
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 6
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %82
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %113, %struct.TYPE_8__** @ccache_head, align 8
  br label %114

114:                                              ; preds = %112, %82
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %116, align 8
  %117 = call i32 @HEIMDAL_MUTEX_unlock(i32* @ccache_mutex)
  store i64 0, i64* %4, align 8
  br label %133

118:                                              ; preds = %80, %58, %49
  %119 = call i32 @HEIMDAL_MUTEX_unlock(i32* @ccache_mutex)
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = icmp ne %struct.TYPE_8__* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 5
  %128 = call i32 @HEIMDAL_MUTEX_destroy(i32* %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %130 = call i32 @free(%struct.TYPE_8__* %129)
  br label %131

131:                                              ; preds = %125, %122, %118
  %132 = load i64, i64* %10, align 8
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %131, %114
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_init(i32*) #1

declare dso_local i32 @RAND_bytes(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
