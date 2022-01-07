; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_state_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_state_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 (i32)* }

@.str = private unnamed_addr constant [19 x i8] c"Timeout (state=%s)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Driver is still in listen state - stop it\00", align 1
@P2P_PENDING_PD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Delay search operation by %u ms\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Extended Listen Timing - Listen State completed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @p2p_state_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_state_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p2p_data*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.p2p_data*
  store %struct.p2p_data* %7, %struct.p2p_data** %5, align 8
  %8 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %9 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %10 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @p2p_state_txt(i32 %11)
  %13 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %15 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %22 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %24 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %29 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %27(i32 %32)
  br label %34

34:                                               ; preds = %20, %2
  %35 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %36 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %139 [
    i32 137, label %38
    i32 130, label %48
    i32 140, label %91
    i32 139, label %94
    i32 138, label %97
    i32 134, label %98
    i32 129, label %120
    i32 128, label %123
    i32 131, label %126
    i32 132, label %129
    i32 133, label %130
    i32 136, label %133
    i32 135, label %136
  ]

38:                                               ; preds = %34
  %39 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %40 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @P2P_PENDING_PD, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %46 = call i32 @p2p_timeout_prov_disc_req(%struct.p2p_data* %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %139

48:                                               ; preds = %34
  %49 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %50 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @P2P_PENDING_PD, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %56 = call i32 @p2p_timeout_prov_disc_req(%struct.p2p_data* %55)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %59 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %64 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %62
  %68 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %69 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %70 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %74 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %76 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %77 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %78, 1000
  %80 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %81 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = srem i32 %82, 1000
  %84 = mul nsw i32 %83, 1000
  %85 = call i32 @p2p_set_timeout(%struct.p2p_data* %75, i32 %79, i32 %84)
  br label %139

86:                                               ; preds = %62, %57
  %87 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %88 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %87, i32 0, i32 2
  store i32 0, i32* %88, align 8
  %89 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %90 = call i32 @p2p_search(%struct.p2p_data* %89)
  br label %139

91:                                               ; preds = %34
  %92 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %93 = call i32 @p2p_timeout_connect(%struct.p2p_data* %92)
  br label %139

94:                                               ; preds = %34
  %95 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %96 = call i32 @p2p_timeout_connect_listen(%struct.p2p_data* %95)
  br label %139

97:                                               ; preds = %34
  br label %139

98:                                               ; preds = %34
  %99 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %100 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @P2P_PENDING_PD, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %106 = call i32 @p2p_timeout_prov_disc_req(%struct.p2p_data* %105)
  br label %107

107:                                              ; preds = %104, %98
  %108 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %109 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %114 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %113, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %116 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %115, i32 0, i32 3
  store i32 0, i32* %116, align 4
  %117 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %118 = call i32 @p2p_set_state(%struct.p2p_data* %117, i32 137)
  br label %119

119:                                              ; preds = %112, %107
  br label %139

120:                                              ; preds = %34
  %121 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %122 = call i32 @p2p_timeout_wait_peer_connect(%struct.p2p_data* %121)
  br label %139

123:                                              ; preds = %34
  %124 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %125 = call i32 @p2p_timeout_wait_peer_idle(%struct.p2p_data* %124)
  br label %139

126:                                              ; preds = %34
  %127 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %128 = call i32 @p2p_timeout_sd_during_find(%struct.p2p_data* %127)
  br label %139

129:                                              ; preds = %34
  br label %139

130:                                              ; preds = %34
  %131 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %132 = call i32 @p2p_timeout_prov_disc_during_find(%struct.p2p_data* %131)
  br label %139

133:                                              ; preds = %34
  %134 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %135 = call i32 @p2p_timeout_invite(%struct.p2p_data* %134)
  br label %139

136:                                              ; preds = %34
  %137 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %138 = call i32 @p2p_timeout_invite_listen(%struct.p2p_data* %137)
  br label %139

139:                                              ; preds = %34, %136, %133, %130, %129, %126, %123, %120, %119, %97, %94, %91, %86, %67, %47
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_state_txt(i32) #1

declare dso_local i32 @p2p_timeout_prov_disc_req(%struct.p2p_data*) #1

declare dso_local i32 @p2p_set_timeout(%struct.p2p_data*, i32, i32) #1

declare dso_local i32 @p2p_search(%struct.p2p_data*) #1

declare dso_local i32 @p2p_timeout_connect(%struct.p2p_data*) #1

declare dso_local i32 @p2p_timeout_connect_listen(%struct.p2p_data*) #1

declare dso_local i32 @p2p_set_state(%struct.p2p_data*, i32) #1

declare dso_local i32 @p2p_timeout_wait_peer_connect(%struct.p2p_data*) #1

declare dso_local i32 @p2p_timeout_wait_peer_idle(%struct.p2p_data*) #1

declare dso_local i32 @p2p_timeout_sd_during_find(%struct.p2p_data*) #1

declare dso_local i32 @p2p_timeout_prov_disc_during_find(%struct.p2p_data*) #1

declare dso_local i32 @p2p_timeout_invite(%struct.p2p_data*) #1

declare dso_local i32 @p2p_timeout_invite_listen(%struct.p2p_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
