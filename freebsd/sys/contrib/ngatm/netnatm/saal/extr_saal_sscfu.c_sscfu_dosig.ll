; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscfu.c_sscfu_dosig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/saal/extr_saal_sscfu.c_sscfu_dosig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscfu = type { i64, i32 }
%struct.SSCFU_MBUF_T = type { i32 }

@SSCFU_DBG_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"executing signal %s(%s)\00", align 1
@sscf_sigs = common dso_local global i32* null, align 8
@sscf_states = common dso_local global i32* null, align 8
@SSCOP_ESTABLISH_request = common dso_local global i32 0, align 4
@SSCOP_RESYNC_request = common dso_local global i32 0, align 4
@SSCOP_RELEASE_request = common dso_local global i32 0, align 4
@SSCOP_DATA_request = common dso_local global i32 0, align 4
@SSCOP_UDATA_request = common dso_local global i32 0, align 4
@SSCFU_DBG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bad signal %s in state %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sscfu*, i32, %struct.SSCFU_MBUF_T*)* @sscfu_dosig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sscfu_dosig(%struct.sscfu* %0, i32 %1, %struct.SSCFU_MBUF_T* %2) #0 {
  %4 = alloca %struct.sscfu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SSCFU_MBUF_T*, align 8
  store %struct.sscfu* %0, %struct.sscfu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.SSCFU_MBUF_T* %2, %struct.SSCFU_MBUF_T** %6, align 8
  %7 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %8 = load i32, i32* @SSCFU_DBG_EXEC, align 4
  %9 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %10 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %11 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** @sscf_sigs, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @sscf_states, align 8
  %19 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %20 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to %struct.sscfu*
  %26 = call i32 @VERBOSE(%struct.sscfu* %7, i32 %8, %struct.sscfu* %25)
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %133 [
    i32 138, label %28
    i32 135, label %68
    i32 141, label %110
    i32 133, label %126
    i32 139, label %131
    i32 140, label %131
    i32 137, label %131
    i32 136, label %131
    i32 142, label %131
    i32 134, label %131
  ]

28:                                               ; preds = %3
  %29 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %30 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  switch i64 %31, label %67 [
    i64 129, label %32
    i64 132, label %39
    i64 131, label %46
    i64 130, label %53
    i64 128, label %60
  ]

32:                                               ; preds = %28
  %33 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %34 = call i32 @set_state(%struct.sscfu* %33, i32 132)
  %35 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %36 = load i32, i32* @SSCOP_ESTABLISH_request, align 4
  %37 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %38 = call i32 @SSCOP_AASIG(%struct.sscfu* %35, i32 %36, %struct.SSCFU_MBUF_T* %37, i32 1)
  br label %67

