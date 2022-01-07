; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_listen_in_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_listen_in_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i64 (i32, i32, i32, %struct.wpabuf*)*, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Starting short listen state (state=%s)\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"p2p_listen command pending already\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unknown regulatory class/channel\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Skip listen state since duration was 0 TU\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to start listen mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, i32)* @p2p_listen_in_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_listen_in_find(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %10 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %11 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @p2p_state_txt(i32 %12)
  %14 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %16 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %21 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %154

22:                                               ; preds = %2
  %23 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %24 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %29 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @p2p_channel_to_freq(i32 %27, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %38 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %154

39:                                               ; preds = %22
  %40 = call i64 @os_get_random(i32* %5, i32 4)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %46 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %49 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sub i32 %47, %50
  %52 = add i32 %51, 1
  %53 = urem i32 %44, %52
  %54 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %55 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %53, %56
  %58 = mul i32 %57, 100
  store i32 %58, i32* %6, align 4
  %59 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %60 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp uge i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %43
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %66 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ugt i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %71 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %63, %43
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp ult i32 %77, 100
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 100, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %76, %73
  %81 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %82 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = mul i32 1024, %88
  %90 = udiv i32 %89, 1000
  %91 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %92 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %91, i32 0, i32 5
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ugt i32 %90, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %87
  %98 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %99 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %98, i32 0, i32 5
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %102, 1000
  %104 = sdiv i32 %103, 1024
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %97, %87, %80
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %110 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %111 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %112 = call i32 @p2p_set_timeout(%struct.p2p_data* %111, i32 0, i32 0)
  br label %154

113:                                              ; preds = %105
  %114 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %115 = call %struct.wpabuf* @p2p_build_probe_resp_ies(%struct.p2p_data* %114, i32* null, i32 0)
  store %struct.wpabuf* %115, %struct.wpabuf** %8, align 8
  %116 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %117 = icmp eq %struct.wpabuf* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %154

119:                                              ; preds = %113
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %122 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %124 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %123, i32 0, i32 6
  store i64 0, i64* %124, align 8
  %125 = load i32, i32* %6, align 4
  %126 = mul i32 1024, %125
  %127 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %128 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %130 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %129, i32 0, i32 5
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i64 (i32, i32, i32, %struct.wpabuf*)*, i64 (i32, i32, i32, %struct.wpabuf*)** %132, align 8
  %134 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %135 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %134, i32 0, i32 5
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %6, align 4
  %141 = mul i32 1024, %140
  %142 = udiv i32 %141, 1000
  %143 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %144 = call i64 %133(i32 %138, i32 %139, i32 %142, %struct.wpabuf* %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %119
  %147 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %148 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %149 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %150 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  br label %151

151:                                              ; preds = %146, %119
  %152 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %153 = call i32 @wpabuf_free(%struct.wpabuf* %152)
  br label %154

154:                                              ; preds = %151, %118, %108, %36, %19
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_state_txt(i32) #1

declare dso_local i32 @p2p_channel_to_freq(i32, i32) #1

declare dso_local i64 @os_get_random(i32*, i32) #1

declare dso_local i32 @p2p_set_timeout(%struct.p2p_data*, i32, i32) #1

declare dso_local %struct.wpabuf* @p2p_build_probe_resp_ies(%struct.p2p_data*, i32*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