39:                                               ; preds = %28
  %40 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %41 = icmp ne %struct.SSCFU_MBUF_T* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %44 = call i32 @MBUF_FREE(%struct.SSCFU_MBUF_T* %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %134

46:                                               ; preds = %28
  %47 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %48 = call i32 @set_state(%struct.sscfu* %47, i32 132)
  %49 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %50 = load i32, i32* @SSCOP_ESTABLISH_request, align 4
  %51 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %52 = call i32 @SSCOP_AASIG(%struct.sscfu* %49, i32 %50, %struct.SSCFU_MBUF_T* %51, i32 1)
  br label %67

53:                                               ; preds = %28
  %54 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %55 = call i32 @set_state(%struct.sscfu* %54, i32 128)
  %56 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %57 = load i32, i32* @SSCOP_RESYNC_request, align 4
  %58 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %59 = call i32 @SSCOP_AASIG(%struct.sscfu* %56, i32 %57, %struct.SSCFU_MBUF_T* %58, i32 0)
  br label %67

60:                                               ; preds = %28
  %61 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %62 = icmp ne %struct.SSCFU_MBUF_T* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %65 = call i32 @MBUF_FREE(%struct.SSCFU_MBUF_T* %64)
  br label %66

66:                                               ; preds = %63, %60
  br label %134

67:                                               ; preds = %28, %53, %46, %32
  br label %133

68:                                               ; preds = %3
  %69 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %70 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  switch i64 %71, label %109 [
    i64 129, label %72
    i64 132, label %81
    i64 131, label %88
    i64 130, label %95
    i64 128, label %102
  ]

72:                                               ; preds = %68
  %73 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %74 = icmp ne %struct.SSCFU_MBUF_T* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %77 = call i32 @MBUF_FREE(%struct.SSCFU_MBUF_T* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %80 = call i32 @AA_SIG(%struct.sscfu* %79, i32 137, i32* null)
  br label %109

81:                                               ; preds = %68
  %82 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %83 = call i32 @set_state(%struct.sscfu* %82, i32 131)
  %84 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %85 = load i32, i32* @SSCOP_RELEASE_request, align 4
  %86 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %87 = call i32 @SSCOP_AASIG(%struct.sscfu* %84, i32 %85, %struct.SSCFU_MBUF_T* %86, i32 0)
  br label %109

88:                                               ; preds = %68
  %89 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %90 = icmp ne %struct.SSCFU_MBUF_T* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %93 = call i32 @MBUF_FREE(%struct.SSCFU_MBUF_T* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %134

95:                                               ; preds = %68
  %96 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %97 = call i32 @set_state(%struct.sscfu* %96, i32 131)
  %98 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %99 = load i32, i32* @SSCOP_RELEASE_request, align 4
  %100 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %101 = call i32 @SSCOP_AASIG(%struct.sscfu* %98, i32 %99, %struct.SSCFU_MBUF_T* %100, i32 0)
  br label %109

102:                                              ; preds = %68
  %103 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %104 = call i32 @set_state(%struct.sscfu* %103, i32 131)
  %105 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %106 = load i32, i32* @SSCOP_RELEASE_request, align 4
  %107 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %108 = call i32 @SSCOP_AASIG(%struct.sscfu* %105, i32 %106, %struct.SSCFU_MBUF_T* %107, i32 0)
  br label %109

109:                                              ; preds = %68, %102, %95, %81, %78
  br label %133

110:                                              ; preds = %3
  %111 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %112 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  switch i64 %113, label %125 [
    i64 129, label %114
    i64 132, label %114
    i64 131, label %114
    i64 130, label %117
    i64 128, label %122
  ]

114:                                              ; preds = %110, %110, %110
  %115 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %116 = call i32 @MBUF_FREE(%struct.SSCFU_MBUF_T* %115)
  br label %134

117:                                              ; preds = %110
  %118 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %119 = load i32, i32* @SSCOP_DATA_request, align 4
  %120 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %121 = call i32 @SSCOP_AASIG(%struct.sscfu* %118, i32 %119, %struct.SSCFU_MBUF_T* %120, i32 0)
  br label %125

122:                                              ; preds = %110
  %123 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %124 = call i32 @MBUF_FREE(%struct.SSCFU_MBUF_T* %123)
  br label %134

125:                                              ; preds = %110, %117
  br label %133

126:                                              ; preds = %3
  %127 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %128 = load i32, i32* @SSCOP_UDATA_request, align 4
  %129 = load %struct.SSCFU_MBUF_T*, %struct.SSCFU_MBUF_T** %6, align 8
  %130 = call i32 @SSCOP_AASIG(%struct.sscfu* %127, i32 %128, %struct.SSCFU_MBUF_T* %129, i32 0)
  br label %133

131:                                              ; preds = %3, %3, %3, %3, %3, %3
  %132 = call i32 @ASSERT(i32 0)
  br label %133

133:                                              ; preds = %3, %131, %126, %125, %109, %67
  br label %155

134:                                              ; preds = %122, %114, %94, %66, %45
  %135 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %136 = load i32, i32* @SSCFU_DBG_ERR, align 4
  %137 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %138 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %139 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** @sscf_sigs, align 8
  %142 = load i32, i32* %5, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @sscf_states, align 8
  %147 = load %struct.sscfu*, %struct.sscfu** %4, align 8
  %148 = getelementptr inbounds %struct.sscfu, %struct.sscfu* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to %struct.sscfu*
  %154 = call i32 @VERBOSE(%struct.sscfu* %135, i32 %136, %struct.sscfu* %153)
  br label %155

155:                                              ; preds = %134, %133
  ret void
}

declare dso_local i32 @VERBOSE(%struct.sscfu*, i32, %struct.sscfu*) #1

declare dso_local i32 @set_state(%struct.sscfu*, i32) #1

declare dso_local i32 @SSCOP_AASIG(%struct.sscfu*, i32, %struct.SSCFU_MBUF_T*, i32) #1

declare dso_local i32 @MBUF_FREE(%struct.SSCFU_MBUF_T*) #1

declare dso_local i32 @AA_SIG(%struct.sscfu*, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
